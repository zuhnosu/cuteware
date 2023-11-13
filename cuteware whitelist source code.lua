repeat wait() until game:IsLoaded()
--Security
--IB_MAX_CFLOW_START()
local MOD = 2^32
local MODM = MOD-1
local function memoize(f)
	--SX_VM_B()
	local mt = {}
	local t = setmetatable({}, mt)
	function mt:__index(k)
		local v = f(k)
		t[k] = v
		return v
	end
	return t
end
local function make_bitop_uncached(t, m)
	--SX_VM_B()
	local function bitop(a, b)
		--SX_VM_B()
		local res,p = 0,1
		while a ~= 0 and b ~= 0 do
			local am, bm = a % m, b % m
			res = res + t[am][bm] * p
			a = (a - am) / m
			b = (b - bm) / m
			p = p*m
		end
		res = res + (a + b) * p
		return res
	end
	return bitop
end
local function make_bitop(t)
	--SX_VM_B()
	local op1 = make_bitop_uncached(t,2^1)
	local op2 = memoize(function(a) return memoize(function(b) return op1(a, b) end) end)
	return make_bitop_uncached(op2, 2 ^ (t.n or 1))
end
local bxor1 = make_bitop({[0] = {[0] = 0,[1] = 1}, [1] = {[0] = 1, [1] = 0}, n = 4})
local function bxor(a, b, c, ...)
	--SX_VM_B()
	local z = nil
	if b then
		a = a % MOD
		b = b % MOD
		z = bxor1(a, b)
		if c then z = bxor(z, c, ...) end
		return z
	elseif a then return a % MOD
	else return 0 end
end
local function band(a, b, c, ...)
	--SX_VM_B()
	local z
	if b then
		a = a % MOD
		b = b % MOD
		z = ((a + b) - bxor1(a,b)) / 2
		if c then z = bit32_band(z, c, ...) end
		return z
	elseif a then return a % MOD
	else return MODM end
end
local function bnot(x) --SX_VM_B() 
	return (-1 - x) % MOD 
end
local function rshift1(a, disp)
	--SX_VM_B()
	if disp < 0 then return lshift(a,-disp) end
	return math.floor(a % 2 ^ 32 / 2 ^ disp)
end
local function rshift(x, disp)
	--SX_VM_B()
	if disp > 31 or disp < -31 then return 0 end
	return rshift1(x % MOD, disp)
end
local function lshift(a, disp)
	--SX_VM_B()
	if disp < 0 then return rshift(a,-disp) end 
	return (a * 2 ^ disp) % 2 ^ 32
end
local function rrotate(x, disp)
	--SX_VM_B()
	x = x % MOD
	disp = disp % 32
	local low = band(x, 2 ^ disp - 1)
	return rshift(x, disp) + lshift(low, 32 - disp)
end
local k = {
	0x88e6140b, 0x04178c20, 0x3bb470d7, 0xcd61e78e,
	0x01d454dc, 0xc4aca9d1, 0xfe61c117, 0x2a46b52b,
	0x848447db, 0xa9b751b6, 0x42d006a8, 0x1bde9a86,
	0x69deb4b2, 0x01f3db7a, 0x8de15e92, 0xc3667285,
	0xffe90b77, 0x7841a7a1, 0x2d6c40a6, 0xd9828571,
	0x2a876a45, 0x82b657b1, 0xb63d46a1, 0x87c053ce,
	0x5b674383, 0x06ba9566, 0xfcad89d4, 0xc7eb3917,
	0xeb91530f, 0xfdcd6688, 0xae5fdd43, 0xa772b48e,
	0x2a6813b2, 0x81199326, 0xce4e9483, 0x9d5224d4,
	0x8b2b711d, 0xf4031ae1, 0x10fab686, 0xc7eb3917,
	0x81dd5b2f, 0xe30867ba, 0x506ebfc2, 0x4172fa22,
	0xfe833957, 0x09c87d06, 0xf1268044, 0xbc0854cb,
	0x024d25c7, 0x0cacef65, 0x59e5d3e2, 0xf3509072,
	0x3fe5349c, 0xad121b5f, 0xd867fac3, 0x24a0d4ab,
	0xc0e02a1b, 0xadf5f914, 0x72f4484b, 0xb6bb04e6,
	0xb71cf700, 0x371bb341, 0x371bb341, 0x531d7abd
}
local function str2hexa(s)
	--SX_VM_B()
	return (string.gsub(s, ".", function(c) return string.format("%02x", string.byte(c)) end))
end
local function num2s(l, n)
	--SX_VM_B()
	local s = ""
	for i = 1, n do
		local rem = l % 256
		s = string.char(rem) .. s
		l = (l - rem) / 256
	end
	return s
end
local function s232num(s, i)
	--SX_VM_B()
	local n = 0
	for i = i, i + 3 do n = n*256 + string.byte(s, i) end
	return n
end
local function preproc(msg, len)
	--SX_VM_B()
	local extra = 64 - ((len + 9) % 64)
	len = num2s(8 * len, 8)
	msg = msg .. "\128" .. string.rep("\0", extra) .. len
	assert(#msg % 64 == 0)
	return msg
end
local function initH256(H)
	--SX_VM_B()
	H[1] = 0xc9d50acc
	H[2] = 0x6275fbe8
	H[3] = 0xa2f4a91c
	H[4] = 0xfa010476
	H[5] = 0x9161b9fd
	H[6] = 0x08494c5d
	H[7] = 0x5a79123a
	H[8] = 0x0bf4836c
	return H
end
local function digestblock(msg, i, H)
	--SX_VM_B()
	local w = {}
	for j = 1, 16 do w[j] = s232num(msg, i + (j - 1)*4) end
	for j = 17, 64 do
		local v = w[j - 15]
		local s0 = bxor(rrotate(v, 7), rrotate(v, 18), rshift(v, 3))
		v = w[j - 2]
		w[j] = w[j - 16] + s0 + w[j - 7] + bxor(rrotate(v, 17), rrotate(v, 19), rshift(v, 10))
	end
	local a, b, c, d, e, f, g, h = H[1], H[2], H[3], H[4], H[5], H[6], H[7], H[8]
	for i = 1, 64 do
		local s0 = bxor(rrotate(a, 2), rrotate(a, 13), rrotate(a, 22))
		local maj = bxor(band(a, b), band(a, c), band(b, c))
		local t2 = s0 + maj
		local s1 = bxor(rrotate(e, 6), rrotate(e, 11), rrotate(e, 25))
		local ch = bxor (band(e, f), band(bnot(e), g))
		local t1 = h + s1 + ch + k[i] + w[i]
		h, g, f, e, d, c, b, a = g, f, e, d + t1, c, b, a, t1 + t2
	end
	H[1] = band(H[1] + a)
	H[2] = band(H[2] + b)
	H[3] = band(H[3] + c)
	H[4] = band(H[4] + d)
	H[5] = band(H[5] + e)
	H[6] = band(H[6] + f)
	H[7] = band(H[7] + g)
	H[8] = band(H[8] + h)
end
local function sha256(msg)
	--SX_VM_B()
	msg = preproc(msg, #msg)
	local H = initH256({})
	for i = 1, #msg, 64 do digestblock(msg, i, H) end
	return str2hexa(num2s(H[1], 4) .. num2s(H[2], 4) .. num2s(H[3], 4) .. num2s(H[4], 4) ..
		num2s(H[5], 4) .. num2s(H[6], 4) .. num2s(H[7], 4) .. num2s(H[8], 4))
end

local function enc(data)
	--SX_VM_B()
	data = tostring(data)
	local d = ""
	for _, v in next, {'180','175','187','217','220','211','177','203','199','210','216','172','155','184','201','197','166','165','200','218','207','178','206','156','185','209','151','182','221','168','171','148','204','208','198','173','219','170','176','190','222','186','202','181','169','174','153','150','215','188','167','214','205','154','183','213','189','152','212','149','179','157','143','147'} do
		d = d .. string.char(tonumber(v) - 100)
	end
	return ((data:gsub('.', function(x) 
		local r,d='',x:byte()
		for i=8,1,-1 do r=r..(d%2^i-d%2^(i-1)>0 and '1' or '0') end
		return r;
	end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
		if (#x < 6) then return '' end
		local c=0
		for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
		return d:sub(c+1,c+1)
	end)..({ '', '==', '=' })[#data%3+1])
end
local function dec(data)
	--SX_VM_B()
	data = tostring(data)
	local d = ""
	for _, v in next, {'180','175','187','217','220','211','177','203','199','210','216','172','155','184','201','197','166','165','200','218','207','178','206','156','185','209','151','182','221','168','171','148','204','208','198','173','219','170','176','190','222','186','202','181','169','174','153','150','215','188','167','214','205','154','183','213','189','152','212','149','179','157','143','147'} do
		d = d .. string.char(tonumber(v) - 100)
	end
	data = string.gsub(data, '[^'..d..'=]', '')
	return (data:gsub('.', function(x)
		if (x == '=') then return '' end
		local r,f='',(d:find(x)-1)
		for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
		return r;
	end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
		if (#x ~= 8) then return '' end
		local c=0
		for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
		return string.char(c)
	end))
end

--Login
local http_request = request or syn.request

if not http_request then
	game:GetService('Players').LocalPlayer:Kick('Unable to find proper request function')
end

local Status = Drawing.new("Text")
Status.Size = 32
Status.Center = false
Status.Position = Vector2.new(20, 20)
Status.Visible = true
Status.Color = Color3.fromRGB(255, 255, 255)
Status.Outline = true

local SD = {}
local Returned = ""
local Expected = ""
local Whitelisted
Status.Text = "Status: Contacting server"
local Enckey = ""
for i = 1, 20 do
	n = math.random(47, 122)
	if n > 57 and n < 65 then
		n = 65
	end
	if n > 90 and n < 97 then
		n = 97
	end
	Enckey = Enckey .. string.char(n) .. (i == 20 and tostring(os.time()) or "")
end
local expected = sha256(getgenv().key .. Enckey)

local data = http_request({
	Url = ('http://whitelist.cuteware/authentication/%s/%s/%s'):format(enc(getgenv().key),enc(Enckey),enc(enc(game:GetService"Players".LocalPlayer.Name))); -- [SX_ENC]
	Method = 'GET';
})
wait(0.4)
Status.Text = "Status: Verifying"
wait(0.4)
local HS = game:GetService('HttpService');
if data.StatusCode == 200 then
	local response = string.len(HS:JSONDecode(data.Body).data) > 50 and HS:JSONDecode(dec(HS:JSONDecode(data.Body).data)) or {}
	if response.response then
		if expected == dec(response.response) and string.len(expected) < string.len(response.response) then
			Returned = response.response
			Expected = expected
			for i,v in next, string.split(response.constants, "\n") do
				table.insert(SD, v)
			end
			table.insert(SD, enc(os.time()))
			Status.Text = "Status: Logging in"
			wait(0.4)
			if response.name then
				Status.Text = "Welcome, " .. response.name
				wait(0.6)
			end
			Whitelisted = true
		else
			Status.Text = "Status: Error"
			wait(0.4)
		end
	else
		Status.Text = "Status: " .. data.Body
		wait(0.6)
	end
elseif data.StatusCode == 400 then
	Status.Text = "Status: " .. httpservice:JSONDecode(data.Body).data
	wait(0.4)
else
    Status.Text = "Status: Couldn't connect"
end

if not Whitelisted then
	game:GetService('Players').LocalPlayer:Kick("Sorry, bro.")
	while 0 do end
end

--IB_MAX_CFLOW_END()

--Main
repeat wait() until string.len(Expected) < string.len(Returned) and Returned == enc(Expected) and Whitelisted

if typeof(true) == "boolean" and string.len(Returned) > string.len(Expected) and dec(Returned) == Expected and Whitelisted then
	-- Continuation
end