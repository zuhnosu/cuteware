-- pwned i guess,....
-- fix brain sjros

LPH_NO_VIRTUALIZE = function(a) return a end
LPH_NO_UPVALUES = function(a) return a end

if _G.version == "user" then
local L_1_ = false;
if game.PlaceId == 8065776277 and L_1_ then
	repeat
		wait()
	until game:IsLoaded()
	setfpscap(144)
	local L_144_ = game:GetService("ReplicatedStorage")
	local L_145_ = game:GetService("HttpService")
	local L_146_ = game:GetService("UserInputService")
	local L_147_ = game:GetService("Lighting")
	local L_148_ = game:GetService("TweenService")
	local L_149_ = game:GetService("Players")
	local L_150_ = workspace.settings;
	local L_151_ = L_149_.LocalPlayer;
	local L_152_ = workspace.CurrentCamera;
	local L_153_ = L_151_:GetMouse()
	local L_154_ = {}
	local L_155_ = {
		4,
		2,
		1,
		20,
		40
	}
	local L_156_ = {
		0.25,
		0.5,
		1,
		2,
		4
	}
	local L_157_ = {
		4,
		2,
		1,
		0.5,
		0.25
	}
	local L_158_ = {
		"1/4",
		"1/2",
		"1",
		"2",
		"4"
	}
	local L_159_ = false;
	local L_160_ = false;
	local L_161_ = false;
	local L_162_ = ""
	local L_163_ = "freecam"
	local L_164_ = nil;
	local L_165_ = 3;
	local L_166_ = 0;
	local L_167_ = 0;
	local L_168_;
	local L_169_ = game:GetService("RunService")
	local L_170_ = L_151_:GetMouse()
	local L_171_ = L_147_.Ambient;
	local L_172_ = L_147_.OutdoorAmbient;
	local L_173_ = Instance.new("ColorCorrectionEffect", L_147_)
	repeat
		wait()
	until L_151_.PlayerGui:FindFirstChild("main")
	local L_174_ = L_151_.PlayerGui.main;
	local L_175_ = L_174_;
	local L_176_ = L_175_.settings.outline.main.group;
	L_175_.settings.Position = UDim2.new(0.5, - L_175_.settings.Size.X.Offset / 2, 0.5, - L_175_.settings.Size.Y.Offset / 2)
	local L_177_ = {
		colorpicking = false,
		tabbuttons = {},
		tabs = {},
		options = {},
		flags = {},
		scrolling = false,
		playing = false,
		multiZindex = 100,
		toInvis = {},
		libColor = Color3.fromRGB(100, 60, 80),
		blacklisted = {
			Enum.KeyCode.W,
			Enum.KeyCode.A,
			Enum.KeyCode.S,
			Enum.KeyCode.D,
			Enum.UserInputType.MouseMovement
		}
	}
	local L_178_;
	L_174_.wait.TextLabel.Text = "Loading..."
	wait()
	local L_179_ = Instance.new("IntValue")
	L_179_.Name = "jig"
	function tickToSec(L_220_arg0)
		local L_221_ = tostring(math.floor(math.floor(L_220_arg0 / 32) / 60))
		local L_222_ = tostring(math.floor(L_220_arg0 / 32) - L_221_ * 60)
		L_222_ = # tostring(L_222_) == 1 and "0" .. L_222_ or L_222_;
		return L_221_ .. ":" .. L_222_
	end;
	function extractNumber(L_223_arg0)
		if not L_223_arg0 then
			return 0
		end;
		local L_224_ = ""
		for L_225_forvar0 = 1, string.len(L_223_arg0) do
			local L_226_ = string.sub(L_223_arg0, L_225_forvar0, L_225_forvar0)
			if tonumber(L_226_) then
				L_224_ = L_224_ .. L_226_
			end
		end;
		return tonumber(L_224_)
	end;
	function playAudio(L_227_arg0, L_228_arg1)
		if L_177_.flags["hide_character_models"] then
			return
		end;
		if ignoreSound then
			return
		end;
		local L_229_ = L_227_arg0:Clone()
		L_229_.Volume = 0.15;
		L_229_.PlaybackSpeed = L_156_[L_165_]
		L_229_.Parent = L_228_arg1;
		L_229_:Play()
		L_229_.Ended:Connect(function()
			if L_229_ then
				L_229_:Destroy()
			end
		end)
	end;
	function hasProperty(L_230_arg0, L_231_arg1)
		return pcall(function()
			_ = L_230_arg0[L_231_arg1]
		end)
	end;
	local L_180_ = {}
	local L_181_ = {}
	local L_182_ = {}
	local L_183_ = {}
	local L_184_ = {}
	local L_185_ = {}
	local L_186_ = 0;
	local L_187_ = false;
	local L_188_ = {
		AWP = {
			magout = 1.5
		}
	}
	local L_189_ = {}
	local L_190_ = require(workspace.Bezier)
	local L_191_ = false;
	local L_192_ = false;
	function count(L_232_arg0)
		a = 0;
		for L_233_forvar0, L_234_forvar1 in next, L_232_arg0 do
			a = a + 1
		end;
		return a
	end;
	function updateKeyframes()
		workspace.camParts:ClearAllChildren()
		if count(L_189_) < 1 or not L_150_.showkeyframes.Value then
			return
		end;
		for L_235_forvar0, L_236_forvar1 in pairs(L_189_) do
			if L_235_forvar0 ~= count(L_189_) then
				local L_237_ = L_236_forvar1.cf.p;
				local L_238_ = L_189_[L_235_forvar0 + 1].cf;
				local L_239_ = L_237_.X > L_238_.p.X and L_237_.X or L_238_.p.X;
				local L_240_ = (L_237_.Y + L_238_.p.Y) / 2;
				local L_241_ = L_237_.Z > L_238_.p.Z and L_237_.Z or L_238_.p.Z;
				local L_242_ = L_190_.new(L_237_, Vector3.new(L_239_, L_240_, L_241_), L_238_.p):GetPath(0.15)
				for L_243_forvar0, L_244_forvar1 in pairs(L_242_) do
					local L_245_ = Instance.new("Part")
					L_245_.Anchored = true;
					L_245_.Size = Vector3.new(0.3, 0.3, 0.3)
					L_245_.Material = "SmoothPlastic"
					L_245_.Color = Color3.new(0.5, 0.2, 0.7)
					L_245_.CFrame = CFrame.new(L_244_forvar1, L_244_forvar1 + L_238_.LookVector)
					L_245_.Transparency = 0.65;
					L_245_.Parent = workspace.camParts;
					local L_246_ = Instance.new("Part")
					L_246_.Shape = "Cylinder"
					L_246_.Anchored = true;
					L_246_.Size = Vector3.new(0.1, 0.2, 0.1)
					L_246_.Material = "SmoothPlastic"
					L_246_.Color = Color3.new(1, 1, 1)
					L_246_.Position = L_245_.Position + L_245_.CFrame.LookVector / 3.5;
					L_246_.Transparency = 0.75;
					L_246_.Orientation = L_245_.Orientation + Vector3.new(0, 90, 0)
					L_246_.Parent = L_245_
				end
			end;
			wait()
		end
	end;
	local L_193_ = tick()
	local L_194_ = CFrame.new(0, 0, 0)
	local L_195_ = CFrame.Angles(0, 0, 0)
	mgn = 0;
	local L_196_ = {
		0,
		0
	}
	local L_197_ = 0;
	local L_198_ = 0;
	waveScale = 0;
	local L_199_ = {
		aim_amp = 0.5,
		aim_max_change = 4,
		aim_retract = 15,
		aim_max_deg = 20
	}
	local L_200_ = Vector3.new()
	Camera = workspace.CurrentCamera;
	local L_201_ = Drawing.new("Text")
	L_201_.Visible = true;
	L_201_.Position = Vector2.new(100, 100)
	L_201_.Size = 30;
	L_201_.Font = 2;
	L_201_.Text = "tps:"
	L_201_.Color = Color3.new(1, 1, 1)
	L_201_.Visible = false;
	local L_202_ = 0;
	spawn(function()
		while wait(1) do
			L_201_.Text = "tps: " .. tostring(L_202_)
			L_202_ = 0
		end
	end)
	function playTick(L_247_arg0)
		if not L_247_arg0 then
			L_247_arg0 = L_167_
		end;
		if L_150_.keyframing.Value and L_163_ == "freecam" and L_150_.playing.Value then
			if count(L_189_) > 1 then
				if not L_191_ then
					local L_249_, L_250_ = 387420489, nil;
					for L_251_forvar0, L_252_forvar1 in next, L_189_ do
						if L_252_forvar1.tick > L_247_arg0 and L_252_forvar1.tick < L_249_ then
							L_249_, L_250_ = L_252_forvar1.tick, L_252_forvar1.cf
						end
					end;
					if L_250_ then
						L_191_ = true;
						local L_253_ = math.abs(L_247_arg0 - L_249_)
						local L_254_ = L_152_.CFrame.p;
						local L_255_ = L_254_.X > L_250_.p.X and L_254_.X or L_250_.p.X;
						local L_256_ = (L_254_.Y + L_250_.p.Y) / 2;
						local L_257_ = L_254_.Z > L_250_.p.Z and L_254_.Z or L_250_.p.Z;
						local L_258_ = L_190_.new(L_254_, Vector3.new(L_255_, L_256_, L_257_), L_250_.p):GetPath(0.15)
						local L_259_ = 30 * L_156_[L_165_]
						spawn(function()
							warn(L_247_arg0, L_249_)
							warn(L_253_, L_253_ / L_259_, L_253_ / L_259_ / (# L_258_ - 1))
							for L_260_forvar0, L_261_forvar1 in pairs(L_258_) do
								if L_260_forvar0 > 1 then
									local L_262_ = TweenInfo.new(L_253_ / L_259_ / (# L_258_ - 1), Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
									local L_263_ = L_148_:Create(L_152_, L_262_, {
										CFrame = CFrame.new(L_261_forvar1, L_261_forvar1 + L_250_.LookVector * 10000)
									})
									L_263_:Play()
									if L_260_forvar0 ~= # L_258_ - 1 then
										wait(L_253_ / L_259_ / (# L_258_ - 1))
									end
								end
							end;
							L_191_ = false
						end)
					end
				end
			end
		end;
		workspace.demoModels.nades:ClearAllChildren()
		local L_248_ = L_154_[L_247_arg0]
		if type(L_248_) == "table" then
			for L_265_forvar0, L_266_forvar1 in next, L_248_ do
				if type(L_266_forvar1) ~= "table" or not L_266_forvar1.name then
					continue;
				end;
				if L_266_forvar1.alive then
					local L_267_ = workspace.demoModels:FindFirstChild(L_265_forvar0)
					local L_268_ = workspace.demoModels.weapons:FindFirstChild(L_265_forvar0 .. "_" .. L_266_forvar1.gunName)
					local L_269_ = false;
					local L_270_ = false;
					if not L_267_ then
						L_267_ = L_144_.CharacterModels[L_266_forvar1.plrModel]:Clone()
						L_267_.Name = L_265_forvar0;
						L_267_.Parent = workspace.demoModels;
						L_180_[L_266_forvar1.name] = L_266_forvar1.plrModel;
						L_270_ = true
					end;
					if not L_268_ then
						for L_273_forvar0, L_274_forvar1 in next, workspace.demoModels.weapons:GetChildren() do
							if L_274_forvar1.Name:find(L_265_forvar0) then
								L_274_forvar1:Destroy()
								break
							end
						end;
						if L_144_.Weapons:FindFirstChild(L_266_forvar1.gunName) then
							L_268_ = L_144_.Weapons[L_266_forvar1.gunName].Model:Clone()
							L_268_.Name = L_265_forvar0 .. "_" .. L_266_forvar1.gunName;
							L_268_.Parent = workspace.demoModels.weapons;
							for L_275_forvar0, L_276_forvar1 in next, L_268_:GetDescendants() do
								if L_276_forvar1:IsA("BasePart") then
									L_276_forvar1.Anchored = true;
									if L_144_.Weapons[L_266_forvar1.gunName]:FindFirstChild("Grenade") then
										L_276_forvar1.Transparency = 0
									end
								end
							end
						end;
						L_269_ = true
					end;
					local L_271_ = L_265_forvar0 == L_162_ and L_163_ == "follow" and L_159_ or L_177_.flags["hide_character_models"]
					if (not L_185_[L_265_forvar0] and L_266_forvar1.scoped or L_185_[L_265_forvar0] and not L_266_forvar1.scoped) and L_268_:FindFirstChild("Zoom") then
						playAudio(L_268_.Zoom, L_164_ and L_271_ and workspace or L_268_:FindFirstChild("Handle") or L_268_:FindFirstChild("Handle2") or nil)
					end;
					L_174_.Scope.Visible = L_266_forvar1.scoped and (L_265_forvar0 == L_162_ and L_159_)
					L_152_.FieldOfView = L_174_.Scope.Visible and 35 or 80;
					if L_163_ == "follow" then
						if L_265_forvar0 == L_162_ then
							if L_266_forvar1.alive then
								L_174_.crosshair.Visible = L_266_forvar1.gunName ~= "AWP" and L_266_forvar1.gunName ~= "Scout" and L_266_forvar1.gunName ~= "G3SG1" and (L_159_ and L_163_ == "follow") and not L_266_forvar1.scoped;
								if L_266_forvar1.localplayer and L_159_ then
									L_174_.hud.Vitals.Visible = true;
									L_174_.hud.AmmoGUI.Visible = true;
									L_174_.hud.Spectate.Visible = false;
									L_174_.hud.Vitals.Health.Text = math.floor(tonumber(L_266_forvar1.health))
									L_174_.hud.Vitals.Armor.Text = math.floor(tonumber(L_266_forvar1.kevlar))
									L_174_.hud.Vitals.HealthB.Fill.Size = UDim2.new(L_266_forvar1.health / 100, 0, 1, 0)
									L_174_.hud.Vitals.ArmorB.Fill.Size = UDim2.new(L_266_forvar1.kevlar / 100, 0, 1, 0)
									L_174_.hud.AmmoGUI.AmmoClip.Text = L_266_forvar1.ammo;
									L_174_.hud.AmmoGUI.AmmoReserve.Text = L_266_forvar1.ammoreserve
								else
									L_174_.hud.Vitals.Visible = false;
									L_174_.hud.AmmoGUI.Visible = false;
									L_174_.hud.Spectate.Visible = true;
									L_174_.hud.Spectate.PlayerBox.BackgroundColor3 = L_266_forvar1.team == "Terrorists" and Color3.fromRGB(245, 205, 48) or Color3.fromRGB(13, 105, 172)
									L_174_.hud.Spectate.PlayerBox.PlayerName.TextColor3 = L_266_forvar1.team == "Terrorists" and Color3.fromRGB(245, 205, 48) or Color3.fromRGB(13, 105, 172)
									L_174_.hud.Spectate.PlayerBox.PlayerName.Text = L_266_forvar1.name;
									L_174_.hud.Spectate.PlayerBox.PlayerIcon.Plr.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. tostring(L_266_forvar1.userid) .. "&width=420&height=420&format=png"
									L_174_.hud.Spectate.PlayerBox.GreyPart.PHealth.Text = math.floor(tonumber(L_266_forvar1.health))
									L_174_.hud.Spectate.PlayerBox.GreyPart.WeaponName.Text = L_266_forvar1.gunName
								end
							else
								L_174_.hud.Spectate.Visible = false;
								L_174_.hud.Vitals.Visible = false;
								L_174_.hud.AmmoGUI.Visible = false;
								L_174_.crosshair.Visible = false
							end
						end
					else
						L_174_.hud.Spectate.Visible = false;
						L_174_.hud.Vitals.Visible = false;
						L_174_.hud.AmmoGUI.Visible = false;
						L_174_.crosshair.Visible = false
					end;
					if not L_177_.flags["show_hud"] then
						L_174_.hud.Spectate.Visible = false;
						L_174_.hud.Vitals.Visible = false;
						L_174_.hud.AmmoGUI.Visible = false
					end;
					if L_177_.flags["hide_crosshair"] then
						L_174_.crosshair.Visible = false
					end;
					L_187_ = L_174_.Scope.Visible or L_177_.flags["hide_viewmodel"]
					for L_277_forvar0, L_278_forvar1 in next, L_267_:GetChildren() do
						local L_279_ = nil;
						local L_280_ = nil;
						local L_281_ = nil;
						local L_282_ = nil;
						for L_283_forvar0, L_284_forvar1 in next, L_266_forvar1.partCF do
							L_279_ = L_283_forvar0 == L_278_forvar1.Name and L_278_forvar1 or nil;
							L_280_ = L_279_ and L_284_forvar1 or nil;
							if L_279_ then
								break
							end
						end;
						if L_278_forvar1.ClassName == "Accessory" then
							for L_285_forvar0, L_286_forvar1 in next, L_266_forvar1.hatCF do
								local L_287_ = L_278_forvar1.Handle.ClassName == "Part" and L_278_forvar1.Handle.Mesh.MeshId or L_278_forvar1.Handle.ClassName == "MeshPart" and L_278_forvar1.Handle.MeshId or ""
								L_281_ = L_285_forvar0 == L_287_ and L_278_forvar1 or nil;
								L_282_ = L_281_ and L_286_forvar1 or nil;
								if L_281_ then
									break
								end
							end
						end;
						if L_279_ then
							local L_288_ = L_271_ and "0 0 0 0 0 0 0 0 0 0 0 0" or L_280_:split(" ")
							local L_289_ = TweenInfo.new(L_270_ and 0 or workspace.settings.playertween.Value, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
							local L_290_ = L_148_:Create(L_279_, L_289_, {
								CFrame = CFrame.new(L_288_[1], L_288_[2], L_288_[3], L_288_[4], L_288_[5], L_288_[6], L_288_[7], L_288_[8], L_288_[9], L_288_[10], L_288_[11], L_288_[12])
							})
							L_290_:Play()
							L_279_.Anchored = true
						end;
						if L_281_ then
							local L_291_ = L_271_ and "0 0 0 0 0 0 0 0 0 0 0 0" or L_282_:split(" ")
							local L_292_ = TweenInfo.new(L_270_ and 0 or workspace.settings.playertween.Value, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
							local L_293_ = L_148_:Create(L_281_.Handle, L_292_, {
								CFrame = CFrame.new(L_291_[1], L_291_[2], L_291_[3], L_291_[4], L_291_[5], L_291_[6], L_291_[7], L_291_[8], L_291_[9], L_291_[10], L_291_[11], L_291_[12])
							})
							L_293_:Play()
							L_281_.Handle.Anchored = true
						end
					end;
					if L_268_ and L_144_.Skins:FindFirstChild(L_266_forvar1.gunName) then
						for L_294_forvar0, L_295_forvar1 in next, L_266_forvar1.gunCF do
							local L_296_ = L_268_:FindFirstChild(L_294_forvar0)
							local L_297_ = L_144_.Skins[L_266_forvar1.gunName]:FindFirstChild(L_266_forvar1.skinName) and L_144_.Skins[L_266_forvar1.gunName][L_266_forvar1.skinName]:FindFirstChild(L_294_forvar0, true) or nil;
							if L_296_ then
								local L_298_ = L_271_ and "0 0 0 0 0 0 0 0 0 0 0 0" or L_295_forvar1:split(" ")
								local L_299_ = TweenInfo.new(L_269_ and 0 or workspace.settings.playertween.Value, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
								local L_300_ = L_148_:Create(L_296_, L_299_, {
									CFrame = CFrame.new(L_298_[1], L_298_[2], L_298_[3], L_298_[4], L_298_[5], L_298_[6], L_298_[7], L_298_[8], L_298_[9], L_298_[10], L_298_[11], L_298_[12])
								})
								L_300_:Play()
								if L_297_ then
									L_296_.TextureID = L_297_.Value
								end
							end
						end
					end;
					local L_272_ = L_266_forvar1.gunState;
					if L_272_ ~= "None" then
						local L_301_, L_302_;
						L_302_ = L_164_ and (L_265_forvar0 == L_162_ and L_163_ == "follow" and L_159_) and workspace or L_268_:FindFirstChild("Handle") or L_268_:FindFirstChild("Handle2") or nil;
						if string.find(L_272_, "Fire") or L_272_ == "Stab" then
							L_301_ = L_268_:FindFirstChild("Shoot") or L_268_:FindFirstChild("Shoot1")
							if L_162_ == L_265_forvar0 and L_164_ then
								if L_272_ ~= "Stab" then
									L_200_ = Vector3.new(0, 0.5, 0)
								end;
								local L_303_ = L_164_.Guy:LoadAnimation(L_164_[L_272_:lower()])
								L_303_:Play()
								L_303_:AdjustSpeed(L_156_[L_165_])
							end
						elseif L_272_ == "Reload" then
							if L_162_ == L_265_forvar0 and L_164_ then
								local L_306_ = L_164_.Guy:LoadAnimation(L_164_.reload)
								L_306_:Play()
								L_306_:AdjustSpeed(L_156_[L_165_])
							end;
							local L_304_ = L_268_;
							local L_305_ = L_268_.Name:split("_")[2]
							spawn(function()
								if L_144_.Weapons:FindFirstChild(L_305_) then
									local L_307_ = L_144_.Weapons[L_305_].Model:FindFirstChild("magout")
									local L_308_ = L_144_.Weapons[L_305_].Model:FindFirstChild("magin")
									local L_309_ = L_144_.Weapons[L_305_].Model:FindFirstChild("bolt") or L_144_.Weapons[L_305_].Model:FindFirstChild("slide")
									local L_310_ = L_144_.Weapons[L_305_].Model:FindFirstChild("boltin") or L_144_.Weapons[L_305_].Model:FindFirstChild("slidein")
									if L_307_ and L_308_ and L_309_ and L_310_ then
										playAudio(L_307_, L_302_)
										wait((L_188_[L_305_] and L_188_[L_305_].magout or L_307_.TimeLength * 0.85) * L_157_[L_165_])
										if not L_304_ then
											return
										end;
										playAudio(L_308_, L_302_)
										wait(L_308_.TimeLength * 0.95 * L_157_[L_165_])
										if not L_304_ then
											return
										end;
										playAudio(L_309_, L_302_)
										wait(L_309_.TimeLength * 0.75 * L_157_[L_165_])
										if not L_304_ then
											return
										end;
										playAudio(L_310_, L_302_)
									else
										warn(L_266_forvar1.gunName, "does not have all needed sounds!")
									end
								else
									warn(L_305_, "does not exist [?]", L_268_.Name)
								end
							end)
						elseif L_272_ == "Inspect" then
							if L_162_ == L_265_forvar0 and L_164_ then
								local L_311_ = L_164_.Guy:LoadAnimation(L_164_.inspect)
								L_311_:Play()
								L_311_:AdjustSpeed(L_156_[L_165_])
							end
						end;
						if L_301_ and L_302_ then
							playAudio(L_301_, L_302_)
						end
					end;
					L_200_ = Vector3.new(0, L_200_.Y - 0.075 < 0 and 0 or L_200_.Y - 0.075, 0)
					if L_269_ and L_144_.Weapons:FindFirstChild(L_266_forvar1.gunName) then
						if L_144_.Weapons[L_266_forvar1.gunName].Model:FindFirstChild("Equip") then
							local L_312_ = L_164_ and (L_265_forvar0 == L_162_ and L_163_ == "follow" and L_159_) and L_164_.HumanoidRootPart or L_268_:FindFirstChild("Handle") or L_268_:FindFirstChild("Handle2")
							playAudio(L_144_.Weapons[L_266_forvar1.gunName].Model.Equip, L_312_)
						else
							local L_313_ = L_164_ and (L_265_forvar0 == L_162_ and L_163_ == "follow" and L_159_) and L_164_.HumanoidRootPart or L_268_:FindFirstChild("Handle") or L_268_:FindFirstChild("Handle2")
							local L_314_ = L_144_.Weapons[L_266_forvar1.gunName].Model:FindFirstChild("bolt") or L_144_.Weapons[L_266_forvar1.gunName].Model:FindFirstChild("slide")
							local L_315_ = L_144_.Weapons[L_266_forvar1.gunName].Model:FindFirstChild("boltin") or L_144_.Weapons[L_266_forvar1.gunName].Model:FindFirstChild("slidein")
							if L_314_ and L_315_ then
								spawn(function()
									wait(0.1)
									playAudio(L_314_, L_313_)
									wait(L_314_.TimeLength * 0.75 * L_157_[L_165_])
									playAudio(L_315_, L_313_)
								end)
							end
						end
					end;
					if workspace.demoModels.ragdoll:FindFirstChild(L_265_forvar0) then
						workspace.demoModels.ragdoll[L_265_forvar0]:Destroy()
					end;
					if L_266_forvar1.forcefield and not L_267_:FindFirstChild("ForceField") then
						local L_316_ = Instance.new("ForceField", L_267_)
					elseif L_267_:FindFirstChild("ForceField") and not L_266_forvar1.forcefield then
						L_267_.ForceField:Destroy()
					end;
					if L_266_forvar1.velocity and L_159_ and L_265_forvar0 == L_162_ then
						local L_317_ = tick() - L_193_ > 0.12 and 0.12 or tick() - L_193_;
						L_193_ = tick()
						local L_318_ = L_152_.CFrame.LookVector.magnitude == 0 and 1.0E-4 or L_152_.CFrame.lookVector.magnitude;
						local L_319_ = L_152_.CFrame.LookVector.y;
						local L_320_;
						if L_319_ ~= 0 then
							L_320_ = math.deg(math.asin(math.abs(L_319_) / L_318_)) * math.abs(L_319_) / L_319_
						else
							L_320_ = 0
						end;
						local L_321_ = L_152_.CFrame;
						local L_322_ = L_321_ * CFrame.new(0, 0, -100)
						local L_323_ = math.deg(math.atan2(L_321_.p.x - L_322_.p.x, L_321_.p.z - L_322_.p.z)) + 180;
						local L_324_, L_325_;
						local L_326_, L_327_ = 0, 0;
						L_324_ = math.abs(L_320_ - L_197_)
						if L_324_ ~= 0 then
							L_326_ = (L_320_ - L_197_) / L_324_
						end;
						local L_328_ = {
							math.abs(L_323_ - L_198_),
							360 - math.abs(L_323_ - L_198_)
						}
						if L_323_ == L_198_ then
							L_327_ = 0;
							L_325_ = 0
						elseif L_328_[1] < L_328_[2] then
							L_325_ = L_328_[1]
							L_327_ = (L_323_ - L_198_) / L_328_[1]
						else
							L_325_ = L_328_[2]
							if L_323_ < L_198_ then
								L_327_ = 1
							else
								L_327_ = -1
							end
						end;
						L_197_ = L_320_;
						L_198_ = L_323_;
						L_196_[1] = L_196_[1] / (1 + L_317_ * 15)
						L_196_[2] = L_196_[2] / (1 + L_317_ * 15)
						local L_329_ = L_324_ * L_326_ * 0.5;
						if L_329_ ~= 0 then
							L_196_[1] = L_196_[1] + math.min(4, math.abs(L_329_)) * L_329_ / math.abs(L_329_)
						end;
						local L_330_ = L_325_ * L_327_ * 0.5;
						if L_330_ ~= 0 then
							L_196_[2] = L_196_[2] + math.min(4, math.abs(L_330_)) * L_330_ / math.abs(L_330_)
						end;
						if L_196_[1] ~= 0 then
							L_196_[1] = math.min(20, math.abs(L_196_[1])) * math.abs(L_196_[1]) / L_196_[1]
						end;
						if L_196_[2] ~= 0 then
							L_196_[2] = math.min(20, math.abs(L_196_[2])) * math.abs(L_196_[2]) / L_196_[2]
						end;
						local L_331_ = math.cos(tick() * math.pi * 2.5)
						local L_332_ = 0.05;
						local L_333_ = Vector3.new(L_266_forvar1.velocity[1], L_266_forvar1.velocity[2], L_266_forvar1.velocity[3]).magnitude;
						waveScale = 0.75 * 0.5;
						if mgn < L_333_ then
							mgn = math.min(L_333_, mgn + 1)
						end;
						if mgn > L_333_ then
							mgn = math.max(L_333_, mgn - 1.5)
						end;
						local L_334_ = mgn / 18.35;
						L_194_ = getgenv().fart and CFrame.new() or CFrame.new((0.25 * L_334_ + L_331_ / 10 * L_334_) * waveScale, (0.25 * L_334_ + math.abs(L_331_ / 10) * L_334_) * - waveScale, math.abs(0.25 * L_334_) * waveScale)
						L_195_ = CFrame.Angles(- L_196_[1] / 150, - L_196_[2] / 150, 0)
					end;
					L_181_[L_265_forvar0] = L_266_forvar1.camCF;
					L_183_[L_265_forvar0] = L_266_forvar1.gunName;
					L_182_[L_265_forvar0] = L_266_forvar1.armsModel;
					L_184_[L_265_forvar0] = L_266_forvar1.skinName;
					L_185_[L_265_forvar0] = L_266_forvar1.scoped
				else
					if L_163_ == "follow" and L_265_forvar0 == L_162_ then
						L_174_.hud.Spectate.Visible = false;
						L_174_.hud.Vitals.Visible = false;
						L_174_.hud.AmmoGUI.Visible = false;
						L_174_.crosshair.Visible = false
					end;
					if L_266_forvar1.ragdoll.found and L_180_[L_265_forvar0] then
						local L_335_ = workspace.demoModels.ragdoll:FindFirstChild(L_265_forvar0)
						local L_336_ = false;
						if not L_335_ then
							L_335_ = L_144_.CharacterModels[L_180_[L_265_forvar0]]:Clone()
							L_335_.Name = L_266_forvar1.name;
							L_335_.Parent = workspace.demoModels.ragdoll;
							for L_337_forvar0, L_338_forvar1 in next, L_335_:GetDescendants() do
								if L_338_forvar1:IsA("BasePart") then
									L_338_forvar1.Anchored = true
								end
							end;
							L_336_ = true
						end;
						for L_339_forvar0, L_340_forvar1 in next, L_335_:GetChildren() do
							local L_341_ = L_266_forvar1.ragdoll.positions[L_340_forvar1.Name == "FakeHead" and "Head" or L_340_forvar1.Name]
							if L_341_ then
								L_341_ = L_177_.flags["hide_ragdolls"] and "0 0 0 0 0 0 0 0 0 0 0 0" or L_341_;
								local L_342_ = L_341_:split(" ")
								local L_343_ = TweenInfo.new(L_336_ and 0 or workspace.settings.playertween.Value, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
								local L_344_ = L_148_:Create(L_340_forvar1, L_343_, {
									CFrame = CFrame.new(L_342_[1], L_342_[2], L_342_[3], L_342_[4], L_342_[5], L_342_[6], L_342_[7], L_342_[8], L_342_[9], L_342_[10], L_342_[11], L_342_[12])
								})
								L_344_:Play()
							end;
							if L_340_forvar1.ClassName == "Accessory" then
								for L_345_forvar0, L_346_forvar1 in next, L_266_forvar1.ragdoll.hatPos do
									local L_347_ = L_340_forvar1.Handle.ClassName == "Part" and L_340_forvar1.Handle.Mesh.MeshId or L_340_forvar1.Handle.ClassName == "MeshPart" and L_340_forvar1.Handle.MeshId or ""
									if L_347_ == L_345_forvar0 then
										L_346_forvar1 = L_177_.flags["hide_ragdolls"] and "0 0 0 0 0 0 0 0 0 0 0 0" or L_346_forvar1;
										local L_348_ = L_346_forvar1:split(" ")
										local L_349_ = TweenInfo.new(L_336_ and 0 or workspace.settings.playertween.Value, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
										local L_350_ = L_148_:Create(L_340_forvar1.Handle, L_349_, {
											CFrame = CFrame.new(L_348_[1], L_348_[2], L_348_[3], L_348_[4], L_348_[5], L_348_[6], L_348_[7], L_348_[8], L_348_[9], L_348_[10], L_348_[11], L_348_[12])
										})
										L_350_:Play()
									end
								end
							end
						end
					elseif workspace.demoModels.ragdoll:FindFirstChild(L_265_forvar0) then
						workspace.demoModels.ragdoll[L_265_forvar0]:Destroy()
					end;
					for L_351_forvar0, L_352_forvar1 in next, workspace.demoModels.weapons:GetChildren() do
						if L_352_forvar1.Name:find(L_265_forvar0) then
							L_352_forvar1:Destroy()
							break
						end
					end;
					if workspace.demoModels:FindFirstChild(L_265_forvar0) then
						workspace.demoModels[L_265_forvar0]:Destroy()
					end;
					L_181_[L_265_forvar0] = nil;
					L_183_[L_265_forvar0] = nil;
					L_182_[L_265_forvar0] = nil;
					L_184_[L_265_forvar0] = nil;
					L_185_[L_265_forvar0] = nil
				end
			end;
			for L_353_forvar0, L_354_forvar1 in next, L_248_.nades do
				local L_355_ = L_144_.Weapons[L_354_forvar1.nade].Model:Clone()
				L_355_.Parent = workspace.demoModels.nades;
				L_355_.Anchored = true;
				L_355_.Transparency = 0;
				local L_356_ = L_354_forvar1.pos:split(" ")
				L_355_.Position = Vector3.new(L_356_[1], L_356_[2], L_356_[3])
				L_355_.Orientation = Vector3.new(L_356_[4], L_356_[5], L_356_[6])
			end;
			if L_166_ ~= L_248_.roundInfo.round then
				for L_357_forvar0, L_358_forvar1 in next, L_168_.Regen.Props:GetChildren() do
					L_358_forvar1.Transparency = 0
				end;
				if L_168_.Regen:FindFirstChild("Glasses") then
					for L_359_forvar0, L_360_forvar1 in next, L_168_.Regen.Glasses:GetChildren() do
						L_360_forvar1.Transparency = 0.5
					end
				end
			end;
			for L_361_forvar0, L_362_forvar1 in next, L_168_.Regen.Props:GetChildren() do
				local L_363_ = false;
				for L_364_forvar0, L_365_forvar1 in next, L_248_.regen.props do
					local L_366_ = L_365_forvar1:split(" ")
					L_363_ = (Vector3.new(L_366_[1], L_366_[2], L_366_[3]) - L_362_forvar1.Position).magnitude < 3 and true or L_363_
				end;
				L_362_forvar1.Transparency = L_363_ and 0 or 1
			end;
			if L_168_.Regen:FindFirstChild("Glasses") then
				for L_367_forvar0, L_368_forvar1 in next, L_168_.Regen.Glasses:GetChildren() do
					local L_369_ = false;
					for L_370_forvar0, L_371_forvar1 in next, L_248_.regen.glasses do
						local L_372_ = L_371_forvar1:split(" ")
						L_369_ = (Vector3.new(L_372_[1], L_372_[2], L_372_[3]) - L_368_forvar1.Position).magnitude < 1 and true or L_369_
					end;
					L_368_forvar1.Transparency = L_369_ and 0.5 or 1
				end
			end;
			for L_373_forvar0, L_374_forvar1 in pairs(L_168_.Regen.Doors:GetChildren()) do
				pcall(function()
					local L_375_ = L_248_.regen.doors[L_373_forvar0]:split(" ")
					L_374_forvar1.HumanoidRootPart.Anchored = true;
					L_374_forvar1.HumanoidRootPart.Position = Vector3.new(L_375_[1], L_375_[2], L_375_[3])
					L_374_forvar1.HumanoidRootPart.Orientation = Vector3.new(L_375_[4], L_375_[5], L_375_[6])
				end)
			end;
			for L_376_forvar0, L_377_forvar1 in next, L_248_.nadePos do
				local L_378_ = L_377_forvar1.pos:split(" ")
				local L_379_ = Vector3.new(L_378_[1], L_378_[2], L_378_[3])
				local L_380_ = false;
				for L_381_forvar0, L_382_forvar1 in next, workspace.demoModels.nadePos:GetChildren() do
					local L_383_ = (L_382_forvar1.Position - L_379_).magnitude;
					if L_383_ <= 0.25 then
						L_380_ = true
					end
				end;
				if not L_380_ then
					local L_384_ = L_144_[L_377_forvar1.type]:Clone()
					L_384_.Parent = workspace.demoModels.nadePos;
					L_384_.Position = L_379_
				end
			end;
			for L_385_forvar0, L_386_forvar1 in next, workspace.demoModels.nadePos:GetChildren() do
				local L_387_ = false;
				for L_388_forvar0, L_389_forvar1 in next, L_248_.nadePos do
					local L_390_ = L_389_forvar1.pos:split(" ")
					local L_391_ = (L_386_forvar1.Position - Vector3.new(L_390_[1], L_390_[2], L_390_[3])).magnitude;
					if L_391_ <= 1 then
						L_387_ = true
					end
				end;
				if not L_387_ then
					L_386_forvar1:Destroy()
				end
			end;
			workspace.demoModels.droppedWeapons:ClearAllChildren()
			for L_392_forvar0, L_393_forvar1 in next, L_248_.droppedWeapons do
				local L_394_ = L_144_.Weapons[L_393_forvar1.name].Model:Clone()
				L_394_.Parent = workspace.demoModels.droppedWeapons;
				for L_395_forvar0, L_396_forvar1 in next, L_393_forvar1.positions do
					L_396_forvar1 = L_177_.flags["hide_dropped_weapons"] and "0 0 0 0 0 0" or L_396_forvar1;
					local L_397_ = L_396_forvar1:split(" ")
					L_394_[L_395_forvar0].Position = Vector3.new(L_397_[1], L_397_[2], L_397_[3])
					L_394_[L_395_forvar0].Orientation = Vector3.new(L_397_[4], L_397_[5], L_397_[6])
				end
			end;
			L_174_.hud.TWin.Visible = L_248_.roundInfo.TWin.vis;
			L_174_.hud.TWin.MVPPlayer.Image = L_248_.roundInfo.TWin.mvpimage;
			L_174_.hud.TWin.TextLabel.Text = L_248_.roundInfo.TWin.mvptext;
			L_174_.hud.TWin.Info.TextLabel.Text = L_248_.roundInfo.TWin.infotext;
			L_174_.hud.CTWin.Visible = L_248_.roundInfo.CTWin.vis;
			L_174_.hud.CTWin.MVPPlayer.Image = L_248_.roundInfo.CTWin.mvpimage;
			L_174_.hud.CTWin.TextLabel.Text = L_248_.roundInfo.CTWin.mvptext;
			L_174_.hud.CTWin.Info.TextLabel.Text = L_248_.roundInfo.CTWin.infotext;
			local L_264_ = L_248_.bombPos:split(" ")
			workspace.C4Normal:SetPrimaryPartCFrame(CFrame.new(L_264_[1], L_264_[2] - 1, L_264_[3]) * CFrame.Angles(math.rad(90), 0, 0))
			L_166_ = L_248_.roundInfo.round;
			for L_398_forvar0, L_399_forvar1 in next, L_174_.killfeed:GetChildren() do
				if L_399_forvar1.Name ~= "example" and L_399_forvar1.Name ~= "UIListLayout" then
					L_399_forvar1:Destroy()
				end
			end;
			if L_248_.killfeed then
				for L_400_forvar0, L_401_forvar1 in pairs(L_248_.killfeed) do
					local L_402_ = L_174_.killfeed.example:Clone()
					x = 0;
					L_402_.Killer.Text = L_401_forvar1.killer;
					L_402_.Killer.TextColor3 = Color3.new(L_401_forvar1.killercolor[1], L_401_forvar1.killercolor[2], L_401_forvar1.killercolor[3])
					L_402_.Victim.Text = L_401_forvar1.victim;
					L_402_.Victim.TextColor3 = Color3.new(L_401_forvar1.victimcolor[1], L_401_forvar1.victimcolor[2], L_401_forvar1.victimcolor[3])
					L_402_.Outline.Visible = L_163_ == "follow" and (L_401_forvar1.killer == L_162_ or L_401_forvar1.victim == L_162_)
					L_402_.Pic.Image = L_401_forvar1.weapon;
					if L_401_forvar1.headshot and L_401_forvar1.wallbang then
						L_402_.Pic.Wallbang.Visible = true;
						L_402_.Pic.Wallbang.Headshot.Visible = true
					elseif L_401_forvar1.headshot then
						L_402_.Pic.Headshot.Visible = true
					end;
					L_402_.Pic.Headshot.Position = L_401_forvar1.headshot and L_401_forvar1.wallbang and UDim2.new(0, 102, 0, 2) or L_402_.Pic.Headshot.Position;
					L_402_.Name = tostring(L_400_forvar0)
					L_402_.Visible = L_177_.flags["show_killfeed"]
					L_402_.Parent = L_174_.killfeed;
					L_402_.Pic.Position = UDim2.new(0, L_402_.Killer.TextBounds.X + 3, 0, 0)
					L_402_.Size = UDim2.new(0, L_402_.Killer.TextBounds.X + L_402_.Victim.TextBounds.X + L_402_.Pic.Size.Width.Offset + (L_401_forvar1.headshot and 30 or 0) + (L_401_forvar1.wallbang and 30 or 0) + 28, 0, 25)
				end
			end;
			L_174_.hud.UpperInfo.Visible = L_177_.flags["show_hud"]
			if L_177_.flags["show_hud"] then
				L_174_.hud.UpperInfo.Timer.Text = L_248_.roundInfo.time;
				L_174_.hud.UpperInfo.TScore.Text = L_248_.roundInfo.T;
				L_174_.hud.UpperInfo.CTScore.Text = L_248_.roundInfo.CT
			end;
			L_174_.player.pauseresume.Image = L_150_.playing.Value and "rbxassetid://4458862490" or "rbxassetid://4458863290"
			L_174_.player.tickcount.Text = tickToSec(L_247_arg0) .. " / " .. tickToSec(L_186_)
			L_174_.player.tickslider.volumesize.Size = UDim2.new(100 / L_186_ * L_247_arg0 / 100, 0, 1, 0)
			ignoreSound = false
		end;
		L_202_ = L_202_ + 1
	end;
	local L_203_ = ""
	local L_204_ = false;
	function createMap(L_403_arg0)
		workspace.Terrain:Clear()
		if workspace:FindFirstChild("Map") then
			workspace.Map:Destroy()
		end;
		workspace.createmap.mapevent:FireServer(L_403_arg0)
	end;
	local L_205_ = {
		newKills = {},
		newRounds = {},
		newBombPlants = {}
	}
	function checkDifferences(L_404_arg0, L_405_arg1)
		local L_406_ = L_405_arg1[L_404_arg0 - 1]
		local L_407_ = L_405_arg1[L_404_arg0]
		for L_408_forvar0, L_409_forvar1 in next, L_407_.killfeed do
			local L_410_ = false;
			for L_411_forvar0, L_412_forvar1 in next, L_406_.killfeed do
				if L_412_forvar1.victim == L_409_forvar1.victim and L_409_forvar1.killer == L_412_forvar1.killer then
					L_410_ = true;
					break
				end
			end;
			if not L_410_ then
				table.insert(L_205_.newKills, {
					victim = L_409_forvar1.victim,
					killer = L_409_forvar1.killer,
					killercolor = L_409_forvar1.killercolor,
					victimcolor = L_409_forvar1.victimcolor,
					tickNumber = L_404_arg0
				})
			end
		end;
		if L_407_.roundInfo.round > L_406_.roundInfo.round then
			table.insert(L_205_.newRounds, {
				round = L_407_.roundInfo.round,
				tickNumber = L_404_arg0
			})
		end;
		if L_407_.bombPlanted and not L_406_.bombPlanted then
			table.insert(L_205_.newBombPlants, {
				round = L_407_.roundInfo.round,
				tickNumber = L_404_arg0
			})
		end
	end;
	function CreateThread(L_413_arg0)
		local L_414_ = coroutine.create(L_413_arg0)
		coroutine.resume(L_414_)
		return L_414_
	end;
	function playDemo(L_415_arg0, L_416_arg1)
		L_174_.playing.Visible = true;
		if L_204_ then
			return
		end;
		if L_164_ then
			L_164_:Destroy()
			L_164_ = nil
		end;
		if L_177_.flags["depth_of_field_map"] then
			L_177_.options["depth_of_field_map"].changeState(false)
		end;
		if L_177_.flags["greenscreen_map"] then
			L_177_.options["greenscreen_map"].changeState(false)
		end;
		L_162_ = ""
		L_163_ = "freecam"
		L_159_ = false;
		L_203_ = L_415_arg0;
		L_174_.demolist.Visible = false;
		L_150_.playing.Value = false;
		local L_417_ = L_144_.Demos:FindFirstChild(L_415_arg0)
		if L_417_ then
			local L_418_ = L_145_:JSONDecode(L_417_.map.Value)
			if L_418_.sky then
				if not L_147_:FindFirstChild("Sky") then
					local L_420_ = Instance.new("Sky", L_147_)
					L_420_.Name = "Sky"
				end;
				L_147_.Sky.SkyboxBk = L_418_.sides["SkyboxBk"]
				L_147_.Sky.SkyboxDn = L_418_.sides["SkyboxDn"]
				L_147_.Sky.SkyboxFt = L_418_.sides["SkyboxFt"]
				L_147_.Sky.SkyboxLf = L_418_.sides["SkyboxLf"]
				L_147_.Sky.SkyboxRt = L_418_.sides["SkyboxRt"]
				L_147_.Sky.SkyboxUp = L_418_.sides["SkyboxUp"]
			end;
			local L_419_ = workspace:FindFirstChild("Map")
			if L_144_.Maps:FindFirstChild(L_418_.mapName) or L_419_ then
				if not L_419_ then
					createMap(L_416_arg1 or L_144_.Maps[L_418_.mapName].Value)
				end;
				repeat
					wait()
				until workspace:FindFirstChild("Map")
				L_168_ = workspace.Map:GetChildren()[1]
				repeat
					wait()
				until L_168_:FindFirstChild("TSpawns") and L_168_:FindFirstChild("Clips") and L_168_:FindFirstChild("Regen") and L_168_.Regen:FindFirstChild("Props") or L_419_;
				if not L_419_ then
					L_168_.Clips:Destroy()
					L_152_.CFrame = L_168_.TSpawns:GetChildren()[1].CFrame + Vector3.new(0, 5, 0)
				else
					L_150_.playing.Value = false
				end;
				L_160_ = true;
				L_205_ = {
					newKills = {},
					newRounds = {},
					newBombPlants = {}
				}
				L_154_ = {}
				for L_425_forvar0 = 1, # L_417_:GetChildren() - 1 do
					if L_417_:FindFirstChild(tostring(L_425_forvar0)) then
						table.insert(L_154_, L_145_:JSONDecode(L_417_[tostring(L_425_forvar0)].Value))
					end
				end;
				for L_426_forvar0, L_427_forvar1 in next, L_154_ do
					L_427_forvar1.delay = L_427_forvar1.delay + 0.01
				end;
				for L_428_forvar0 = 2, # L_154_, 1 do
					checkDifferences(L_428_forvar0, L_154_)
				end;
				for L_429_forvar0, L_430_forvar1 in next, L_178_:GetChildren() do
					if L_430_forvar1.Name == "kill" or L_430_forvar1.Name == "newRound" or L_430_forvar1.name == "bombPlant" then
						L_430_forvar1:Destroy()
					end
				end;
				warn("kills:")
				local L_421_ = 5;
				if # L_205_.newKills > 0 then
					for L_431_forvar0, L_432_forvar1 in next, L_205_.newKills do
						local L_433_ = L_144_.events.kill:Clone()
						L_433_.killer.Text = L_432_forvar1.killer;
						L_433_.killer.TextColor3 = Color3.new(L_432_forvar1.killercolor[1], L_432_forvar1.killercolor[2], L_432_forvar1.killercolor[3])
						L_433_.victim.Text = L_432_forvar1.victim;
						L_433_.victim.TextColor3 = Color3.new(L_432_forvar1.victimcolor[1], L_432_forvar1.victimcolor[2], L_432_forvar1.victimcolor[3])
						L_433_.time.Text = tickToSec(L_432_forvar1.tickNumber)
						L_433_.Parent = L_178_;
						L_433_.Position = UDim2.new(0, 30, 0, L_421_)
						L_433_.killtext.Position = L_433_.killer.Position + UDim2.new(0, L_433_.killer.TextBounds.X + 5, 0, 0)
						L_433_.victim.Position = L_433_.killtext.Position + UDim2.new(0, L_433_.killtext.TextBounds.X + 5, 0, 0)
						L_421_ = L_421_ + 35;
						L_433_.move.MouseButton1Click:Connect(function()
							L_167_ = math.clamp(L_432_forvar1.tickNumber - 15, 1, 387420489)
							playTick(L_167_)
						end)
						print(L_432_forvar1.killer, "killed", L_432_forvar1.victim, "tick:", L_432_forvar1.tickNumber)
					end
				else
					print("No kills found!")
				end;
				warn("rounds:")
				if # L_205_.newRounds > 0 then
					for L_434_forvar0, L_435_forvar1 in next, L_205_.newRounds do
						local L_436_ = L_144_.events.newRound:Clone()
						L_436_.text.Text = "Round " .. tostring(L_435_forvar1.round) .. " start"
						L_436_.time.Text = tickToSec(L_435_forvar1.tickNumber)
						L_436_.Parent = L_178_;
						L_436_.Position = UDim2.new(0, 30, 0, L_421_)
						L_421_ = L_421_ + 35;
						L_436_.move.MouseButton1Click:Connect(function()
							L_167_ = L_435_forvar1.tickNumber;
							playTick(L_435_forvar1.tickNumber)
						end)
						print("Round", L_435_forvar1.round, "started tick:", L_435_forvar1.tickNumber)
					end
				else
					print("No new rounds found!")
				end;
				warn("bombplants:")
				if # L_205_.newBombPlants > 0 then
					for L_437_forvar0, L_438_forvar1 in next, L_205_.newBombPlants do
						local L_439_ = L_144_.events.bombPlant:Clone()
						L_439_.time.Text = tickToSec(L_438_forvar1.tickNumber)
						L_439_.Parent = L_178_;
						L_439_.Position = UDim2.new(0, 30, 0, L_421_)
						L_421_ = L_421_ + 35;
						L_439_.move.MouseButton1Click:Connect(function()
							L_167_ = L_438_forvar1.tickNumber;
							playTick(L_438_forvar1.tickNumber)
						end)
						print("Bomb planted on round", L_438_forvar1.round, "tick:", L_438_forvar1.tickNumber)
					end
				else
					print("No bomb plants found!")
				end;
				local L_422_ = L_178_.size.ScrollingFrame;
				L_422_.CanvasSize = UDim2.new(0, 0, 0, 5 + (# L_422_:GetChildren() - 1) * 35)
				L_166_ = 0;
				for L_440_forvar0, L_441_forvar1 in next, L_168_.Regen.Props:GetChildren() do
					L_441_forvar1.Transparency = 0
				end;
				if L_168_.Regen:FindFirstChild("Glasses") then
					for L_442_forvar0, L_443_forvar1 in next, L_168_.Regen.Glasses:GetChildren() do
						L_443_forvar1.Transparency = 0.5
					end
				end;
				L_167_ = 0;
				local L_423_ = 0;
				L_186_ = # L_154_;
				local L_424_ = game:GetService("RunService")
				while L_167_ < # L_154_ do
					L_204_ = true;
					local L_444_ = L_150_.reverse.Value and -1 or 1;
					L_167_ = math.clamp(L_167_ + L_444_, 1, # L_154_)
					local L_445_, L_446_ = 387420489, nil;
					if L_150_.keyframing.Value and L_163_ == "freecam" and L_150_.playing.Value then
						if # L_189_ > 1 then
							for L_447_forvar0, L_448_forvar1 in next, L_189_ do
								if L_448_forvar1.tick < L_445_ then
									L_445_, L_446_ = L_448_forvar1.tick, L_448_forvar1.cf
								end
							end;
							if L_445_ > L_167_ then
								L_167_ = L_445_;
								L_152_.CFrame = L_446_
							end
						end
					end;
					CreateThread(function()
						playTick(L_167_)
					end)
					if L_150_.speed.Value >= 1 and L_150_.speed.Value < 20 then
						for L_449_forvar0 = 1, L_150_.speed.Value do
							wait(0.03)
						end
					else
						L_423_ = L_423_ + 1;
						if L_423_ == L_150_.speed.Value / 10 then
							wait(0.03)
							L_423_ = 0
						end
					end;
					L_174_.playing.Visible = false;
					if not L_150_.playing.Value then
						L_174_.playing.Visible = true;
						repeat
							wait()
						until L_150_.playing.Value or L_150_.stop.Value
					end;
					if L_150_.stop.Value then
						break
					end
				end
			end
		end;
		L_204_ = false;
		L_174_.player.pauseresume.Image = "rbxassetid://4458863290"
		if L_150_.stop.Value then
			L_189_ = {}
			if L_177_.flags["depth_of_field_map"] then
				L_177_.options["depth_of_field_map"].changeState(false)
			end;
			if L_177_.flags["greenscreen_map"] then
				L_177_.options["greenscreen_map"].changeState(false)
			end;
			for L_450_forvar0, L_451_forvar1 in next, L_178_:GetChildren() do
				if L_451_forvar1.Name == "kill" or L_451_forvar1.Name == "newRound" or L_451_forvar1.name == "bombPlant" then
					L_451_forvar1:Destroy()
				end
			end;
			L_160_ = false;
			L_147_.Blur.Enabled = true;
			L_174_.demolist.Visible = true;
			L_174_.player.Visible = false;
			L_174_.settings.Visible = false;
			L_174_.playing.Visible = false;
			L_174_.hud.Spectate.Visible = false;
			L_174_.hud.Vitals.Visible = false;
			L_174_.hud.AmmoGUI.Visible = false;
			L_174_.crosshair.Visible = false;
			if L_147_:FindFirstChild("Sky") then
				L_147_.Sky:Destroy()
			end;
			updateKeyframes()
			if workspace:FindFirstChild("Map") then
				workspace.Map:Destroy()
			end;
			for L_452_forvar0, L_453_forvar1 in next, workspace.demoModels:GetDescendants() do
				if not L_453_forvar1:IsA("Folder") then
					L_453_forvar1:Destroy()
				end
			end
		end
	end;
	workspace.start.Event:Connect(playDemo)
	workspace.changeAmount.Event:Connect(function(L_454_arg0)
		L_167_ = L_167_ + L_454_arg0;
		if not L_150_.playing.Value then
			playTick(L_167_)
		end
	end)
	workspace.changeTick.Event:Connect(function(L_455_arg0)
		if L_204_ then
			L_167_ = math.clamp(math.floor(L_186_ / 100 * L_455_arg0), 1, L_186_) - 1;
			ignoreSound = true;
			playTick(L_167_)
		end
	end)
	L_174_.player.pauseresume.MouseButton1Click:Connect(function()
		if not L_204_ then
			for L_456_forvar0, L_457_forvar1 in next, workspace.demoModels:GetDescendants() do
				if not L_457_forvar1:IsA("Folder") then
					L_457_forvar1:Destroy()
				end
			end;
			playDemo(L_203_)
		end
	end)
	L_174_.player.stop.MouseButton1Click:Connect(function()
		if not L_204_ then
			if not L_150_.playing.Value then
				L_160_ = false;
				L_147_.Blur.Enabled = true;
				L_174_.demolist.Visible = true;
				L_174_.player.Visible = false;
				L_174_.settings.Visible = false;
				L_147_.Sky.SkyboxBk = ""
				L_147_.Sky.SkyboxDn = ""
				L_147_.Sky.SkyboxFt = ""
				L_147_.Sky.SkyboxLf = ""
				L_147_.Sky.SkyboxRt = ""
				L_147_.Sky.SkyboxUp = ""
				workspace.Map:Destroy()
				for L_458_forvar0, L_459_forvar1 in next, workspace.demoModels:GetDescendants() do
					if not L_459_forvar1:IsA("Folder") then
						L_459_forvar1:Destroy()
					end
				end
			end
		end
	end)
	L_174_.player.reverse.MouseButton1Click:Connect(function()
		L_150_.reverse.Value = not L_150_.reverse.Value;
		L_174_.player.reverse.Text = "Reverse: " .. tostring(L_150_.reverse.Value)
	end)
	local L_206_ = 5;
	local L_207_ = Vector2.new(0, math.rad(-60))
	local L_208_ = {
		math.rad(-81),
		math.rad(20)
	}
	game:GetService("RunService").RenderStepped:Connect(function()
		if L_163_ == "follow" then
			if workspace.demoModels:FindFirstChild(L_162_) then
				if L_159_ and L_181_[L_162_] and L_183_[L_162_] ~= "" then
					L_152_.CameraType = "Scriptable"
					L_152_.CameraSubject = nil;
					local L_460_ = L_181_[L_162_]:split(" ")
					local L_461_ = TweenInfo.new(workspace.settings.tween.Value, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
					local L_462_ = L_148_:Create(L_152_, L_461_, {
						CFrame = CFrame.new(Vector3.new(L_460_[1], L_460_[2], L_460_[3]), Vector3.new(L_460_[4], L_460_[5], L_460_[6])) + L_200_
					})
					L_462_:Play()
					if L_164_ and (L_183_[L_162_] ~= L_164_.Name or not L_159_) then
						L_164_:Destroy()
						L_164_ = nil
					end;
					if not L_164_ then
						L_164_ = L_144_.Viewmodels["v_" .. L_183_[L_162_]]:Clone()
						L_164_.Name = L_183_[L_162_]
						L_164_.Parent = workspace.demoModels;
						L_164_["Right Arm"].Transparency = 1;
						local L_463_ = L_144_.Viewmodels[L_182_[L_162_]]:Clone()
						local L_464_ = Instance.new("Weld", L_463_["Right Arm"])
						L_464_.C0 = CFrame.Angles(math.rad(90), math.rad(0), math.rad(-90))
						L_464_.Part0 = L_463_["Right Arm"]
						L_464_.Part1 = L_164_["Right Arm"]
						if L_164_:FindFirstChild("Left Arm") then
							local L_467_ = Instance.new("Weld", L_463_["Left Arm"])
							L_467_.C0 = CFrame.Angles(math.rad(90), math.rad(0), math.rad(-90))
							L_164_["Left Arm"].Transparency = 1;
							L_467_.Part0 = L_463_["Left Arm"]
							L_467_.Part1 = L_164_["Left Arm"]
						else
							L_463_["Left Arm"]:Destroy()
						end;
						L_463_.Name = "arms"
						L_463_.Parent = L_164_;
						local L_465_ = L_144_.Skins:FindFirstChild(L_183_[L_162_]) and L_144_.Skins[L_183_[L_162_]]:FindFirstChild(L_184_[L_162_]) or nil;
						if L_465_ then
							for L_468_forvar0, L_469_forvar1 in next, L_164_:GetChildren() do
								if L_469_forvar1.ClassName == "MeshPart" then
									local L_470_ = L_465_:FindFirstChild(L_469_forvar1.Name, true)
									if L_470_ then
										L_469_forvar1.TextureID = L_470_.Value
									end
								end
							end
						end;
						local L_466_ = L_164_.Guy:LoadAnimation(L_164_.equip)
						if L_144_.Weapons:FindFirstChild(L_183_[L_162_]) then
							if L_144_.Weapons[L_183_[L_162_]].Model:FindFirstChild("Equip") then
								playAudio(L_144_.Weapons[L_183_[L_162_]].Model.Equip, workspace)
							else
								local L_471_ = L_144_.Weapons[L_183_[L_162_]].Model:FindFirstChild("bolt") or L_144_.Weapons[L_183_[L_162_]].Model:FindFirstChild("slide")
								local L_472_ = L_144_.Weapons[L_183_[L_162_]].Model:FindFirstChild("boltin") or L_144_.Weapons[L_183_[L_162_]].Model:FindFirstChild("slidein")
								if L_471_ and L_472_ then
									spawn(function()
										wait(0.1)
										playAudio(L_471_, workspace)
										wait(L_471_.TimeLength * 0.75 * L_157_[L_165_])
										playAudio(L_472_, workspace)
									end)
								end
							end
						end;
						L_466_:Play()
						L_466_:AdjustSpeed(L_156_[L_165_])
					end;
					L_164_:SetPrimaryPartCFrame((L_187_ and CFrame.new() or L_152_.CFrame * L_194_ * L_195_) * CFrame.new((L_177_.flags["viewmodel_x"] - 20) / 10, (L_177_.flags["viewmodel_y"] - 20) / 10, (L_177_.flags["viewmodel_z"] - 20) / 10))
				else
					L_152_.CameraType = "Follow"
					L_152_.CameraSubject = workspace.demoModels[L_162_].LowerTorso
				end
			end
		elseif L_163_ == "freecam" then
			L_152_.CameraType = "Scriptable"
			L_152_.CameraSubject = nil;
			if not (L_150_.keyframing.Value and L_150_.playing.Value) then
				local L_473_ = L_152_.CFrame.LookVector / 50 * L_177_.flags["camera_speed"]
				local L_474_ = Vector3.new()
				L_474_ = L_146_:IsKeyDown(Enum.KeyCode.W) and L_474_ + L_473_ or L_474_;
				L_474_ = L_146_:IsKeyDown(Enum.KeyCode.S) and L_474_ - L_473_ or L_474_;
				L_474_ = L_146_:IsKeyDown(Enum.KeyCode.D) and L_474_ + Vector3.new(- L_473_.Z, 0, L_473_.X) or L_474_;
				L_474_ = L_146_:IsKeyDown(Enum.KeyCode.A) and L_474_ - Vector3.new(- L_473_.Z, 0, L_473_.X) or L_474_;
				L_474_ = L_146_:IsKeyDown(Enum.KeyCode.Q) and L_474_ + Vector3.new(0, L_473_.Y, 0) or L_474_;
				L_474_ = L_146_:IsKeyDown(Enum.KeyCode.E) and L_474_ - Vector3.new(0, L_473_.Y, 0) or L_474_;
				L_474_ = L_474_ * 1.25;
				local L_475_ = L_146_:GetMouseDelta() / 30;
				L_207_ = L_207_ + L_475_ * math.rad(15)
				local L_476_ = CFrame.Angles(0, - L_207_.X, 0) * CFrame.Angles(- L_207_.Y, 0, 0)
				L_152_.CFrame = L_476_ + L_152_.CFrame.p + L_474_ + L_476_ * Vector3.new(0, 0, 0)
			end;
			if L_164_ then
				L_164_:Destroy()
				L_164_ = nil
			end
		end;
		L_173_.Saturation = L_177_.flags["world_saturation"] and L_177_.flags["saturation_value"] / 50 or 0;
		if L_177_.flags["world_gradient"] then
			L_147_.Ambient = L_177_.flags["gradient_color"]
			L_147_.OutdoorAmbient = L_177_.flags["outdoor_gradient_color"]
		else
			L_147_.Ambient = L_171_;
			L_147_.OutdoorAmbient = L_172_
		end;
		L_146_.MouseBehavior = L_160_ and not L_174_.player.Visible and Enum.MouseBehavior.LockCenter or Enum.MouseBehavior.Default;
		L_146_.MouseIconEnabled = L_174_.demolist.Visible or L_174_.player.Visible;
		game.StarterGui:SetCoreGuiEnabled("PlayerList", false)
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
		game.CoreGui.ThemeProvider.Enabled = false;
		game.CoreGui.TopBarApp.Enabled = false
	end)
	game:GetService("RunService").Stepped:Connect(function()
		for L_477_forvar0, L_478_forvar1 in next, workspace.demoModels:GetChildren() do
			if L_478_forvar1:IsA("Model") then
				for L_479_forvar0, L_480_forvar1 in next, L_478_forvar1:GetChildren() do
					if L_480_forvar1:IsA("BasePart") then
						L_480_forvar1.CanCollide = false
					end
				end
			end
		end
	end)
	game:GetService("UserInputService").InputBegan:Connect(function(L_481_arg0)
		if L_481_arg0.UserInputType == Enum.UserInputType.MouseButton1 then
			if L_170_.Target and L_170_.Target.Parent.Parent == workspace.demoModels and L_170_.Target.Parent:FindFirstChild("FakeHead") then
				L_162_ = L_170_.Target.Parent.Name;
				L_163_ = "follow"
				if not L_150_.playing.Value then
					playTick(L_167_)
				end
			end
		elseif L_481_arg0.KeyCode == L_177_.flags["toggle_ui"] and L_160_ then
			L_174_.player.Visible = not L_174_.player.Visible;
			L_174_.settings.Visible = L_174_.player.Visible;
			L_177_.scrolling = false;
			L_177_.colorpicking = false;
			for L_482_forvar0, L_483_forvar1 in next, L_177_.toInvis do
				L_483_forvar1.Visible = false
			end
		elseif L_481_arg0.KeyCode == L_177_.flags["toggle_spec_mode"] then
			L_163_ = L_163_ == "follow" and "freecam" or L_163_;
			if not L_150_.playing.Value then
				playTick(L_167_)
			end
		elseif L_481_arg0.KeyCode == L_177_.flags["pause_resume"] then
			if not L_204_ and L_160_ then
				for L_484_forvar0, L_485_forvar1 in next, workspace.demoModels:GetDescendants() do
					if not L_485_forvar1:IsA("Folder") then
						L_485_forvar1:Destroy()
					end
				end;
				playDemo(L_203_)
			elseif L_160_ then
				L_150_.playing.Value = not L_150_.playing.Value
			end
		elseif L_481_arg0.KeyCode == Enum.KeyCode.Left then
			L_167_ = L_167_ - 1;
			if not L_150_.playing.Value then
				playTick(L_167_)
			end
		elseif L_481_arg0.KeyCode == Enum.KeyCode.Right then
			L_167_ = L_167_ + 1;
			if not L_150_.playing.Value then
				playTick(L_167_)
			end
		elseif L_481_arg0.KeyCode == L_177_.flags["toggle_firstperson"] then
			L_159_ = not L_159_;
			if not L_150_.playing.Value then
				playTick(L_167_)
			end
		elseif L_481_arg0.KeyCode == L_177_.flags["increase_playback_speed"] then
			L_165_ = math.clamp(L_165_ + 1, 1, 5)
			workspace.settings.speed.Value = L_155_[L_165_]
		elseif L_481_arg0.KeyCode == L_177_.flags["decrease_playback_speed"] then
			L_165_ = math.clamp(L_165_ - 1, 1, 5)
			workspace.settings.speed.Value = L_155_[L_165_]
		elseif L_481_arg0.KeyCode == Enum.KeyCode.Z then
		elseif L_481_arg0.KeyCode == Enum.KeyCode.F then
		end
	end)
	L_152_:GetPropertyChangedSignal("CFrame"):Connect(function()
		if L_164_ and L_159_ and L_164_.PrimaryPart then
			L_164_:SetPrimaryPartCFrame((L_187_ and CFrame.new() or L_152_.CFrame * L_194_ * L_195_) * CFrame.new((L_177_.flags["viewmodel_x"] - 20) / 10, (L_177_.flags["viewmodel_y"] - 20) / 10, (L_177_.flags["viewmodel_z"] - 20) / 10))
		end
	end)
	function draggable(L_486_arg0)
		local L_487_ = L_146_;
		local L_488_;
		local L_489_;
		local L_490_;
		local L_491_;
		local function L_492_func(L_493_arg0)
			if not L_177_.colorpicking then
				local L_494_ = L_493_arg0.Position - L_490_;
				L_486_arg0.Position = UDim2.new(L_491_.X.Scale, L_491_.X.Offset + L_494_.X, L_491_.Y.Scale, L_491_.Y.Offset + L_494_.Y)
			end
		end;
		L_486_arg0.InputBegan:Connect(function(L_495_arg0)
			if L_495_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_495_arg0.UserInputType == Enum.UserInputType.Touch then
				L_488_ = true;
				L_490_ = L_495_arg0.Position;
				L_491_ = L_486_arg0.Position;
				L_495_arg0.Changed:Connect(function()
					if L_495_arg0.UserInputState == Enum.UserInputState.End then
						L_488_ = false
					end
				end)
			end
		end)
		L_486_arg0.InputChanged:Connect(function(L_496_arg0)
			if L_496_arg0.UserInputType == Enum.UserInputType.MouseMovement or L_496_arg0.UserInputType == Enum.UserInputType.Touch then
				L_489_ = L_496_arg0
			end
		end)
		L_487_.InputChanged:Connect(function(L_497_arg0)
			if L_497_arg0 == L_489_ and L_488_ then
				L_492_func(L_497_arg0)
			end
		end)
	end;
	draggable(L_175_.settings)
	function L_177_:addTab(L_498_arg0)
		local L_499_ = L_176_.tab:Clone()
		local L_500_ = L_176_.tabbuttons.button:Clone()
		table.insert(L_177_.tabs, L_499_)
		L_499_.Parent = L_176_;
		L_499_.Visible = false;
		table.insert(L_177_.tabbuttons, L_500_)
		L_500_.Parent = L_176_.tabbuttons;
		L_500_.Modal = true;
		L_500_.Visible = true;
		L_500_.Text = L_498_arg0;
		L_500_.MouseButton1Click:Connect(function()
			for L_505_forvar0, L_506_forvar1 in next, L_177_.tabs do
				L_506_forvar1.Visible = L_506_forvar1 == L_499_
			end;
			for L_507_forvar0, L_508_forvar1 in next, L_177_.toInvis do
				L_508_forvar1.Visible = false
			end
		end)
		for L_509_forvar0, L_510_forvar1 in next, L_177_.tabbuttons do
			L_510_forvar1.Size = UDim2.new(1 / # L_177_.tabbuttons, 0, 1, 0)
		end;
		local L_501_ = {}
		local L_502_ = 0;
		local L_503_ = 0;
		local L_504_ = 2000;
		function L_501_:createGroup(L_511_arg0)
			local L_512_ = Instance.new("Frame")
			local L_513_ = Instance.new("Frame")
			local L_514_ = Instance.new("UIListLayout")
			L_502_ = L_502_ - 1;
			L_512_.Parent = L_499_[L_511_arg0 == 0 and "left" or "right"]
			L_512_.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			L_512_.BorderSizePixel = 0;
			L_512_.Size = UDim2.new(1, -5, 0, 10)
			L_512_.ZIndex = L_502_;
			L_512_.Parent.UIListLayout.Padding = UDim.new(0, 5)
			L_513_.Parent = L_512_;
			L_513_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_513_.BackgroundTransparency = 1;
			L_513_.Position = UDim2.new(0, 5, 0, 7)
			L_513_.Size = UDim2.new(1, 0, 1, 0)
			L_514_.Parent = L_513_;
			L_514_.Padding = UDim.new(0, 5)
			L_514_.SortOrder = "LayoutOrder"
			local L_515_ = {}
			function L_515_:addToggle(L_516_arg0)
				if not L_516_arg0.flag and L_516_arg0.text then
					L_516_arg0.flag = L_516_arg0.text
				end;
				if not L_516_arg0.flag then
					return warn("âš ï¸ incorrect arguments âš ï¸")
				end;
				L_512_.Size = L_512_.Size + UDim2.new(0, 0, 0, 23)
				local L_517_ = Instance.new("TextButton")
				local L_518_ = Instance.new("Frame")
				local L_519_ = Instance.new("TextLabel")
				L_503_ = L_503_ - 1;
				L_517_.Parent = L_513_;
				L_517_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_517_.BackgroundTransparency = 1;
				L_517_.Size = UDim2.new(1, 0, 0, 18)
				L_517_.Text = ""
				L_517_.TextColor3 = Color3.fromRGB(0, 0, 0)
				L_517_.TextSize = 14;
				L_517_.ZIndex = L_503_;
				L_518_.Parent = L_517_;
				L_518_.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				L_518_.BorderColor3 = Color3.fromRGB(50, 50, 50)
				L_518_.Size = UDim2.new(0, 18, 0, 18)
				L_519_.Parent = L_518_;
				L_519_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_519_.BorderSizePixel = 0;
				L_519_.Position = UDim2.new(1, 10, 0, 0)
				L_519_.Size = UDim2.new(0, 0, 1, 0)
				L_519_.Font = "SourceSans"
				L_519_.Text = L_516_arg0.text or L_516_arg0.flag;
				L_519_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_519_.TextSize = 16;
				L_519_.TextXAlignment = "Left"
				local L_520_ = false;
				local function L_521_func(L_522_arg0)
					L_520_ = L_522_arg0;
					L_518_.BackgroundColor3 = L_520_ and L_177_.libColor or Color3.fromRGB(20, 20, 20)
					L_177_.flags[L_516_arg0.flag] = L_520_;
					if L_516_arg0.callback then
						L_516_arg0.callback(L_520_)
					end
				end;
				L_517_.MouseButton1Click:Connect(function()
					L_520_ = not L_520_;
					L_518_.BackgroundColor3 = L_520_ and L_177_.libColor or Color3.fromRGB(20, 20, 20)
					L_177_.flags[L_516_arg0.flag] = L_520_;
					if L_516_arg0.callback then
						L_516_arg0.callback(L_520_)
					end
				end)
				L_177_.flags[L_516_arg0.flag] = false;
				L_177_.options[L_516_arg0.flag] = {
					type = "toggle",
					changeState = L_521_func,
					skipflag = L_516_arg0.skipflag,
					oldargs = L_516_arg0
				}
				if L_516_arg0.state then
					L_521_func(L_516_arg0.state)
				end
			end;
			function L_515_:addButton(L_523_arg0)
				if not L_523_arg0.callback or not L_523_arg0.text then
					return warn("âš ï¸ incorrect arguments âš ï¸")
				end;
				L_512_.Size = L_512_.Size + UDim2.new(0, 0, 0, 23)
				local L_524_ = Instance.new("TextButton")
				L_524_.Parent = L_513_;
				L_524_.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				L_524_.BorderColor3 = Color3.fromRGB(50, 50, 50)
				L_524_.Size = UDim2.new(1, -10, 0, 18)
				L_524_.AutoButtonColor = false;
				L_524_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_524_.Font = "SourceSans"
				L_524_.TextSize = 16;
				L_524_.Text = L_523_arg0.text;
				L_524_.MouseButton1Click:Connect(function()
					if not L_177_.colorpicking then
						L_523_arg0.callback()
					end
				end)
			end;
			function L_515_:addSlider(L_525_arg0)
				if not L_525_arg0.flag or not L_525_arg0.max then
					return warn("âš ï¸ incorrect arguments âš ï¸")
				end;
				L_512_.Size = L_512_.Size + UDim2.new(0, 0, 0, 41)
				local L_526_ = Instance.new("Frame")
				local L_527_ = Instance.new("TextButton")
				local L_528_ = Instance.new("TextLabel")
				local L_529_ = Instance.new("Frame")
				local L_530_ = Instance.new("TextLabel")
				L_526_.Parent = L_513_;
				L_526_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_526_.BackgroundTransparency = 1;
				L_526_.Size = UDim2.new(1, 0, 0, 36)
				L_527_.Parent = L_526_;
				L_527_.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				L_527_.BorderColor3 = Color3.fromRGB(50, 50, 50)
				L_527_.Position = UDim2.new(0, 0, 0, 18)
				L_527_.Size = UDim2.new(1, -10, 0, 18)
				L_527_.AutoButtonColor = false;
				L_527_.Font = Enum.Font.SourceSans;
				L_527_.Text = ""
				L_527_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_527_.TextSize = 14;
				L_528_.Parent = L_527_;
				L_528_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_528_.BackgroundTransparency = 1;
				L_528_.BorderSizePixel = 0;
				L_528_.Position = UDim2.new(0, 0, -1, 0)
				L_528_.Size = UDim2.new(1, 0, 1, 0)
				L_528_.Font = Enum.Font.SourceSans;
				L_528_.Text = L_525_arg0.text or L_525_arg0.flag;
				L_528_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_528_.TextSize = 16;
				L_528_.TextXAlignment = "Left"
				L_528_.TextYAlignment = "Top"
				L_529_.Parent = L_527_;
				L_529_.BackgroundColor3 = L_177_.libColor;
				L_529_.BorderSizePixel = 0;
				L_529_.Size = UDim2.new(0, 0, 1, 0)
				L_529_.ZIndex = 0;
				L_530_.Parent = L_527_;
				L_530_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_530_.BackgroundTransparency = 1;
				L_530_.Size = UDim2.new(1, 0, 1, 0)
				L_530_.Font = Enum.Font.SourceSans;
				L_530_.Text = "0"
				L_530_.TextColor3 = Color3.fromRGB(150, 150, 150)
				L_530_.TextSize = 16;
				local L_531_ = false;
				local L_532_ = false;
				local L_533_ = 0;
				local function L_534_func(L_536_arg0)
					if L_536_arg0 ~= 0 then
						L_529_:TweenSize(UDim2.new(L_536_arg0 / L_525_arg0.max, 0, 1, 0), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.01)
					else
						L_529_:TweenSize(UDim2.new(0, 1, 1, 0), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.01)
					end;
					L_530_.Text = L_536_arg0;
					L_177_.flags[L_525_arg0.flag] = L_536_arg0;
					if L_525_arg0.callback then
						L_525_arg0.callback(L_536_arg0)
					end
				end;
				local function L_535_func()
					if L_532_ or L_177_.scrolling or not L_499_.Visible or L_177_.colorpicking then
						return
					end;
					while L_146_:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) and L_175_.Enabled do
						L_169_.RenderStepped:Wait()
						L_177_.scrolling = true;
						L_530_.TextColor3 = Color3.fromRGB(255, 255, 255)
						L_532_ = true;
						local L_537_ = L_525_arg0.min + (L_170_.X - L_527_.AbsolutePosition.X) / L_527_.AbsoluteSize.X * (L_525_arg0.max - L_525_arg0.min)
						if L_537_ < 0 then
							L_537_ = 0
						end;
						if L_537_ > L_525_arg0.max then
							L_537_ = L_525_arg0.max
						end;
						L_534_func(math.floor(L_537_))
					end;
					if L_532_ and not L_531_ then
						L_530_.TextColor3 = Color3.fromRGB(150, 150, 150)
					end;
					if not L_175_.Enabled then
						L_531_ = false
					end;
					L_532_ = false;
					L_177_.scrolling = false
				end;
				L_527_.MouseEnter:connect(function()
					if L_532_ or L_531_ then
						return
					end;
					L_531_ = true;
					L_530_.TextColor3 = Color3.fromRGB(255, 255, 255)
					while L_531_ do
						wait()
						L_535_func()
					end
				end)
				L_527_.MouseLeave:connect(function()
					L_531_ = false;
					L_530_.TextColor3 = Color3.fromRGB(150, 150, 150)
				end)
				if L_525_arg0.value then
					L_534_func(L_525_arg0.value)
				end;
				L_177_.flags[L_525_arg0.flag] = 0;
				L_177_.options[L_525_arg0.flag] = {
					type = "slider",
					changeState = L_534_func,
					skipflag = L_525_arg0.skipflag,
					oldargs = L_525_arg0
				}
				L_534_func(L_525_arg0.value or 0)
			end;
			function L_515_:addDivider()
				L_512_.Size = L_512_.Size + UDim2.new(0, 0, 0, 3)
				local L_538_ = Instance.new("Frame")
				L_538_.Parent = L_513_;
				L_538_.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				L_538_.Size = UDim2.new(1, -10, 0, 1)
				L_538_.BorderSizePixel = 0;
				L_538_.Name = "dontchange"
			end;
			function L_515_:addTextbox(L_539_arg0)
				if not L_539_arg0.flag then
					return warn("âš ï¸ incorrect arguments âš ï¸")
				end;
				local L_540_ = Instance.new("TextBox")
				L_512_.Size = L_512_.Size + UDim2.new(0, 0, 0, 23)
				L_540_:GetPropertyChangedSignal('Text'):Connect(function(L_541_arg0)
					L_177_.flags[L_539_arg0.flag] = L_540_.Text
				end)
				L_540_.Parent = L_513_;
				L_540_.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				L_540_.BorderColor3 = Color3.fromRGB(50, 50, 50)
				L_540_.Size = UDim2.new(1, -10, 0, 18)
				L_540_.ClearTextOnFocus = false;
				L_540_.Font = Enum.Font.SourceSans;
				L_540_.PlaceholderColor3 = Color3.fromRGB(130, 130, 130)
				L_540_.PlaceholderText = L_539_arg0.text or ""
				L_540_.Text = ""
				L_540_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_540_.TextSize = 16;
				L_177_.flags[L_539_arg0.flag] = ""
				L_177_.options[L_539_arg0.flag] = {
					type = "textbox",
					changeState = function(L_542_arg0)
						L_540_.Text = L_542_arg0
					end,
					skipflag = L_539_arg0.skipflag,
					oldargs = L_539_arg0
				}
			end;
			function L_515_:addKeybind(L_543_arg0)
				if not L_543_arg0.flag then
					return warn("âš ï¸ incorrect arguments âš ï¸")
				end;
				L_512_.Size = L_512_.Size + UDim2.new(0, 0, 0, 23)
				local L_544_ = Instance.new("TextButton")
				local L_545_ = Instance.new("TextLabel")
				local L_546_ = Instance.new("TextLabel")
				local L_547_ = false;
				L_544_.Parent = L_513_;
				L_544_.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				L_544_.BorderColor3 = Color3.fromRGB(50, 50, 50)
				L_544_.Size = UDim2.new(0.55, 0, 0, 18)
				L_544_.AutoButtonColor = false;
				L_544_.TextColor3 = Color3.new(1, 1, 1)
				L_544_.Font = "SourceSans"
				L_544_.TextSize = 16;
				L_544_.Text = ""
				L_546_.Parent = L_544_;
				L_546_.BackgroundTransparency = 1;
				L_546_.Position = UDim2.new(0, 0, 0, 0)
				L_546_.Size = UDim2.new(1, 0, 1, 0)
				L_546_.Font = "SourceSans"
				L_546_.Text = ""
				L_546_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_546_.TextSize = 16;
				L_546_.TextXAlignment = "Left"
				L_546_.ClipsDescendants = true;
				L_546_.TextXAlignment = "Center"
				L_545_.Parent = L_544_;
				L_545_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_545_.BorderSizePixel = 0;
				L_545_.Position = UDim2.new(1, 10, 0, 0)
				L_545_.Size = UDim2.new(0, 0, 1, 0)
				L_545_.Font = "SourceSans"
				L_545_.Text = L_543_arg0.text or L_543_arg0.flag;
				L_545_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_545_.TextSize = 16;
				L_545_.TextXAlignment = "Left"
				function updateValue(L_548_arg0)
					L_177_.flags[L_543_arg0.flag] = L_548_arg0;
					L_546_.Text = string.split(tostring(L_548_arg0), ".")[3]:gsub("MouseButton", "Mouse")
				end;
				L_146_.InputBegan:Connect(function(L_549_arg0)
					local L_550_ = L_549_arg0.KeyCode == Enum.KeyCode.Unknown and L_549_arg0.UserInputType or L_549_arg0.KeyCode;
					if L_547_ then
						if not table.find(L_177_.blacklisted, L_550_) then
							L_547_ = false;
							L_177_.flags[L_543_arg0.flag] = L_550_;
							L_546_.Text = string.split(tostring(L_550_), ".")[3]:gsub("MouseButton", "Mouse")
						end
					end;
					if not L_547_ and L_550_ == L_177_.flags[L_543_arg0.flag] and L_543_arg0.callback then
						L_543_arg0.callback()
					end
				end)
				L_544_.MouseButton1Click:Connect(function()
					L_177_.flags[L_543_arg0.flag] = Enum.KeyCode.Unknown;
					L_546_.Text = "..."
					L_547_ = true
				end)
				L_177_.flags[L_543_arg0.flag] = Enum.KeyCode.Unknown;
				L_177_.options[L_543_arg0.flag] = {
					type = "keybind",
					changeState = updateValue,
					skipflag = L_543_arg0.skipflag,
					oldargs = L_543_arg0
				}
				updateValue(L_543_arg0.key or Enum.KeyCode.Unknown)
			end;
			function L_515_:addList(L_551_arg0)
				if not L_551_arg0.flag or not L_551_arg0.values then
					return warn("âš ï¸ incorrect arguments âš ï¸")
				end;
				L_512_.Size = L_512_.Size + UDim2.new(0, 0, 0, 23)
				L_177_.multiZindex = L_177_.multiZindex - 1;
				local L_552_ = Instance.new("TextButton")
				local L_553_ = Instance.new("Frame")
				local L_554_ = Instance.new("UIListLayout")
				local L_555_ = Instance.new("TextLabel")
				local L_556_ = Instance.new("TextLabel")
				L_554_.Parent = L_553_;
				L_554_.Padding = UDim.new(0, 0)
				L_554_.SortOrder = "LayoutOrder"
				L_552_.Parent = L_513_;
				L_552_.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				L_552_.BorderColor3 = Color3.fromRGB(50, 50, 50)
				L_552_.Size = UDim2.new(0.65, 0, 0, 18)
				L_552_.AutoButtonColor = false;
				L_552_.TextColor3 = Color3.new(1, 1, 1)
				L_552_.Font = "SourceSans"
				L_552_.TextSize = 16;
				L_552_.Text = ""
				L_552_.ZIndex = L_177_.multiZindex;
				L_556_.Parent = L_552_;
				L_556_.BackgroundTransparency = 1;
				L_556_.Position = UDim2.new(0, 0, 0, 0)
				L_556_.Size = UDim2.new(1, 0, 1, 0)
				L_556_.Font = "SourceSans"
				L_556_.Text = L_551_arg0.multiselect and "..." or ""
				L_556_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_556_.TextSize = 16;
				L_556_.TextXAlignment = "Left"
				L_556_.ClipsDescendants = true;
				L_556_.TextXAlignment = "Center"
				L_553_.ZIndex = L_177_.multiZindex;
				L_553_.Visible = false;
				L_553_.Parent = L_552_;
				L_553_.Transparency = 0;
				L_553_.Size = UDim2.new(1, 0, 0, # L_551_arg0.values * 18)
				L_553_.BorderColor3 = Color3.fromRGB(50, 50, 50)
				L_553_.Position = UDim2.new(0, 0, 1, 0)
				L_555_.Parent = L_552_;
				L_555_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_555_.BorderSizePixel = 0;
				L_555_.Position = UDim2.new(1, 10, 0, 0)
				L_555_.Size = UDim2.new(0, 0, 1, 0)
				L_555_.Font = "SourceSans"
				L_555_.Text = L_551_arg0.text or L_551_arg0.flag;
				L_555_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_555_.TextSize = 16;
				L_555_.TextXAlignment = "Left"
				local function L_557_func(L_558_arg0)
					if L_558_arg0 == nil then
						L_556_.Text = ""
						return
					end;
					if L_551_arg0.multiselect then
						if type(L_558_arg0) == "string" then
							if not table.find(L_177_.options[L_551_arg0.flag].values, L_558_arg0) then
								return
							end;
							if table.find(L_177_.flags[L_551_arg0.flag], L_558_arg0) then
								for L_560_forvar0, L_561_forvar1 in pairs(L_177_.flags[L_551_arg0.flag]) do
									if L_561_forvar1 == L_558_arg0 then
										table.remove(L_177_.flags[L_551_arg0.flag], L_560_forvar0)
									end
								end
							else
								table.insert(L_177_.flags[L_551_arg0.flag], L_558_arg0)
							end
						else
							L_177_.flags[L_551_arg0.flag] = L_558_arg0
						end;
						local L_559_ = ""
						for L_562_forvar0, L_563_forvar1 in pairs(L_177_.flags[L_551_arg0.flag]) do
							local L_564_ = L_562_forvar0 ~= # L_177_.flags[L_551_arg0.flag] and "," or ""
							L_559_ = L_559_ .. " " .. L_563_forvar1 .. L_564_
						end;
						if L_559_ == "" then
							L_559_ = "..."
						end;
						for L_565_forvar0, L_566_forvar1 in next, L_553_:GetChildren() do
							if L_566_forvar1.ClassName ~= "TextButton" then
								continue;
							end;
							L_566_forvar1.TextColor3 = Color3.new(0.65, 0.65, 0.65)
							for L_567_forvar0, L_568_forvar1 in next, L_177_.flags[L_551_arg0.flag] do
								if L_566_forvar1.Name == L_568_forvar1 then
									L_566_forvar1.TextColor3 = Color3.new(1, 1, 1)
								end
							end
						end;
						L_556_.Text = L_559_;
						if L_551_arg0.callback then
							L_551_arg0.callback(L_177_.flags[L_551_arg0.flag])
						end
					else
						if not table.find(L_177_.options[L_551_arg0.flag].values, L_558_arg0) then
							L_558_arg0 = L_177_.options[L_551_arg0.flag].values[1]
						end;
						L_177_.flags[L_551_arg0.flag] = L_558_arg0;
						for L_569_forvar0, L_570_forvar1 in next, L_553_:GetChildren() do
							if L_570_forvar1.ClassName ~= "TextButton" then
								continue;
							end;
							L_570_forvar1.TextColor3 = Color3.new(0.65, 0.65, 0.65)
							if L_570_forvar1.Name == L_177_.flags[L_551_arg0.flag] then
								L_570_forvar1.TextColor3 = Color3.new(1, 1, 1)
							end
						end;
						L_553_.Visible = false;
						if L_177_.flags[L_551_arg0.flag] then
							L_556_.Text = L_177_.flags[L_551_arg0.flag]
							if L_551_arg0.callback then
								L_551_arg0.callback(L_177_.flags[L_551_arg0.flag])
							end
						end
					end
				end;
				function refresh(L_571_arg0)
					for L_572_forvar0, L_573_forvar1 in next, L_553_:GetChildren() do
						if L_573_forvar1.ClassName == "TextButton" then
							L_573_forvar1:Destroy()
						end
					end;
					for L_574_forvar0, L_575_forvar1 in pairs(L_571_arg0) do
						local L_576_ = Instance.new("TextButton")
						L_576_.ZIndex = 1000;
						L_576_.Visible = true;
						L_576_.Parent = L_553_;
						L_576_.Transparency = 0;
						L_576_.Size = UDim2.new(1, 0, 0, 18)
						L_576_.Position = UDim2.new(0, 0, 0, 0)
						L_576_.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
						L_576_.TextColor3 = L_551_arg0.multiselect and Color3.new(0.65, 0.65, 0.65) or Color3.new(1, 1, 1)
						L_576_.BorderSizePixel = 0;
						L_576_.AutoButtonColor = false;
						L_576_.TextSize = 16;
						L_576_.Font = "SourceSans"
						L_576_.Text = L_575_forvar1;
						L_576_.Name = L_575_forvar1;
						L_576_.MouseButton1Click:Connect(function()
							L_557_func(L_575_forvar1)
						end)
					end;
					L_177_.options[L_551_arg0.flag].values = L_571_arg0;
					L_557_func(table.find(L_177_.options[L_551_arg0.flag].values, L_177_.flags[L_551_arg0.flag]) and L_177_.flags[L_551_arg0.flag] or L_177_.options[L_551_arg0.flag].values[1])
				end;
				L_552_.MouseButton1Click:Connect(function()
					if not L_177_.colorpicking then
						L_553_.Visible = not L_553_.Visible
					end
				end)
				table.insert(L_177_.toInvis, L_553_)
				L_177_.flags[L_551_arg0.flag] = L_551_arg0.multiselect and {} or ""
				L_177_.options[L_551_arg0.flag] = {
					type = "list",
					changeState = L_557_func,
					values = L_551_arg0.values,
					refresh = refresh,
					skipflag = L_551_arg0.skipflag,
					oldargs = L_551_arg0
				}
				refresh(L_551_arg0.values)
				L_557_func(L_551_arg0.value or not L_551_arg0.multiselect and L_551_arg0.values[1] or "abcdefghijklmnopqrstuwvxyz")
			end;
			function L_515_:addColorpicker(L_577_arg0)
				if not L_577_arg0.flag then
					return warn("âš ï¸ incorrect arguments âš ï¸")
				end;
				L_512_.Size = L_512_.Size + UDim2.new(0, 0, 0, 20)
				L_177_.multiZindex = L_177_.multiZindex - 1;
				L_503_ = L_503_ - 1;
				L_504_ = L_504_ - 1;
				local L_578_ = Instance.new("TextButton")
				local L_579_ = Instance.new("Frame")
				local L_580_ = Instance.new("TextLabel")
				local L_581_ = Instance.new("ImageLabel")
				local L_582_ = Instance.new("ImageLabel")
				L_579_.ZIndex = L_177_.multiZindex;
				L_579_.Visible = false;
				L_579_.Parent = L_578_;
				L_579_.Transparency = 0;
				L_579_.Size = UDim2.new(0, 120, 0, 100)
				L_579_.Position = UDim2.new(1, 0, 1, 0)
				L_581_.Parent = L_579_;
				L_581_.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
				L_581_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_581_.Size = UDim2.new(0, 100, 0, 100)
				L_581_.Image = "rbxassetid://2615689005"
				L_581_.Name = "dontchange"
				L_582_.Parent = L_579_;
				L_582_.AnchorPoint = Vector2.new(1, 0)
				L_582_.BackgroundColor3 = Color3.fromRGB(248, 248, 248)
				L_582_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_582_.Position = UDim2.new(1, 0, 0, 0)
				L_582_.Size = UDim2.new(0, 20, 0, 100)
				L_582_.Image = "rbxassetid://2615692420"
				L_578_.Parent = L_513_;
				L_578_.BackgroundColor3 = L_577_arg0.color or Color3.new(1, 1, 1)
				L_578_.BorderColor3 = Color3.fromRGB(50, 50, 50)
				L_578_.Size = UDim2.new(0, 35, 0, 15)
				L_578_.AutoButtonColor = false;
				L_578_.ZIndex = L_577_arg0.ontop and L_504_ or L_503_;
				L_578_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_578_.Font = "SourceSans"
				L_578_.TextSize = 16;
				L_578_.Text = ""
				L_578_.Name = "dontchange"
				L_580_.Parent = L_578_;
				L_580_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_580_.BorderSizePixel = 0;
				L_580_.Position = UDim2.new(1, 10, 0, 0)
				L_580_.Size = UDim2.new(0, 0, 1, 0)
				L_580_.Font = "SourceSans"
				L_580_.Text = L_577_arg0.text or L_577_arg0.flag;
				L_580_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_580_.TextSize = 16;
				L_580_.TextXAlignment = "Left"
				L_578_.MouseButton1Click:Connect(function()
					L_579_.Visible = not L_579_.Visible
				end)
				local function L_583_func(L_593_arg0, L_594_arg1)
					if typeof(L_593_arg0) == "table" then
						L_593_arg0 = L_594_arg1
					end;
					L_578_.BackgroundColor3 = L_593_arg0;
					L_177_.flags[L_577_arg0.flag] = L_593_arg0;
					if L_577_arg0.callback then
						L_577_arg0.callback(L_593_arg0)
					end
				end;
				local L_584_, L_585_ = Color3.new(1, 1, 1), Color3.new(0, 0, 0)
				local L_586_ = {
					Color3.new(1, 0, 0),
					Color3.new(1, 1, 0),
					Color3.new(0, 1, 0),
					Color3.new(0, 1, 1),
					Color3.new(0, 0, 1),
					Color3.new(1, 0, 1),
					Color3.new(1, 0, 0)
				}
				local L_587_ = game:GetService("RunService").Heartbeat;
				local L_588_, L_589_, L_590_ = 0, 0, 0;
				local L_591_, L_592_ = 0, 0;
				L_582_.MouseEnter:Connect(function()
					local L_595_ = L_582_.InputBegan:connect(function(L_597_arg0)
						if L_597_arg0.UserInputType == Enum.UserInputType.MouseButton1 then
							while L_587_:wait() and L_146_:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
								L_177_.colorpicking = true;
								local L_598_ = (L_590_ - L_582_.AbsolutePosition.Y - 36) / L_582_.AbsoluteSize.Y;
								local L_599_ = math.max(1, math.min(7, math.floor((L_598_ * 7 + 0.5) * 100) / 100))
								local L_600_ = L_586_[math.floor(L_599_)]
								local L_601_ = L_586_[math.ceil(L_599_)]
								local L_602_ = L_584_:lerp(L_581_.BackgroundColor3, L_591_):lerp(L_585_, L_592_)
								L_581_.BackgroundColor3 = L_600_:lerp(L_601_, L_599_ - math.floor(L_599_)) or Color3.new(0, 0, 0)
								L_583_func(L_602_)
							end;
							L_177_.colorpicking = false
						end
					end)
					local L_596_;
					L_596_ = L_582_.MouseLeave:connect(function()
						L_595_:disconnect()
						L_596_:disconnect()
					end)
				end)
				L_581_.MouseEnter:Connect(function()
					local L_603_ = L_581_.InputBegan:connect(function(L_605_arg0)
						if L_605_arg0.UserInputType == Enum.UserInputType.MouseButton1 then
							while L_587_:wait() and L_146_:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
								L_177_.colorpicking = true;
								local L_606_ = (L_588_ - L_581_.AbsolutePosition.X) / L_581_.AbsoluteSize.X;
								local L_607_ = (L_589_ - L_581_.AbsolutePosition.Y - 36) / L_581_.AbsoluteSize.Y;
								local L_608_ = L_584_:lerp(L_581_.BackgroundColor3, L_606_):lerp(L_585_, L_607_)
								L_583_func(L_608_)
								L_591_, L_592_ = L_606_, L_607_
							end;
							L_177_.colorpicking = false
						end
					end)
					local L_604_;
					L_604_ = L_581_.MouseLeave:connect(function()
						L_603_:disconnect()
						L_604_:disconnect()
					end)
				end)
				L_582_.MouseMoved:connect(function(L_609_arg0, L_610_arg1)
					L_590_ = L_610_arg1
				end)
				L_581_.MouseMoved:connect(function(L_611_arg0, L_612_arg1)
					L_588_, L_589_ = L_611_arg0, L_612_arg1
				end)
				table.insert(L_177_.toInvis, L_579_)
				L_177_.flags[L_577_arg0.flag] = Color3.new(1, 1, 1)
				L_177_.options[L_577_arg0.flag] = {
					type = "colorpicker",
					changeState = L_583_func,
					skipflag = L_577_arg0.skipflag,
					oldargs = L_577_arg0
				}
				L_583_func(L_577_arg0.color or Color3.new(1, 1, 1))
			end;
			function L_515_:addEventList(L_613_arg0)
			end;
			return L_515_, L_512_
		end;
		return L_501_, L_499_
	end;
	if not isfolder("cipex_configs") then
		makefolder("cipex_configs")
	end;
	if not isfolder("cipex_configs/democfg") then
		makefolder("cipex_configs/democfg")
	end;
	function L_177_:saveConfig()
		local L_614_ = L_177_.flags["config_name"]
		if L_614_ == "" then
			L_614_ = L_177_.flags["selected_config"]
		end;
		local L_615_ = {}
		for L_616_forvar0, L_617_forvar1 in next, L_177_.flags do
			if L_177_.options[L_616_forvar0].skipflag then
				continue;
			end;
			if typeof(L_617_forvar1) == "Color3" then
				L_615_[L_616_forvar0] = {
					L_617_forvar1.R,
					L_617_forvar1.G,
					L_617_forvar1.B
				}
			elseif typeof(L_617_forvar1) == "EnumItem" then
				L_615_[L_616_forvar0] = {
					string.split(tostring(L_617_forvar1), ".")[2],
					string.split(tostring(L_617_forvar1), ".")[3]
				}
			else
				L_615_[L_616_forvar0] = L_617_forvar1
			end
		end;
		writefile("cipex_configs/democfg/" .. L_614_ .. ".cfg", game:GetService("HttpService"):JSONEncode(L_615_))
		L_177_:refreshConfigs()
	end;
	function L_177_:loadConfig()
		local L_618_ = L_177_.flags["selected_config"]
		if not isfile("cipex_configs/democfg/" .. L_618_ .. ".cfg") then
			return
		end;
		local L_619_ = game:GetService("HttpService"):JSONDecode(readfile("cipex_configs/democfg/" .. L_618_ .. ".cfg"))
		for L_620_forvar0, L_621_forvar1 in next, L_177_.options do
			spawn(function()
				pcall(function()
					if L_619_[L_620_forvar0] then
						if L_621_forvar1.type == "colorpicker" then
							L_621_forvar1.changeState(Color3.new(L_619_[L_620_forvar0][1], L_619_[L_620_forvar0][2], L_619_[L_620_forvar0][3]))
						elseif L_621_forvar1.type == "keybind" then
							L_621_forvar1.changeState(Enum[L_619_[L_620_forvar0][1]][L_619_[L_620_forvar0][2]])
						else
							if L_619_[L_620_forvar0] ~= L_177_.flags[L_620_forvar0] then
								L_621_forvar1.changeState(L_619_[L_620_forvar0])
							end
						end
					else
						if L_621_forvar1.type == "toggle" then
							L_621_forvar1.changeState(false)
						elseif L_621_forvar1.type == "slider" then
							L_621_forvar1.changeState(L_621_forvar1.args.value or 0)
						elseif L_621_forvar1.type == "textbox" or L_621_forvar1.type == "list" then
							L_621_forvar1.changeState(L_621_forvar1.args.text or "")
						elseif L_621_forvar1.type == "colorpicker" then
							L_621_forvar1.changeState(L_621_forvar1.args.color or Color3.new(1, 1, 1))
						elseif option.type == "list" then
							L_621_forvar1.changeState("")
						elseif option.type == "keybind" then
							L_621_forvar1.changeState(L_621_forvar1.args.key or Enum.KeyCode.Unknown)
						end
					end
				end)
			end)
		end
	end;
	function L_177_:refreshConfigs()
		local L_622_ = {}
		for L_623_forvar0, L_624_forvar1 in next, listfiles("cipex_configs/democfg") do
			table.insert(L_622_, L_624_forvar1:split("\\")[2]:split(".")[1])
		end;
		L_177_.options["selected_config"].refresh(L_622_)
	end;
	function L_177_:deleteConfig()
		if isfile("cipex_configs/democfg/" .. L_177_.flags["selected_config"] .. ".cfg") then
			delfile("cipex_configs/democfg/" .. L_177_.flags["selected_config"] .. ".cfg")
			L_177_:refreshConfigs()
		end
	end;
	local L_209_ = L_177_:addTab("Settings")
	local L_210_ = L_177_:addTab("Visuals")
	local L_211_ = L_177_:addTab("Configuration")
	local L_212_, L_213_ = L_177_:addTab("Events")
	local L_214_ = L_209_:createGroup(0)
	local L_215_ = L_209_:createGroup(0)
	local L_216_ = L_209_:createGroup(0)
	L_214_:addToggle({
		text = "Hide Dropped Weapons",
		flag = "hide_dropped_weapons",
		state = false,
		callback = function()
			playTick(L_167_)
		end
	})
	L_214_:addToggle({
		text = "Hide Character Models",
		flag = "hide_character_models",
		state = false,
		callback = function()
			playTick(L_167_)
		end
	})
	L_214_:addToggle({
		text = "Hide Ragdolls",
		flag = "hide_ragdolls",
		state = false,
		callback = function()
			playTick(L_167_)
		end
	})
	L_214_:addToggle({
		text = "Hide Viewmodel",
		flag = "hide_viewmodel",
		state = false,
		callback = function()
			playTick(L_167_)
		end
	})
	L_214_:addSlider({
		text = "Camera Speed",
		flag = "camera_speed",
		min = 1,
		max = 20,
		value = 1,
		skipflag = true
	})
	L_214_:addList({
		text = "Playback speed",
		flag = "playback_speed",
		values = {
			"0.25",
			"0.5",
			"1",
			"2",
			"4"
		},
		value = "1",
		callback = function(L_625_arg0)
			if L_625_arg0 == "0.25" then
				L_165_ = 1;
				workspace.settings.speed.Value = L_155_[L_165_]
				workspace.settings.tween.Value = 0.16;
				workspace.settings.playertween.Value = 0.16
			elseif L_625_arg0 == "0.5" then
				L_165_ = 2;
				workspace.settings.speed.Value = L_155_[L_165_]
				workspace.settings.tween.Value = 0.08;
				workspace.settings.playertween.Value = 0.08
			elseif L_625_arg0 == "1" then
				L_165_ = 3;
				workspace.settings.speed.Value = L_155_[L_165_]
				workspace.settings.tween.Value = 0.04;
				workspace.settings.playertween.Value = 0.04
			elseif L_625_arg0 == "2" then
				L_165_ = 4;
				workspace.settings.speed.Value = L_155_[L_165_]
				workspace.settings.tween.Value = 0.03;
				workspace.settings.playertween.Value = 0.03
			elseif L_625_arg0 == "4" then
				L_165_ = 5;
				workspace.settings.speed.Value = L_155_[L_165_]
				workspace.settings.tween.Value = 0.02;
				workspace.settings.playertween.Value = 0.02
			end
		end
	})
	L_170_.WheelForward:Connect(function()
		L_177_.options["camera_speed"].changeState(math.clamp(L_177_.flags["camera_speed"] + 1, 1, 20))
	end)
	L_170_.WheelBackward:Connect(function()
		L_177_.options["camera_speed"].changeState(math.clamp(L_177_.flags["camera_speed"] - 1, 1, 20))
	end)
	spawn(function()
		local L_626_ = false;
		local L_627_ = {
			textureinstances = {},
			lights = {},
			materials = {},
			colors = {},
			decals = {},
			textures = {},
			textures2 = {},
			usecolor = {},
			particles = {},
			lenses = {}
		}
		local function L_628_func()
			if L_626_ then
				return
			end;
			L_627_ = {
				textureinstances = {},
				lights = {},
				materials = {},
				colors = {},
				decals = {},
				textures = {},
				textures2 = {},
				usecolor = {},
				particles = {},
				lenses = {}
			}
			L_147_.Bloom.Enabled = false;
			L_147_.GlobalShadows = false;
			L_147_.SunRays.Enabled = false;
			L_147_.FogEnd = 387420489;
			workspace.colorbox:SetPrimaryPartCFrame(workspace.Map:GetChildren()[1].TSpawns:GetChildren()[1].CFrame - Vector3.new(0, 250, 0))
			for L_630_forvar0, L_631_forvar1 in next, workspace.colorbox:GetChildren() do
				L_631_forvar1.Transparency = L_631_forvar1.Name == "Part" and 0 or 1;
				L_631_forvar1.Color = Color3.fromRGB(5, 150, 20)
			end;
			L_147_.Sky.Parent = workspace;
			for L_632_forvar0, L_633_forvar1 in next, workspace.Map:GetDescendants() do
				if L_633_forvar1:IsA("BasePart") then
					table.insert(L_627_.materials, {
						L_633_forvar1,
						L_633_forvar1.Material
					})
					table.insert(L_627_.colors, {
						L_633_forvar1,
						L_633_forvar1.Color
					})
					L_633_forvar1.Material = "Neon"
					L_633_forvar1.Color = Color3.fromRGB(5, 150, 20)
					if L_633_forvar1.ClassName == "UnionOperation" then
						table.insert(L_627_.usecolor, {
							L_633_forvar1,
							L_633_forvar1.UsePartColor
						})
						L_633_forvar1.UsePartColor = true
					end
				end;
				if L_633_forvar1.ClassName == "Decal" then
					table.insert(L_627_.decals, {
						L_633_forvar1,
						L_633_forvar1.Transparency
					})
					L_633_forvar1.Transparency = 1
				end;
				if L_633_forvar1.ClassName == "ParticleEmitter" then
					table.insert(L_627_.particles, {
						L_633_forvar1,
						L_633_forvar1.Enabled
					})
					L_633_forvar1.Enabled = false
				end;
				if hasProperty(L_633_forvar1, "TextureID") then
					table.insert(L_627_.textures, {
						L_633_forvar1,
						L_633_forvar1.TextureID
					})
					L_633_forvar1.TextureID = ""
				end;
				if hasProperty(L_633_forvar1, "TextureId") then
					table.insert(L_627_.textures2, {
						L_633_forvar1,
						L_633_forvar1.TextureId
					})
					L_633_forvar1.TextureId = ""
				end;
				if L_633_forvar1.ClassName == "PointLight" and L_633_forvar1.Enabled then
					table.insert(L_627_.lights, L_633_forvar1)
					L_633_forvar1.Enabled = false
				end;
				if L_633_forvar1.ClassName == "Texture" then
					table.insert(L_627_.textureinstances, {
						L_633_forvar1,
						L_633_forvar1.Transparency
					})
					L_633_forvar1.Transparency = 1
				end
			end;
			for L_634_forvar0, L_635_forvar1 in next, workspace.demoModels:GetChildren() do
				if L_635_forvar1.ClassName == "Model" then
					for L_636_forvar0, L_637_forvar1 in next, L_635_forvar1:GetChildren() do
						if L_637_forvar1.Name == "Lens" then
							table.insert(L_627_.lenses, {
								L_637_forvar1,
								L_637_forvar1.Handle.Reflectance
							})
							L_637_forvar1.Handle.Reflectance = 0
						end
					end
				end
			end;
			L_626_ = true
		end;
		local function L_629_func()
			for L_638_forvar0, L_639_forvar1 in next, workspace.colorbox:GetChildren() do
				L_639_forvar1.Transparency = 1
			end;
			if L_626_ then
				workspace.Sky.Parent = L_147_;
				L_147_.Bloom.Enabled = true;
				L_147_.GlobalShadows = true;
				L_147_.SunRays.Enabled = true;
				L_147_.FogEnd = 10000;
				for L_640_forvar0, L_641_forvar1 in next, L_627_.materials do
					L_641_forvar1[1].Material = L_641_forvar1[2]
				end;
				for L_642_forvar0, L_643_forvar1 in next, L_627_.colors do
					L_643_forvar1[1].Color = L_643_forvar1[2]
				end;
				for L_644_forvar0, L_645_forvar1 in next, L_627_.textures do
					L_645_forvar1[1].TextureID = L_645_forvar1[2]
				end;
				for L_646_forvar0, L_647_forvar1 in next, L_627_.textures2 do
					L_647_forvar1[1].TextureId = L_647_forvar1[2]
				end;
				for L_648_forvar0, L_649_forvar1 in next, L_627_.usecolor do
					L_649_forvar1[1].UsePartColor = L_649_forvar1[2]
				end;
				for L_650_forvar0, L_651_forvar1 in next, L_627_.decals do
					L_651_forvar1[1].Transparency = L_651_forvar1[2]
				end;
				for L_652_forvar0, L_653_forvar1 in next, L_627_.particles do
					L_653_forvar1[1].Enabled = L_653_forvar1[2]
				end;
				for L_654_forvar0, L_655_forvar1 in next, L_627_.lights do
					L_655_forvar1.Enabled = true
				end;
				for L_656_forvar0, L_657_forvar1 in next, L_627_.textureinstances do
					L_657_forvar1[1].Transparency = L_657_forvar1[2]
				end;
				for L_658_forvar0, L_659_forvar1 in next, L_627_.lenses do
					if L_659_forvar1[1] then
						L_659_forvar1[1].Handle.Reflectance = L_659_forvar1[2]
					end
				end;
				L_626_ = false
			end
		end;
		L_215_:addToggle({
			text = "Greenscreen Map",
			flag = "greenscreen_map",
			state = false,
			callback = function()
				if L_177_.flags["depth_of_field_map"] then
					L_177_.options["depth_of_field_map"].changeState(false)
				end;
				if L_177_.flags["greenscreen_map"] and L_177_.flags["depth_of_field_map"] then
					L_177_.flags["greenscreen_map"] = false;
					L_177_.options["depth_of_field_map"].changeState(false)
					L_177_.flags["greenscreen_map"] = true
				end;
				if L_177_.flags["greenscreen_map"] then
					L_628_func()
				else
					L_629_func()
				end
			end
		})
	end)
	spawn(function()
		local L_660_ = false;
		local L_661_ = {
			textureinstances = {},
			lights = {},
			materials = {},
			colors = {},
			decals = {},
			textures = {},
			textures2 = {},
			usecolor = {},
			particles = {},
			lenses = {},
			reflectance = {}
		}
		local function L_662_func()
			if L_660_ then
				return
			end;
			L_661_ = {
				textureinstances = {},
				lights = {},
				materials = {},
				colors = {},
				decals = {},
				textures = {},
				textures2 = {},
				usecolor = {},
				particles = {},
				lenses = {},
				reflectance = {}
			}
			L_147_.Bloom.Enabled = false;
			L_147_.EnvironmentDiffuseScale = 0;
			L_147_.EnvironmentSpecularScale = 0;
			L_147_.GlobalShadows = false;
			L_147_.SunRays.Enabled = false;
			L_147_.Brightness = 0;
			L_147_.FogEnd = 750;
			L_147_.FogColor = Color3.new(1, 1, 1)
			L_147_.ColorCorrection.Enabled = true;
			workspace.colorbox:SetPrimaryPartCFrame(workspace.Map:GetChildren()[1].TSpawns:GetChildren()[1].CFrame - Vector3.new(0, 250, 0))
			for L_665_forvar0, L_666_forvar1 in next, workspace.colorbox:GetChildren() do
				L_666_forvar1.Transparency = L_666_forvar1.Name == "Part" and 0 or 1;
				L_666_forvar1.Color = Color3.fromRGB(158, 160, 158)
			end;
			L_147_.Sky.Parent = workspace;
			local L_664_ = {}
			for L_667_forvar0, L_668_forvar1 in next, workspace.Map:GetDescendants() do
				table.insert(L_664_, L_668_forvar1)
			end;
			for L_669_forvar0, L_670_forvar1 in next, workspace.demoModels:GetDescendants() do
				table.insert(L_664_, L_670_forvar1)
			end;
			for L_671_forvar0, L_672_forvar1 in next, L_664_ do
				if L_672_forvar1:IsA("BasePart") then
					table.insert(L_661_.materials, {
						L_672_forvar1,
						L_672_forvar1.Material
					})
					table.insert(L_661_.colors, {
						L_672_forvar1,
						L_672_forvar1.Color
					})
					table.insert(L_661_.reflectance, {
						L_672_forvar1,
						L_672_forvar1.Reflectance
					})
					L_672_forvar1.Material = "Neon"
					L_672_forvar1.Color = Color3.fromRGB(0, 0, 0)
					L_672_forvar1.Reflectance = 0;
					if L_672_forvar1.ClassName == "UnionOperation" then
						table.insert(L_661_.usecolor, {
							L_672_forvar1,
							L_672_forvar1.UsePartColor
						})
						L_672_forvar1.UsePartColor = true
					end
				end;
				if L_672_forvar1.ClassName == "Decal" then
					table.insert(L_661_.decals, {
						L_672_forvar1,
						L_672_forvar1.Transparency
					})
					L_672_forvar1.Transparency = 1
				end;
				if L_672_forvar1.ClassName == "ParticleEmitter" then
					table.insert(L_661_.particles, {
						L_672_forvar1,
						L_672_forvar1.Enabled
					})
					L_672_forvar1.Enabled = false
				end;
				if hasProperty(L_672_forvar1, "TextureID") then
					table.insert(L_661_.textures, {
						L_672_forvar1,
						L_672_forvar1.TextureID
					})
					L_672_forvar1.TextureID = ""
				end;
				if hasProperty(L_672_forvar1, "TextureId") then
					table.insert(L_661_.textures2, {
						L_672_forvar1,
						L_672_forvar1.TextureId
					})
					L_672_forvar1.TextureId = ""
				end;
				if L_672_forvar1.ClassName == "PointLight" and L_672_forvar1.Enabled then
					table.insert(L_661_.lights, L_672_forvar1)
					L_672_forvar1.Enabled = false
				end;
				if L_672_forvar1.ClassName == "Texture" then
					table.insert(L_661_.textureinstances, {
						L_672_forvar1,
						L_672_forvar1.Transparency
					})
					L_672_forvar1.Transparency = 1
				end
			end;
			for L_673_forvar0, L_674_forvar1 in next, workspace.demoModels:GetChildren() do
				if L_674_forvar1.ClassName == "Model" then
					for L_675_forvar0, L_676_forvar1 in next, L_674_forvar1:GetChildren() do
						if L_676_forvar1.Name == "Lens" then
							table.insert(L_661_.lenses, {
								L_676_forvar1,
								L_676_forvar1.Handle.Reflectance
							})
							L_676_forvar1.Handle.Reflectance = 0
						end
					end
				end
			end;
			L_660_ = true
		end;
		local function L_663_func()
			if L_660_ then
				workspace.Sky.Parent = L_147_;
				L_147_.Bloom.Enabled = true;
				L_147_.EnvironmentDiffuseScale = 1;
				L_147_.EnvironmentSpecularScale = 1;
				L_147_.GlobalShadows = true;
				L_147_.SunRays.Enabled = true;
				L_147_.Brightness = 3;
				L_147_.FogColor = Color3.fromRGB(192, 192, 192)
				L_147_.FogEnd = 10000;
				L_147_.ColorCorrection.Enabled = false;
				for L_677_forvar0, L_678_forvar1 in next, workspace.colorbox:GetChildren() do
					L_678_forvar1.Transparency = 1
				end;
				L_147_.FogEnd = 10000;
				for L_679_forvar0, L_680_forvar1 in next, L_661_.materials do
					L_680_forvar1[1].Material = L_680_forvar1[2]
				end;
				for L_681_forvar0, L_682_forvar1 in next, L_661_.colors do
					L_682_forvar1[1].Color = L_682_forvar1[2]
				end;
				for L_683_forvar0, L_684_forvar1 in next, L_661_.textures do
					L_684_forvar1[1].TextureID = L_684_forvar1[2]
				end;
				for L_685_forvar0, L_686_forvar1 in next, L_661_.textures2 do
					L_686_forvar1[1].TextureId = L_686_forvar1[2]
				end;
				for L_687_forvar0, L_688_forvar1 in next, L_661_.usecolor do
					L_688_forvar1[1].UsePartColor = L_688_forvar1[2]
				end;
				for L_689_forvar0, L_690_forvar1 in next, L_661_.decals do
					L_690_forvar1[1].Transparency = L_690_forvar1[2]
				end;
				for L_691_forvar0, L_692_forvar1 in next, L_661_.particles do
					L_692_forvar1[1].Enabled = L_692_forvar1[2]
				end;
				for L_693_forvar0, L_694_forvar1 in next, L_661_.lights do
					L_694_forvar1.Enabled = true
				end;
				for L_695_forvar0, L_696_forvar1 in next, L_661_.reflectance do
					L_696_forvar1[1].Reflectance = L_696_forvar1[2]
				end;
				for L_697_forvar0, L_698_forvar1 in next, L_661_.textureinstances do
					L_698_forvar1[1].Transparency = L_698_forvar1[2]
				end;
				for L_699_forvar0, L_700_forvar1 in next, L_661_.lenses do
					if L_700_forvar1[1] then
						L_700_forvar1[1].Handle.Reflectance = L_700_forvar1[2]
					end
				end;
				L_660_ = false
			end
		end;
		L_215_:addToggle({
			text = "Depth of Field Map",
			flag = "depth_of_field_map",
			state = false,
			callback = function()
				if L_177_.flags["greenscreen_map"] and L_177_.flags["depth_of_field_map"] then
					L_177_.flags["depth_of_field_map"] = false;
					L_177_.options["greenscreen_map"].changeState(false)
					L_177_.flags["depth_of_field_map"] = true
				end;
				if L_177_.flags["depth_of_field_map"] then
					L_662_func()
				else
					L_663_func()
				end
			end
		})
	end)
	wait(0.1)
	L_216_:addToggle({
		text = "Show Killfeed",
		flag = "show_killfeed",
		callback = function()
			playTick(L_167_)
		end,
		state = true
	})
	L_216_:addToggle({
		text = "Show HUD",
		flag = "show_hud",
		callback = function()
			playTick(L_167_)
		end,
		state = true
	})
	L_216_:addToggle({
		text = "Hide Crosshair",
		flag = "hide_crosshair",
		callback = function()
			playTick(L_167_)
		end,
		state = false
	})
	local L_217_ = L_210_:createGroup(0)
	L_217_:addToggle({
		text = "Depth of Field Effect",
		flag = "depth_of_field_effect",
		state = false,
		callback = function(L_701_arg0)
			L_147_.DepthOfField.Enabled = L_701_arg0
		end
	})
	L_217_:addToggle({
		text = "Better Shadows",
		flag = "better_shadows",
		callback = function()
			sethiddenproperty(L_147_, "Technology", L_177_.flags["better_shadows"] and Enum.Technology.Future or Enum.Technology.Compatibility)
		end
	})
	L_217_:addToggle({
		text = "Saturation",
		flag = "world_saturation"
	})
	L_217_:addToggle({
		text = "Gradient",
		flag = "world_gradient"
	})
	L_217_:addColorpicker({
		text = "Gradient Color",
		ontop = true,
		flag = "gradient_color",
		color = Color3.new(0.4, 0.4, 0.8)
	})
	L_217_:addColorpicker({
		text = "Outdoor Gradient Color",
		ontop = true,
		flag = "outdoor_gradient_color",
		color = Color3.new(0.25, 0.25, 0.65)
	})
	L_217_:addSlider({
		text = "Saturation Value",
		min = 0,
		max = 100,
		value = 10,
		flag = "saturation_value"
	})
	L_217_:addSlider({
		text = "Time of Day",
		flag = "time_of_day",
		min = 0,
		max = 48,
		value = 24,
		callback = function(L_702_arg0)
			L_147_.ClockTime = L_702_arg0 / 2
		end
	})
	L_217_:addSlider({
		text = "Viewmodel X",
		flag = "viewmodel_x",
		value = 20,
		min = 0,
		max = 40
	})
	L_217_:addSlider({
		text = "Viewmodel Y",
		flag = "viewmodel_y",
		value = 20,
		min = 0,
		max = 40
	})
	L_217_:addSlider({
		text = "Viewmodel Z",
		flag = "viewmodel_z",
		value = 20,
		min = 0,
		max = 40
	})
	local L_218_ = L_211_:createGroup(0)
	L_218_:addKeybind({
		text = "Toggle UI",
		flag = "toggle_ui",
		key = Enum.KeyCode.Delete
	})
	L_218_:addKeybind({
		text = "Pause/Resume",
		flag = "pause_resume",
		key = Enum.KeyCode.Return
	})
	L_218_:addKeybind({
		text = "Toggle Spectator Mode",
		flag = "toggle_spec_mode",
		key = Enum.KeyCode.LeftShift
	})
	L_218_:addKeybind({
		text = "Toggle Firstperson",
		flag = "toggle_firstperson",
		key = Enum.KeyCode.LeftControl
	})
	L_218_:addKeybind({
		text = "Increase Playback Speed",
		flag = "increase_playback_speed",
		key = Enum.KeyCode.Up
	})
	L_218_:addKeybind({
		text = "Decrease Playback Speed",
		flag = "decrease_playback_speed",
		key = Enum.KeyCode.Down
	})
	local L_219_ = L_211_:createGroup(0)
	L_219_:addList({
		text = "Config",
		flag = "selected_config",
		skipflag = true,
		values = {}
	})
	L_219_:addTextbox({
		text = "config name",
		flag = "config_name"
	})
	L_219_:addButton({
		text = "Save Config",
		callback = L_177_.saveConfig
	})
	L_219_:addButton({
		text = "Load Config",
		callback = L_177_.loadConfig
	})
	L_219_:addButton({
		text = "Delete Config",
		callback = L_177_.deleteConfig
	})
	L_219_:addButton({
		text = "Refresh Configs",
		callback = L_177_.refreshConfigs
	})
	L_177_:refreshConfigs()
	L_178_ = L_144_.events.eventHolder:Clone()
	L_178_.Parent = L_213_.left;
	L_174_.wait:Destroy()
	for L_703_forvar0, L_704_forvar1 in pairs(listfiles("cipex_configs/demos/")) do
		local L_705_ = Instance.new("Folder", game.ReplicatedStorage.Demos)
		L_705_.Name = tostring(L_704_forvar1):split("/")[3]
		for L_706_forvar0, L_707_forvar1 in next, listfiles(L_704_forvar1) do
			local L_708_ = L_707_forvar1:split("\\")[2]:split(".")[1]
			local L_709_ = Instance.new("StringValue")
			L_709_.Name = L_708_;
			L_709_.Parent = L_705_;
			L_709_.Value = readfile(L_707_forvar1)
		end
	end;
	return
end;
local L_2_ = os.time()
wait(1)
local L_4_;
getgenv().runService = game:GetService"RunService"
getgenv().textService = game:GetService"TextService"
getgenv().inputService = game:GetService"UserInputService"
getgenv().tweenService = game:GetService"TweenService"
if getgenv().library then
	getgenv().library:Unload()
end;
local L_5_ = {
	tabs = {},
	draggable = true,
	flags = {},
	title = "cipex",
	open = false,
	mousestate = inputService.MouseIconEnabled,
	popup = nil,
	instances = {},
	connections = {},
	options = {},
	notifications = {},
	tabSize = 0,
	theme = {},
	foldername = "cipex_free/configs/cb",
	fileext = ".txt"
}
library_flags = L_5_.flags;
getgenv().library = L_5_;
local L_6_, L_7_, L_8_, L_9_, L_10_;
local L_11_ = {
	Enum.KeyCode.Unknown,
	Enum.KeyCode.W,
	Enum.KeyCode.A,
	Enum.KeyCode.S,
	Enum.KeyCode.D,
	Enum.KeyCode.Slash,
	Enum.KeyCode.Tab,
	Enum.KeyCode.Escape
}
local L_12_ = {
	Enum.UserInputType.MouseButton1,
	Enum.UserInputType.MouseButton2,
	Enum.UserInputType.MouseButton3
}
LPH_NO_VIRTUALIZE(function()
    L_5_.round = function(L_713_arg0, L_714_arg1)
        L_714_arg1 = L_714_arg1 or 1;
        local L_715_;
        if typeof(L_713_arg0) == "Vector2" then
            L_715_ = Vector2.new(L_5_.round(L_713_arg0.X), L_5_.round(L_713_arg0.Y))
        elseif typeof(L_713_arg0) == "Color3" then
            return L_5_.round(L_713_arg0.r * 255), L_5_.round(L_713_arg0.g * 255), L_5_.round(L_713_arg0.b * 255)
        else
            L_715_ = math.floor(L_713_arg0 / L_714_arg1 + math.sign(L_713_arg0) * 0.5) * L_714_arg1;
            if L_715_ < 0 then
                L_715_ = L_715_ + L_714_arg1
            end;
            return L_715_
        end;
        return L_715_
    end;
    function L_5_:Create(L_716_arg0, L_717_arg1)
        L_717_arg1 = L_717_arg1 or {}
        if not L_716_arg0 then
            return
        end;
        local L_718_ = L_716_arg0 == "Square" or L_716_arg0 == "Line" or L_716_arg0 == "Text" or L_716_arg0 == "Quad" or L_716_arg0 == "Circle" or L_716_arg0 == "Triangle"
        local L_719_ = L_718_ and Drawing or Instance;
        local L_720_ = L_719_.new(L_716_arg0)
        for L_721_forvar0, L_722_forvar1 in next, L_717_arg1 do
            L_720_[L_721_forvar0] = L_722_forvar1
        end;
        table.insert(self.instances, {
            object = L_720_,
            method = L_718_
        })
        return L_720_
    end;
    function L_5_:AddConnection(L_723_arg0, L_724_arg1, L_725_arg2)
        L_725_arg2 = type(L_724_arg1) == "function" and L_724_arg1 or L_725_arg2;
        L_723_arg0 = L_723_arg0:connect(L_725_arg2)
        if L_724_arg1 ~= L_725_arg2 then
            self.connections[L_724_arg1] = L_723_arg0
        else
            table.insert(self.connections, L_723_arg0)
        end;
        return L_723_arg0
    end;
    function L_5_:Unload()
        inputService.MouseIconEnabled = self.mousestate;
        for L_726_forvar0, L_727_forvar1 in next, self.connections do
            L_727_forvar1:Disconnect()
        end;
        for L_728_forvar0, L_729_forvar1 in next, self.instances do
            if L_729_forvar1.method then
                pcall(function()
                    L_729_forvar1.object:Remove()
                end)
            else
                L_729_forvar1.object:Destroy()
            end
        end;
        for L_730_forvar0, L_731_forvar1 in next, self.options do
            if L_731_forvar1.type == "toggle" then
                pcall(function()
                    L_731_forvar1:SetState()
                end)
            end
        end;
        L_5_ = nil;
        getgenv().library = nil
    end;
end)()
LPH_NO_VIRTUALIZE(function()
L_5_.lastConfig = ""
function L_5_:LoadConfig(L_732_arg0, L_733_arg1)
	L_5_.lastConfig = L_732_arg0 or L_5_.lastConfig;
	loadingCFG = true;
	changing = true;
	local L_734_, L_735_ = nil, nil;
	if L_733_arg1 then
		L_734_, L_735_ = pcall(function()
			return game:GetService"HttpService":JSONDecode(L_733_arg1)
		end)
	else
		L_734_, L_735_ = pcall(function()
			return game:GetService"HttpService":JSONDecode(readfile(self.foldername .. "/" .. L_732_arg0 .. self.fileext))
		end)
	end;
	L_5_.options["Loop Kill"]:SetState(false)
	L_5_.options["Target ESP"]:SetState(false)
	L_5_.options["Ragebot Whitelist"]:SetState(false)
	L_5_.options["Ragebot Priority"]:SetState(false)
	L_735_ = L_734_ and L_735_ or {}
	if not L_734_ and L_733_arg1 ~= nil then
		loadingCFG = false;
		changing = false;
		return true
	end;
	if table.find(self:GetConfigs(), L_732_arg0) or L_733_arg1 ~= nil then
		for L_736_forvar0, L_737_forvar1 in next, self.options do
			if L_737_forvar1.hasInit then
				if L_737_forvar1.type ~= "button" and L_737_forvar1.flag and not L_737_forvar1.skipflag then
					if L_737_forvar1.type == "toggle" then
						spawn(function()
							L_737_forvar1:SetState(L_735_[L_737_forvar1.flag] == 1)
						end)
					elseif L_737_forvar1.type == "color" then
						if L_735_[L_737_forvar1.flag] then
							spawn(function()
								L_737_forvar1:SetColor(L_735_[L_737_forvar1.flag])
							end)
							if L_737_forvar1.trans then
								spawn(function()
									L_737_forvar1:SetTrans(L_735_[L_737_forvar1.flag .. " Transparency"])
								end)
							end
						end
					elseif L_737_forvar1.type == "bind" then
						spawn(function()
							L_737_forvar1:SetKey(L_735_[L_737_forvar1.flag])
						end)
					else
						spawn(function()
							L_737_forvar1:SetValue(L_735_[L_737_forvar1.flag])
						end)
					end
				end
			end
		end
	end;
	loadingCFG = false;
	changing = false;
	L_5_.options["Loop Kill"]:SetState(false)
	L_5_.options["Target ESP"]:SetState(false)
	L_5_.options["Ragebot Whitelist"]:SetState(false)
	L_5_.options["Ragebot Priority"]:SetState(false)
end;
function L_5_:SaveConfig(L_738_arg0, L_739_arg1, L_740_arg2)
	local L_741_ = {}
	if table.find(self:GetConfigs(), L_738_arg0) and not L_740_arg2 then
		L_741_ = game:GetService"HttpService":JSONDecode(readfile(self.foldername .. "/" .. L_738_arg0 .. self.fileext))
	else
		if L_740_arg2 then
			L_741_ = game:GetService"HttpService":JSONDecode(L_740_arg2)
		end
	end;
	for L_742_forvar0, L_743_forvar1 in next, self.options do
		if L_743_forvar1.type ~= "button" and L_743_forvar1.flag and not L_743_forvar1.skipflag then
			if L_743_forvar1.type == "toggle" then
				L_741_[L_743_forvar1.flag] = L_743_forvar1.state and 1 or 0
			elseif L_743_forvar1.type == "color" then
				L_741_[L_743_forvar1.flag] = {
					L_743_forvar1.color.r,
					L_743_forvar1.color.g,
					L_743_forvar1.color.b
				}
				if L_743_forvar1.trans then
					L_741_[L_743_forvar1.flag .. " Transparency"] = L_743_forvar1.trans
				end
			elseif L_743_forvar1.type == "bind" then
				L_741_[L_743_forvar1.flag] = L_743_forvar1.key
			elseif L_743_forvar1.type == "list" then
				L_741_[L_743_forvar1.flag] = L_743_forvar1.value
			else
				L_741_[L_743_forvar1.flag] = L_743_forvar1.value
			end
		end
	end;
	if L_739_arg1 then
		setclipboard(game:GetService"HttpService":JSONEncode(L_741_))
	else
		writefile(self.foldername .. "/" .. L_738_arg0 .. self.fileext, game:GetService"HttpService":JSONEncode(L_741_))
	end
end;
function L_5_:GetConfigs()
	if not isfolder(self.foldername) then
		makefolder(self.foldername)
	end;
	local L_744_ = listfiles(self.foldername)
	for L_745_forvar0, L_746_forvar1 in next, L_744_ do
		if L_746_forvar1:find(self.fileext) then
			L_746_forvar1 = L_746_forvar1:gsub(self.foldername .. "\\", "")
			L_744_[L_745_forvar0] = L_746_forvar1:gsub(self.fileext, "")
		else
			L_744_[L_745_forvar0] = nil
		end
	end;
	return L_744_
end;
end)()
local function L_13_func(L_747_arg0, L_748_arg1)
	L_747_arg0.main = L_5_:Create("TextLabel", {
		LayoutOrder = L_747_arg0.position,
		Position = UDim2.new(0, 6, 0, 0),
		Size = UDim2.new(1, -12, 0, 24),
		BackgroundTransparency = 1,
		Text = L_747_arg0.text,
		TextSize = 15,
		Font = Enum.Font.Code,
		TextColor3 = Color3.new(1, 1, 1),
		TextXAlignment = Enum.TextXAlignment.Left,
		Parent = L_748_arg1
	})
	setmetatable(L_747_arg0, {
		__newindex = function(L_749_arg0, L_750_arg1, L_751_arg2)
			if L_750_arg1 == "Text" then
				L_747_arg0.main.Text = tostring(L_751_arg2)
			end
		end
	})
end;
local function L_14_func(L_752_arg0, L_753_arg1)
	L_752_arg0.hasInit = true;
	L_752_arg0.main = L_5_:Create("Frame", {
		LayoutOrder = L_752_arg0.position,
		Size = UDim2.new(1, 0, 0, 20),
		BackgroundTransparency = 1,
		Parent = L_753_arg1
	})
	local L_754_;
	local L_755_;
	if L_752_arg0.style then
		L_754_ = L_5_:Create("ImageLabel", {
			Position = UDim2.new(0, 6, 0, 4),
			Size = UDim2.new(0, 12, 0, 12),
			BackgroundTransparency = 1,
			Image = "rbxassetid://3570695787",
			ImageColor3 = Color3.new(),
			Parent = L_752_arg0.main
		})
		L_5_:Create("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(1, -2, 1, -2),
			BackgroundTransparency = 1,
			Image = "rbxassetid://3570695787",
			ImageColor3 = Color3.fromRGB(60, 60, 60),
			Parent = L_754_
		})
		L_5_:Create("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(1, -6, 1, -6),
			BackgroundTransparency = 1,
			Image = "rbxassetid://3570695787",
			ImageColor3 = Color3.fromRGB(40, 40, 40),
			Parent = L_754_
		})
		L_755_ = L_5_:Create("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(1, -6, 1, -6),
			BackgroundTransparency = 1,
			Image = "rbxassetid://3570695787",
			ImageColor3 = library_flags["Menu Accent Color"],
			Visible = L_752_arg0.state,
			Parent = L_754_
		})
		L_5_:Create("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			Image = "rbxassetid://5941353943",
			ImageTransparency = 0.6,
			Parent = L_754_
		})
		table.insert(L_5_.theme, L_755_)
	else
		L_754_ = L_5_:Create("Frame", {
			Position = UDim2.new(0, 6, 0, 4),
			Size = UDim2.new(0, 12, 0, 12),
			BackgroundColor3 = library_flags["Menu Accent Color"],
			BorderColor3 = Color3.new(),
			Parent = L_752_arg0.main
		})
		L_755_ = L_5_:Create("ImageLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = L_752_arg0.state and 1 or 0,
			BackgroundColor3 = Color3.fromRGB(50, 50, 50),
			BorderColor3 = Color3.new(),
			Image = "rbxassetid://4155801252",
			ImageTransparency = 0.6,
			ImageColor3 = Color3.new(),
			Parent = L_754_
		})
		L_5_:Create("ImageLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			Image = "rbxassetid://2592362371",
			ImageColor3 = Color3.fromRGB(60, 60, 60),
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(2, 2, 62, 62),
			Parent = L_754_
		})
		table.insert(L_5_.theme, L_754_)
	end;
	L_752_arg0.interest = L_5_:Create("Frame", {
		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(1, 0, 0, 20),
		BackgroundTransparency = 1,
		Parent = L_752_arg0.main
	})
	L_752_arg0.title = L_5_:Create("TextLabel", {
		Position = UDim2.new(0, 24, 0, 0),
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Text = L_752_arg0.text,
		TextColor3 = L_752_arg0.state and Color3.fromRGB(210, 210, 210) or Color3.fromRGB(180, 180, 180),
		TextSize = 15,
		Font = Enum.Font.Code,
		TextXAlignment = Enum.TextXAlignment.Left,
		Parent = L_752_arg0.interest
	})
	L_752_arg0.interest.InputBegan:connect(function(L_756_arg0)
		if L_756_arg0.UserInputType.Name == "MouseButton1" then
			L_752_arg0:SetState(not L_752_arg0.state)
		end;
		if L_756_arg0.UserInputType.Name == "MouseMovement" then
			if not L_5_.popup and not L_5_.warning and not L_5_.slider then
				if L_752_arg0.style then
					L_754_.ImageColor3 = library_flags["Menu Accent Color"]
					tweenService:Create(L_754_, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						ImageColor3 = library_flags["Menu Accent Color"]
					}):Play()
				else
					L_754_.BorderColor3 = library_flags["Menu Accent Color"]
					L_755_.BorderColor3 = library_flags["Menu Accent Color"]
				end
			end;
			if L_752_arg0.tip then
				L_5_.tooltip.Text = L_752_arg0.tip;
				L_5_.tooltip.Size = UDim2.new(0, textService:GetTextSize(L_752_arg0.tip, 15, Enum.Font.Code, Vector2.new(387420489, 387420489)).X, 0, 20)
			end
		end
	end)
	L_752_arg0.interest.InputChanged:connect(function(L_757_arg0)
		if L_757_arg0.UserInputType.Name == "MouseMovement" then
			if L_752_arg0.tip then
				L_5_.tooltip.Position = UDim2.new(0, L_757_arg0.Position.X + 56, 0, L_757_arg0.Position.Y - 10)
			end
		end
	end)
	L_752_arg0.interest.InputEnded:connect(function(L_758_arg0)
		if L_758_arg0.UserInputType.Name == "MouseMovement" then
			if L_752_arg0.style then
				L_754_.ImageColor3 = Color3.new()
			else
				L_754_.BorderColor3 = Color3.new()
				L_755_.BorderColor3 = Color3.new()
			end;
			L_5_.tooltip.Position = UDim2.new(2)
		end
	end)
	function L_752_arg0:SetState(L_759_arg0, L_760_arg1)
		L_759_arg0 = typeof(L_759_arg0) == "boolean" and L_759_arg0;
		L_759_arg0 = L_759_arg0 or false;
		library_flags[self.flag] = L_759_arg0;
		self.state = L_759_arg0;
		L_752_arg0.title.TextColor3 = L_759_arg0 and Color3.fromRGB(210, 210, 210) or Color3.fromRGB(160, 160, 160)
		if L_752_arg0.style then
			L_755_.Visible = L_759_arg0
		else
			L_755_.BackgroundTransparency = L_759_arg0 and 1 or 0
		end;
		if not L_760_arg1 then
			self.callback(L_759_arg0)
		end
	end;
	if L_752_arg0.state then
		delay(1, function()
			if L_5_ then
				L_752_arg0.callback(true)
			end
		end)
	end;
	setmetatable(L_752_arg0, {
		__newindex = function(L_761_arg0, L_762_arg1, L_763_arg2)
			if L_762_arg1 == "Text" then
				L_752_arg0.title.Text = tostring(L_763_arg2)
			end
		end
	})
end;
local function L_15_func(L_764_arg0, L_765_arg1)
	L_764_arg0.hasInit = true;
	L_764_arg0.main = L_5_:Create("Frame", {
		LayoutOrder = L_764_arg0.position,
		Size = UDim2.new(1, 0, 0, 26),
		BackgroundTransparency = 1,
		Parent = L_765_arg1
	})
	L_764_arg0.title = L_5_:Create("TextLabel", {
		AnchorPoint = Vector2.new(0.5, 1),
		Position = UDim2.new(0.5, 0, 1, -5),
		Size = UDim2.new(1, -12, 0, 18),
		BackgroundColor3 = Color3.fromRGB(50, 50, 50),
		BorderColor3 = Color3.new(),
		Text = L_764_arg0.text,
		TextColor3 = Color3.new(1, 1, 1),
		TextSize = 15,
		Font = Enum.Font.Code,
		Parent = L_764_arg0.main
	})
	L_5_:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.fromRGB(60, 60, 60),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = L_764_arg0.title
	})
	L_5_:Create("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(180, 180, 180)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(253, 253, 253))
		}),
		Rotation = -90,
		Parent = L_764_arg0.title
	})
	L_764_arg0.title.InputBegan:connect(function(L_766_arg0)
		if L_766_arg0.UserInputType.Name == "MouseButton1" then
			L_764_arg0.callback()
			if L_5_ then
				library_flags[L_764_arg0.flag] = true
			end;
			if L_764_arg0.tip then
				L_5_.tooltip.Text = L_764_arg0.tip;
				L_5_.tooltip.Size = UDim2.new(0, textService:GetTextSize(L_764_arg0.tip, 15, Enum.Font.Code, Vector2.new(387420489, 387420489)).X, 0, 20)
			end
		end;
		if L_766_arg0.UserInputType.Name == "MouseMovement" then
			if not L_5_.popup and not L_5_.warning and not L_5_.slider then
				L_764_arg0.title.BorderColor3 = library_flags["Menu Accent Color"]
			end
		end
	end)
	L_764_arg0.title.InputChanged:connect(function(L_767_arg0)
		if L_767_arg0.UserInputType.Name == "MouseMovement" then
			if L_764_arg0.tip then
				L_5_.tooltip.Position = UDim2.new(0, L_767_arg0.Position.X + 56, 0, L_767_arg0.Position.Y - 10)
			end
		end
	end)
	L_764_arg0.title.InputEnded:connect(function(L_768_arg0)
		if L_768_arg0.UserInputType.Name == "MouseMovement" then
			L_764_arg0.title.BorderColor3 = Color3.new()
			L_5_.tooltip.Position = UDim2.new(2)
		end
	end)
end;
local function L_16_func(L_769_arg0, L_770_arg1)
	L_769_arg0.hasInit = true;
	local L_771_;
	local L_772_;
	local L_773_;
	if L_769_arg0.sub then
		L_769_arg0.main = L_769_arg0:getMain()
	else
		L_769_arg0.main = L_769_arg0.main or L_5_:Create("Frame", {
			LayoutOrder = L_769_arg0.position,
			Size = UDim2.new(1, 0, 0, 20),
			BackgroundTransparency = 1,
			Parent = L_770_arg1
		})
		L_5_:Create("TextLabel", {
			Position = UDim2.new(0, 6, 0, 0),
			Size = UDim2.new(1, -12, 1, 0),
			BackgroundTransparency = 1,
			Text = L_769_arg0.text,
			TextSize = 15,
			Font = Enum.Font.Code,
			TextColor3 = Color3.fromRGB(210, 210, 210),
			TextXAlignment = Enum.TextXAlignment.Left,
			Parent = L_769_arg0.main
		})
	end;
	local L_774_ = L_5_:Create(L_769_arg0.sub and "TextButton" or "TextLabel", {
		Position = UDim2.new(1, -6 - (L_769_arg0.subpos or 0), 0, L_769_arg0.sub and 2 or 3),
		SizeConstraint = Enum.SizeConstraint.RelativeYY,
		BackgroundColor3 = Color3.fromRGB(30, 30, 30),
		BorderSizePixel = 0,
		TextSize = 15,
		Font = Enum.Font.Code,
		TextColor3 = Color3.fromRGB(160, 160, 160),
		TextXAlignment = Enum.TextXAlignment.Right,
		Parent = L_769_arg0.main
	})
	if L_769_arg0.sub then
		L_774_.AutoButtonColor = false
	end;
	local L_775_ = L_769_arg0.sub and L_774_ or L_769_arg0.main;
	local L_776_;
	L_775_.InputEnded:connect(function(L_777_arg0)
		if L_777_arg0.UserInputType.Name == "MouseButton1" then
			L_771_ = true;
			L_774_.Text = "[...]"
			L_774_.Size = UDim2.new(0, - textService:GetTextSize(L_774_.Text, 16, Enum.Font.Code, Vector2.new(387420489, 387420489)).X, 0, 16)
			L_774_.TextColor3 = library_flags["Menu Accent Color"]
		end
	end)
	L_5_:AddConnection(inputService.InputBegan, function(L_778_arg0)
		if inputService:GetFocusedTextBox() then
			return
		end;
		if L_771_ then
			local L_779_ = table.find(L_12_, L_778_arg0.UserInputType) and not L_769_arg0.nomouse and L_778_arg0.UserInputType;
			L_769_arg0:SetKey(L_779_ or not table.find(L_11_, L_778_arg0.KeyCode) and L_778_arg0.KeyCode)
		else
			if (L_778_arg0.KeyCode.Name == L_769_arg0.key or L_778_arg0.UserInputType.Name == L_769_arg0.key) and not L_771_ then
				if L_769_arg0.mode == "toggle" then
					library_flags[L_769_arg0.flag] = not library_flags[L_769_arg0.flag]
					L_769_arg0.callback(library_flags[L_769_arg0.flag], 0)
				else
					library_flags[L_769_arg0.flag] = true;
					if L_773_ then
						L_773_:Disconnect()
						L_769_arg0.callback(true, 0)
					end;
					L_773_ = L_5_:AddConnection(runService.RenderStepped, function(L_780_arg0)
						if not inputService:GetFocusedTextBox() then
							L_769_arg0.callback(nil, L_780_arg0)
						end
					end)
				end
			end
		end
	end)
	L_5_:AddConnection(inputService.InputEnded, function(L_781_arg0)
		if L_769_arg0.key ~= "none" then
			if L_781_arg0.KeyCode.Name == L_769_arg0.key or L_781_arg0.UserInputType.Name == L_769_arg0.key or L_781_arg0.UserInputType.Name == "MouseMovement" then
				if L_773_ then
					L_773_:Disconnect()
					L_769_arg0.callback(true, 0)
				end
			end
		end
	end)
	function L_769_arg0:SetKey(L_782_arg0)
		L_771_ = false;
		L_774_.TextColor3 = Color3.fromRGB(160, 160, 160)
		if L_773_ then
			L_773_:Disconnect()
			L_769_arg0.callback(true, 0)
		end;
		self.key = L_782_arg0 and L_782_arg0.Name or L_782_arg0 or self.key;
		if self.key == "Backspace" then
			self.key = "none"
			L_774_.Text = "[NONE]"
		else
			local L_783_ = self.key;
			if self.key:match"Mouse" then
				L_783_ = self.key:gsub("Button", ""):gsub("Mouse", "M")
			elseif self.key:match"Shift" or self.key:match"Alt" or self.key:match"Control" then
				L_783_ = self.key:gsub("Left", "L"):gsub("Right", "R")
			end;
			L_774_.Text = "[" .. L_783_:gsub("Control", "CTRL"):upper() .. "]"
		end;
		L_774_.Size = UDim2.new(0, - textService:GetTextSize(L_774_.Text, 16, Enum.Font.Code, Vector2.new(387420489, 387420489)).X, 0, 16)
	end;
	L_769_arg0:SetKey()
end;
local function L_17_func(L_784_arg0, L_785_arg1)
	L_784_arg0.hasInit = true;
	if L_784_arg0.sub then
		L_784_arg0.main = L_784_arg0:getMain()
		L_784_arg0.main.Size = UDim2.new(1, 0, 0, 36)
	else
		L_784_arg0.main = L_5_:Create("Frame", {
			LayoutOrder = L_784_arg0.position,
			BackgroundTransparency = 1,
			Parent = L_785_arg1
		})
		L_784_arg0.main.Size = UDim2.new(1, 0, 0, L_784_arg0.textpos and 20 or 36)
	end;
	L_784_arg0.slider = L_5_:Create("Frame", {
		Position = UDim2.new(0, 6, 0, L_784_arg0.sub and 22 or L_784_arg0.textpos and 4 or 20),
		Size = UDim2.new(1, -12, 0, 12),
		BackgroundColor3 = Color3.fromRGB(50, 50, 50),
		BorderColor3 = Color3.new(),
		Parent = L_784_arg0.main
	})
	L_5_:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2454009026",
		ImageColor3 = Color3.new(),
		ImageTransparency = 0.8,
		Parent = L_784_arg0.slider
	})
	L_784_arg0.fill = L_5_:Create("Frame", {
		BackgroundColor3 = library_flags["Menu Accent Color"],
		BorderSizePixel = 0,
		Parent = L_784_arg0.slider
	})
	L_5_:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.fromRGB(60, 60, 60),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = L_784_arg0.slider
	})
	L_784_arg0.title = L_5_:Create("TextLabel", {
		Position = UDim2.new(0, 6, 0, 0),
		Size = UDim2.new(1, - ((L_784_arg0.sub or L_784_arg0.textpos) and 12 or 6), 0, (L_784_arg0.sub or L_784_arg0.textpos) and 12 or 18),
		BackgroundTransparency = 1,
		Text = (L_784_arg0.text == "nil" and "" or L_784_arg0.text .. ": ") .. L_784_arg0.value .. L_784_arg0.suffix,
		TextSize = (L_784_arg0.sub or L_784_arg0.textpos) and 14 or 15,
		Font = Enum.Font.Code,
		TextColor3 = Color3.fromRGB(210, 210, 210),
		TextXAlignment = Enum.TextXAlignment[(L_784_arg0.sub or L_784_arg0.textpos) and "Center" or "Left"],
		Parent = (L_784_arg0.sub or L_784_arg0.textpos) and L_784_arg0.slider or L_784_arg0.main
	})
	table.insert(L_5_.theme, L_784_arg0.fill)
	L_5_:Create("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(115, 115, 115)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(253, 253, 253))
		}),
		Rotation = -90,
		Parent = L_784_arg0.fill
	})
	if L_784_arg0.min >= 0 then
		L_784_arg0.fill.Size = UDim2.new((L_784_arg0.value - L_784_arg0.min) / (L_784_arg0.max - L_784_arg0.min), 0, 1, 0)
	else
		L_784_arg0.fill.Position = UDim2.new((0 - L_784_arg0.min) / (L_784_arg0.max - L_784_arg0.min), 0, 0, 0)
		L_784_arg0.fill.Size = UDim2.new(L_784_arg0.value / (L_784_arg0.max - L_784_arg0.min), 0, 1, 0)
	end;
	local L_786_ = (L_784_arg0.sub or L_784_arg0.textpos) and L_784_arg0.slider or L_784_arg0.main;
	L_786_.InputBegan:connect(function(L_787_arg0)
		if L_787_arg0.UserInputType.Name == "MouseButton1" then
			L_5_.slider = L_784_arg0;
			L_784_arg0.slider.BorderColor3 = library_flags["Menu Accent Color"]
			L_784_arg0:SetValue(L_784_arg0.min + (L_787_arg0.Position.X - L_784_arg0.slider.AbsolutePosition.X) / L_784_arg0.slider.AbsoluteSize.X * (L_784_arg0.max - L_784_arg0.min))
		end;
		if L_787_arg0.UserInputType.Name == "MouseMovement" then
			if not L_5_.popup and not L_5_.warning and not L_5_.slider then
				L_784_arg0.slider.BorderColor3 = library_flags["Menu Accent Color"]
			end;
			if L_784_arg0.tip then
				L_5_.tooltip.Text = L_784_arg0.tip;
				L_5_.tooltip.Size = UDim2.new(0, textService:GetTextSize(L_784_arg0.tip, 15, Enum.Font.Code, Vector2.new(387420489, 387420489)).X, 0, 20)
			end
		end
	end)
	L_786_.InputChanged:connect(function(L_788_arg0)
		if L_788_arg0.UserInputType.Name == "MouseMovement" then
			if L_784_arg0.tip then
				L_5_.tooltip.Position = UDim2.new(0, L_788_arg0.Position.X + 56, 0, L_788_arg0.Position.Y - 10)
			end
		end
	end)
	L_786_.InputEnded:connect(function(L_789_arg0)
		if L_789_arg0.UserInputType.Name == "MouseMovement" then
			L_5_.tooltip.Position = UDim2.new(2)
			if L_784_arg0 ~= L_5_.slider then
				L_784_arg0.slider.BorderColor3 = Color3.new()
			end
		end
	end)
	function L_784_arg0:SetValue(L_790_arg0, L_791_arg1)
		if typeof(L_790_arg0) ~= "number" then
			L_790_arg0 = 0
		end;
		L_790_arg0 = L_5_.round(L_790_arg0, L_784_arg0.float)
		L_790_arg0 = math.clamp(L_790_arg0, self.min, self.max)
		if self.min >= 0 then
			L_784_arg0.fill:TweenSize(UDim2.new((L_790_arg0 - self.min) / (self.max - self.min), 0, 1, 0), "Out", "Quad", 0.05, true)
		else
			L_784_arg0.fill:TweenPosition(UDim2.new((0 - self.min) / (self.max - self.min), 0, 0, 0), "Out", "Quad", 0.05, true)
			L_784_arg0.fill:TweenSize(UDim2.new(L_790_arg0 / (self.max - self.min), 0, 1, 0), "Out", "Quad", 0.1, true)
		end;
		library_flags[self.flag] = L_790_arg0;
		self.value = L_790_arg0;
		L_784_arg0.title.Text = (L_784_arg0.text == "nil" and "" or L_784_arg0.text .. ": ") .. L_784_arg0.value .. L_784_arg0.suffix;
		if not L_791_arg1 then
			self.callback(L_790_arg0)
		end
	end;
	delay(1, function()
		if L_5_ then
			L_784_arg0:SetValue(L_784_arg0.value)
		end
	end)
end;
local function L_18_func(L_792_arg0, L_793_arg1)
	L_792_arg0.hasInit = true;
	if L_792_arg0.sub then
		L_792_arg0.main = L_792_arg0:getMain()
		L_792_arg0.main.Size = UDim2.new(1, 0, 0, 44)
	else
		L_792_arg0.main = L_5_:Create("Frame", {
			LayoutOrder = L_792_arg0.position,
			Size = UDim2.new(1, 0, 0, L_792_arg0.text == " " and 26 or 44),
			BackgroundTransparency = 1,
			Parent = L_793_arg1
		})
		if L_792_arg0.text ~= " " then
			L_5_:Create("TextLabel", {
				Position = UDim2.new(0, 6, 0, 0),
				Size = UDim2.new(1, -12, 0, 18),
				BackgroundTransparency = 1,
				Text = L_792_arg0.text,
				TextSize = 15,
				Font = Enum.Font.Code,
				TextColor3 = Color3.fromRGB(210, 210, 210),
				TextXAlignment = Enum.TextXAlignment.Left,
				Parent = L_792_arg0.main
			})
		end
	end;
	local function L_794_func()
		local L_799_ = ""
		for L_800_forvar0, L_801_forvar1 in next, L_792_arg0.values do
			L_799_ = L_799_ .. (L_792_arg0.value[L_801_forvar1] and tostring(L_801_forvar1) .. ", " or "")
		end;
		return string.sub(L_799_, 1, # L_799_ - 2)
	end;
	L_792_arg0.listvalue = L_5_:Create("TextLabel", {
		Position = UDim2.new(0, 6, 0, L_792_arg0.text == " " and not L_792_arg0.sub and 4 or 22),
		Size = UDim2.new(1, -12, 0, 18),
		BackgroundColor3 = Color3.fromRGB(50, 50, 50),
		BorderColor3 = Color3.new(),
		Text = " " .. (typeof(L_792_arg0.value) == "string" and L_792_arg0.value or L_794_func()),
		TextSize = 15,
		Font = Enum.Font.Code,
		TextColor3 = Color3.new(1, 1, 1),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		Parent = L_792_arg0.main
	})
	L_5_:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2454009026",
		ImageColor3 = Color3.new(),
		ImageTransparency = 0.8,
		Parent = L_792_arg0.listvalue
	})
	L_5_:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.fromRGB(60, 60, 60),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = L_792_arg0.listvalue
	})
	L_792_arg0.arrow = L_5_:Create("ImageLabel", {
		Position = UDim2.new(1, -14, 0, 5),
		Size = UDim2.new(0, 8, 0, 8),
		Rotation = 90,
		BackgroundTransparency = 1,
		Image = "rbxassetid://4918373417",
		ImageColor3 = Color3.new(1, 1, 1),
		ScaleType = Enum.ScaleType.Fit,
		ImageTransparency = 0.4,
		Parent = L_792_arg0.listvalue
	})
	L_792_arg0.holder = L_5_:Create("TextButton", {
		ZIndex = 4,
		BackgroundColor3 = Color3.fromRGB(40, 40, 40),
		BorderColor3 = Color3.new(),
		Text = "",
		AutoButtonColor = false,
		Visible = false,
		Parent = L_5_.base
	})
	L_792_arg0.content = L_5_:Create("ScrollingFrame", {
		ZIndex = 4,
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ScrollBarImageColor3 = Color3.new(),
		ScrollBarThickness = 3,
		ScrollingDirection = Enum.ScrollingDirection.Y,
		VerticalScrollBarInset = Enum.ScrollBarInset.Always,
		TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png",
		BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png",
		Parent = L_792_arg0.holder
	})
	L_5_:Create("ImageLabel", {
		ZIndex = 4,
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.fromRGB(60, 60, 60),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = L_792_arg0.holder
	})
	local L_795_ = L_5_:Create("UIListLayout", {
		Padding = UDim.new(0, 2),
		Parent = L_792_arg0.content
	})
	L_5_:Create("UIPadding", {
		PaddingTop = UDim.new(0, 3),
		PaddingLeft = UDim.new(0, 3),
		Parent = L_792_arg0.content
	})
	local L_796_ = 0;
	L_795_.Changed:connect(function()
		L_792_arg0.holder.Size = UDim2.new(0, L_792_arg0.listvalue.AbsoluteSize.X, 0, 6 + (L_796_ > L_792_arg0.max and L_792_arg0.max * 22 or L_795_.AbsoluteContentSize.Y))
		L_792_arg0.content.CanvasSize = UDim2.new(0, 0, 0, 4 + L_795_.AbsoluteContentSize.Y)
	end)
	local L_797_ = L_792_arg0.sub and L_792_arg0.listvalue or L_792_arg0.main;
	L_792_arg0.listvalue.InputBegan:connect(function(L_802_arg0)
		if L_802_arg0.UserInputType.Name == "MouseButton1" then
			if L_5_.popup == L_792_arg0 then
				L_5_.popup:Close()
				return
			end;
			if L_5_.popup then
				L_5_.popup:Close()
			end;
			L_792_arg0.arrow.Rotation = -90;
			L_792_arg0.open = true;
			L_792_arg0.holder.Visible = true;
			local L_803_ = L_792_arg0.main.AbsolutePosition;
			L_792_arg0.holder.Position = UDim2.new(0, L_803_.X + 6, 0, L_803_.Y + 80)
			L_5_.popup = L_792_arg0;
			L_792_arg0.listvalue.BorderColor3 = library_flags["Menu Accent Color"]
		end;
		if L_802_arg0.UserInputType.Name == "MouseMovement" then
			if not L_5_.popup and not L_5_.warning and not L_5_.slider then
				L_792_arg0.listvalue.BorderColor3 = library_flags["Menu Accent Color"]
			end
		end
	end)
	L_792_arg0.listvalue.InputEnded:connect(function(L_804_arg0)
		if L_804_arg0.UserInputType.Name == "MouseMovement" then
			if not L_792_arg0.open then
				L_792_arg0.listvalue.BorderColor3 = Color3.new()
			end
		end
	end)
	L_797_.InputBegan:connect(function(L_805_arg0)
		if L_805_arg0.UserInputType.Name == "MouseMovement" then
			if L_792_arg0.tip then
				L_5_.tooltip.Text = L_792_arg0.tip;
				L_5_.tooltip.Size = UDim2.new(0, textService:GetTextSize(L_792_arg0.tip, 15, Enum.Font.Code, Vector2.new(387420489, 387420489)).X, 0, 20)
			end
		end
	end)
	L_797_.InputChanged:connect(function(L_806_arg0)
		if L_806_arg0.UserInputType.Name == "MouseMovement" then
			if L_792_arg0.tip then
				L_5_.tooltip.Position = UDim2.new(0, L_806_arg0.Position.X + 56, 0, L_806_arg0.Position.Y - 10)
			end
		end
	end)
	L_797_.InputEnded:connect(function(L_807_arg0)
		if L_807_arg0.UserInputType.Name == "MouseMovement" then
			L_5_.tooltip.Position = UDim2.new(2)
		end
	end)
	local L_798_;
	function L_792_arg0:AddValue(L_808_arg0, L_809_arg1)
		if self.labels[L_808_arg0] then
			return
		end;
		L_796_ = L_796_ + 1;
		if self.multiselect then
			self.values[L_808_arg0] = L_809_arg1
		else
			if not table.find(self.values, L_808_arg0) then
				table.insert(self.values, L_808_arg0)
			end
		end;
		local L_810_ = L_5_:Create("TextLabel", {
			ZIndex = 4,
			Size = UDim2.new(1, 0, 0, 20),
			BackgroundTransparency = 1,
			Text = L_808_arg0,
			TextSize = 15,
			Font = Enum.Font.Code,
			TextTransparency = self.multiselect and (self.value[L_808_arg0] and 1 or 0) or self.value == L_808_arg0 and 1 or 0,
			TextColor3 = Color3.fromRGB(210, 210, 210),
			TextXAlignment = Enum.TextXAlignment.Left,
			Parent = L_792_arg0.content
		})
		self.labels[L_808_arg0] = L_810_;
		local L_811_ = L_5_:Create("TextLabel", {
			ZIndex = 4,
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 0.8,
			Text = " " .. L_808_arg0,
			TextSize = 15,
			Font = Enum.Font.Code,
			TextColor3 = library_flags["Menu Accent Color"],
			TextXAlignment = Enum.TextXAlignment.Left,
			Visible = self.multiselect and self.value[L_808_arg0] or self.value == L_808_arg0,
			Parent = L_810_
		})
		L_798_ = L_798_ or self.value == L_808_arg0 and L_811_;
		table.insert(L_5_.theme, L_811_)
		L_810_.InputBegan:connect(function(L_812_arg0)
			if L_812_arg0.UserInputType.Name == "MouseButton1" then
				if self.multiselect then
					self.value[L_808_arg0] = not self.value[L_808_arg0]
					self:SetValue(self.value)
				else
					self:SetValue(L_808_arg0)
					self:Close()
				end
			end
		end)
	end;
	for L_813_forvar0, L_814_forvar1 in next, L_792_arg0.values do
		L_792_arg0:AddValue(tostring(typeof(L_813_forvar0) == "number" and L_814_forvar1 or L_813_forvar0))
	end;
	function L_792_arg0:RemoveValue(L_815_arg0)
		local L_816_ = self.labels[L_815_arg0]
		if L_816_ then
			L_816_:Destroy()
			self.labels[L_815_arg0] = nil;
			L_796_ = L_796_ - 1;
			if self.multiselect then
				self.values[L_815_arg0] = nil;
				self:SetValue(self.value)
			else
				table.remove(self.values, table.find(self.values, L_815_arg0))
				if self.value == L_815_arg0 then
					L_798_ = nil;
					self:SetValue(self.values[1] or "")
				end
			end
		end
	end;
	function L_792_arg0:SetValue(L_817_arg0, L_818_arg1)
		if self.multiselect and typeof(L_817_arg0) ~= "table" then
			L_817_arg0 = {}
			for L_819_forvar0, L_820_forvar1 in next, self.values do
				L_817_arg0[L_820_forvar1] = false
			end
		end;
		self.value = typeof(L_817_arg0) == "table" and L_817_arg0 or tostring(table.find(self.values, L_817_arg0) and L_817_arg0 or self.values[1])
		library_flags[self.flag] = self.value;
		L_792_arg0.listvalue.Text = " " .. (self.multiselect and L_794_func() or self.value)
		if self.multiselect then
			for L_821_forvar0, L_822_forvar1 in next, self.labels do
				L_822_forvar1.TextTransparency = self.value[L_821_forvar0] and 1 or 0;
				if L_822_forvar1:FindFirstChild"TextLabel" then
					L_822_forvar1.TextLabel.Visible = self.value[L_821_forvar0]
				end
			end
		else
			if L_798_ then
				L_798_.TextTransparency = 0;
				if L_798_:FindFirstChild"TextLabel" then
					L_798_.TextLabel.Visible = false
				end
			end;
			if self.labels[self.value] then
				L_798_ = self.labels[self.value]
				L_798_.TextTransparency = 1;
				if L_798_:FindFirstChild"TextLabel" then
					L_798_.TextLabel.Visible = true
				end
			end
		end;
		if not L_818_arg1 then
			self.callback(self.value)
		end
	end;
	delay(1, function()
		if L_5_ then
			L_792_arg0:SetValue(L_792_arg0.value)
		end
	end)
	function L_792_arg0:Close()
		L_5_.popup = nil;
		L_792_arg0.arrow.Rotation = 90;
		self.open = false;
		L_792_arg0.holder.Visible = false;
		L_792_arg0.listvalue.BorderColor3 = Color3.new()
	end;
	return L_792_arg0
end;
local function L_19_func(L_823_arg0, L_824_arg1)
	L_823_arg0.hasInit = true;
	L_823_arg0.main = L_5_:Create("Frame", {
		LayoutOrder = L_823_arg0.position,
		Size = UDim2.new(1, 0, 0, L_823_arg0.text == "nil" and 26 or 44),
		BackgroundTransparency = 1,
		Parent = L_824_arg1
	})
	if L_823_arg0.text ~= "nil" then
		L_823_arg0.title = L_5_:Create("TextLabel", {
			Position = UDim2.new(0, 6, 0, 0),
			Size = UDim2.new(1, -12, 0, 18),
			BackgroundTransparency = 1,
			Text = L_823_arg0.text,
			TextSize = 15,
			Font = Enum.Font.Code,
			TextColor3 = Color3.fromRGB(210, 210, 210),
			TextXAlignment = Enum.TextXAlignment.Left,
			Parent = L_823_arg0.main
		})
	end;
	L_823_arg0.holder = L_5_:Create("Frame", {
		Position = UDim2.new(0, 6, 0, L_823_arg0.text == "nil" and 4 or 20),
		Size = UDim2.new(1, -12, 0, 20),
		BackgroundColor3 = Color3.fromRGB(50, 50, 50),
		BorderColor3 = Color3.new(),
		Parent = L_823_arg0.main
	})
	L_5_:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2454009026",
		ImageColor3 = Color3.new(),
		ImageTransparency = 0.8,
		Parent = L_823_arg0.holder
	})
	L_5_:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.fromRGB(60, 60, 60),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = L_823_arg0.holder
	})
	local L_825_ = L_5_:Create("TextBox", {
		Position = UDim2.new(0, 4, 0, 0),
		Size = UDim2.new(1, -4, 1, 0),
		BackgroundTransparency = 1,
		Text = "  " .. L_823_arg0.value,
		TextSize = 15,
		Font = Enum.Font.Code,
		TextColor3 = Color3.new(1, 1, 1),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextWrapped = true,
		ClearTextOnFocus = false,
		Parent = L_823_arg0.holder
	})
	L_825_.FocusLost:connect(function(L_826_arg0)
		L_823_arg0.holder.BorderColor3 = Color3.new()
		L_823_arg0:SetValue(L_825_.Text, L_826_arg0)
	end)
	L_825_.Focused:connect(function()
		L_823_arg0.holder.BorderColor3 = library_flags["Menu Accent Color"]
	end)
	L_825_.InputBegan:connect(function(L_827_arg0)
		if L_827_arg0.UserInputType.Name == "MouseButton1" then
			L_823_arg0:SetState(not L_823_arg0.state)
		end;
		if L_827_arg0.UserInputType.Name == "MouseMovement" then
			if not L_5_.popup and not L_5_.warning and not L_5_.slider then
				L_823_arg0.holder.BorderColor3 = library_flags["Menu Accent Color"]
			end;
			if L_823_arg0.tip then
				L_5_.tooltip.Text = L_823_arg0.tip;
				L_5_.tooltip.Size = UDim2.new(0, textService:GetTextSize(L_823_arg0.tip, 15, Enum.Font.Code, Vector2.new(387420489, 387420489)).X, 0, 20)
			end
		end
	end)
	L_825_.InputChanged:connect(function(L_828_arg0)
		if L_828_arg0.UserInputType.Name == "MouseMovement" then
			if L_823_arg0.tip then
				L_5_.tooltip.Position = UDim2.new(0, L_828_arg0.Position.X + 56, 0, L_828_arg0.Position.Y - 10)
			end
		end
	end)
	L_825_.InputEnded:connect(function(L_829_arg0)
		if L_829_arg0.UserInputType.Name == "MouseMovement" then
			if not L_825_:IsFocused() then
				L_823_arg0.holder.BorderColor3 = Color3.new()
			end;
			L_5_.tooltip.Position = UDim2.new(2)
		end
	end)
	function L_823_arg0:SetValue(L_830_arg0, L_831_arg1)
		if tostring(L_830_arg0) == "" then
			L_825_.Text = self.value
		else
			library_flags[self.flag] = tostring(L_830_arg0)
			self.value = tostring(L_830_arg0)
			L_825_.Text = self.value;
			self.callback(L_830_arg0, L_831_arg1)
		end
	end;
	delay(1, function()
		if L_5_ then
			L_823_arg0:SetValue(L_823_arg0.value)
		end
	end)
end;
local function L_20_func(L_832_arg0)
	L_832_arg0.mainHolder = L_5_:Create("TextButton", {
		ZIndex = 4,
		Size = UDim2.new(0, L_832_arg0.trans and 200 or 184, 0, 200),
		BackgroundColor3 = Color3.fromRGB(40, 40, 40),
		BorderColor3 = Color3.new(),
		AutoButtonColor = false,
		Visible = false,
		Parent = L_5_.base
	})
	L_5_:Create("ImageLabel", {
		ZIndex = 4,
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.fromRGB(60, 60, 60),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = L_832_arg0.mainHolder
	})
	local L_833_, L_834_, L_835_ = Color3.toHSV(L_832_arg0.color)
	L_833_, L_834_, L_835_ = L_833_ == 0 and 1 or L_833_, L_834_ + 0.005, L_835_ - 0.005;
	local L_836_;
	local L_837_;
	local L_838_;
	local L_839_;
	if L_832_arg0.trans then
		L_839_ = L_5_:Create("ImageLabel", {
			ZIndex = 5,
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			Image = "rbxassetid://2454009026",
			ImageColor3 = Color3.fromHSV(L_833_, 1, 1),
			Rotation = 180,
			Parent = L_5_:Create("ImageLabel", {
				ZIndex = 4,
				AnchorPoint = Vector2.new(1, 0),
				Position = UDim2.new(1, -6, 0, 6),
				Size = UDim2.new(0, 10, 1, -12),
				BorderColor3 = Color3.new(),
				Image = "rbxassetid://4632082392",
				ScaleType = Enum.ScaleType.Tile,
				TileSize = UDim2.new(0, 5, 0, 5),
				Parent = L_832_arg0.mainHolder
			})
		})
		L_832_arg0.transSlider = L_5_:Create("Frame", {
			ZIndex = 5,
			Position = UDim2.new(0, 0, L_832_arg0.trans, 0),
			Size = UDim2.new(1, 0, 0, 2),
			BackgroundColor3 = Color3.fromRGB(38, 41, 65),
			BorderColor3 = Color3.fromRGB(255, 255, 255),
			Parent = L_839_
		})
		L_839_.InputBegan:connect(function(L_845_arg0)
			if L_845_arg0.UserInputType.Name == "MouseButton1" then
				L_838_ = true;
				L_832_arg0:SetTrans(1 - (L_845_arg0.Position.Y - L_839_.AbsolutePosition.Y) / L_839_.AbsoluteSize.Y)
			end
		end)
		L_839_.InputEnded:connect(function(L_846_arg0)
			if L_846_arg0.UserInputType.Name == "MouseButton1" then
				L_838_ = false
			end
		end)
	end;
	local L_840_ = L_5_:Create("Frame", {
		ZIndex = 4,
		AnchorPoint = Vector2.new(0, 1),
		Position = UDim2.new(0, 6, 1, -6),
		Size = UDim2.new(1, L_832_arg0.trans and -28 or -12, 0, 10),
		BackgroundColor3 = Color3.new(1, 1, 1),
		BorderColor3 = Color3.new(),
		Parent = L_832_arg0.mainHolder
	})
	local L_841_ = L_5_:Create("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
			ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 0, 255)),
			ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 0, 255)),
			ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 255)),
			ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 255, 0)),
			ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 255, 0)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))
		}),
		Parent = L_840_
	})
	local L_842_ = L_5_:Create("Frame", {
		ZIndex = 4,
		Position = UDim2.new(1 - L_833_, 0, 0, 0),
		Size = UDim2.new(0, 2, 1, 0),
		BackgroundColor3 = Color3.fromRGB(38, 41, 65),
		BorderColor3 = Color3.fromRGB(255, 255, 255),
		Parent = L_840_
	})
	L_840_.InputBegan:connect(function(L_847_arg0)
		if L_847_arg0.UserInputType.Name == "MouseButton1" then
			L_836_ = true;
			X = L_840_.AbsolutePosition.X + L_840_.AbsoluteSize.X - L_840_.AbsolutePosition.X;
			X = math.clamp((L_847_arg0.Position.X - L_840_.AbsolutePosition.X) / X, 0, 0.995)
			L_832_arg0:SetColor(Color3.fromHSV(1 - X, L_834_, L_835_))
		end
	end)
	L_840_.InputEnded:connect(function(L_848_arg0)
		if L_848_arg0.UserInputType.Name == "MouseButton1" then
			L_836_ = false
		end
	end)
	local L_843_ = L_5_:Create("ImageLabel", {
		ZIndex = 4,
		Position = UDim2.new(0, 6, 0, 6),
		Size = UDim2.new(1, L_832_arg0.trans and -28 or -12, 1, -28),
		BackgroundColor3 = Color3.fromHSV(L_833_, 1, 1),
		BorderColor3 = Color3.new(),
		Image = "rbxassetid://4155801252",
		ClipsDescendants = true,
		Parent = L_832_arg0.mainHolder
	})
	local L_844_ = L_5_:Create("Frame", {
		ZIndex = 4,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(L_834_, 0, 1 - L_835_, 0),
		Size = UDim2.new(0, 4, 0, 4),
		Rotation = 45,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		Parent = L_843_
	})
	L_843_.InputBegan:connect(function(L_849_arg0)
		if L_849_arg0.UserInputType.Name == "MouseButton1" then
			L_837_ = true;
			X = L_843_.AbsolutePosition.X + L_843_.AbsoluteSize.X - L_843_.AbsolutePosition.X;
			Y = L_843_.AbsolutePosition.Y + L_843_.AbsoluteSize.Y - L_843_.AbsolutePosition.Y;
			X = math.clamp((L_849_arg0.Position.X - L_843_.AbsolutePosition.X) / X, 0.005, 1)
			Y = math.clamp((L_849_arg0.Position.Y - L_843_.AbsolutePosition.Y) / Y, 0, 0.995)
			L_832_arg0:SetColor(Color3.fromHSV(L_833_, X, 1 - Y))
		end
	end)
	L_5_:AddConnection(inputService.InputChanged, function(L_850_arg0)
		if L_850_arg0.UserInputType.Name == "MouseMovement" then
			if L_837_ then
				X = L_843_.AbsolutePosition.X + L_843_.AbsoluteSize.X - L_843_.AbsolutePosition.X;
				Y = L_843_.AbsolutePosition.Y + L_843_.AbsoluteSize.Y - L_843_.AbsolutePosition.Y;
				X = math.clamp((L_850_arg0.Position.X - L_843_.AbsolutePosition.X) / X, 0.005, 1)
				Y = math.clamp((L_850_arg0.Position.Y - L_843_.AbsolutePosition.Y) / Y, 0, 0.995)
				L_832_arg0:SetColor(Color3.fromHSV(L_833_, X, 1 - Y))
			elseif L_836_ then
				X = L_840_.AbsolutePosition.X + L_840_.AbsoluteSize.X - L_840_.AbsolutePosition.X;
				X = math.clamp((L_850_arg0.Position.X - L_840_.AbsolutePosition.X) / X, 0, 0.995)
				L_832_arg0:SetColor(Color3.fromHSV(1 - X, L_834_, L_835_))
			elseif L_838_ then
				L_832_arg0:SetTrans(1 - (L_850_arg0.Position.Y - L_839_.AbsolutePosition.Y) / L_839_.AbsoluteSize.Y)
			end
		end
	end)
	L_843_.InputEnded:connect(function(L_851_arg0)
		if L_851_arg0.UserInputType.Name == "MouseButton1" then
			L_837_ = false
		end
	end)
	function L_832_arg0:updateVisuals(L_852_arg0)
		L_833_, L_834_, L_835_ = Color3.toHSV(L_852_arg0)
		L_833_ = L_833_ == 0 and 1 or L_833_;
		L_843_.BackgroundColor3 = Color3.fromHSV(L_833_, 1, 1)
		if L_832_arg0.trans then
			L_839_.ImageColor3 = Color3.fromHSV(L_833_, 1, 1)
		end;
		L_842_.Position = UDim2.new(1 - L_833_, 0, 0, 0)
		L_844_.Position = UDim2.new(L_834_, 0, 1 - L_835_, 0)
	end;
	return L_832_arg0
end;
local function L_21_func(L_853_arg0, L_854_arg1)
	L_853_arg0.hasInit = true;
	if L_853_arg0.sub then
		L_853_arg0.main = L_853_arg0:getMain()
	else
		L_853_arg0.main = L_5_:Create("Frame", {
			LayoutOrder = L_853_arg0.position,
			Size = UDim2.new(1, 0, 0, 20),
			BackgroundTransparency = 1,
			Parent = L_854_arg1
		})
		L_853_arg0.title = L_5_:Create("TextLabel", {
			Position = UDim2.new(0, 6, 0, 0),
			Size = UDim2.new(1, -12, 1, 0),
			BackgroundTransparency = 1,
			Text = L_853_arg0.text,
			TextSize = 15,
			Font = Enum.Font.Code,
			TextColor3 = Color3.fromRGB(210, 210, 210),
			TextXAlignment = Enum.TextXAlignment.Left,
			Parent = L_853_arg0.main
		})
	end;
	L_853_arg0.visualize = L_5_:Create(L_853_arg0.sub and "TextButton" or "Frame", {
		Position = UDim2.new(1, - (L_853_arg0.subpos or 0) - 24, 0, 4),
		Size = UDim2.new(0, 18, 0, 12),
		SizeConstraint = Enum.SizeConstraint.RelativeYY,
		BackgroundColor3 = L_853_arg0.color,
		BorderColor3 = Color3.new(),
		Parent = L_853_arg0.main
	})
	L_5_:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2454009026",
		ImageColor3 = Color3.new(),
		ImageTransparency = 0.6,
		Parent = L_853_arg0.visualize
	})
	L_5_:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.fromRGB(60, 60, 60),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = L_853_arg0.visualize
	})
	local L_855_ = L_853_arg0.sub and L_853_arg0.visualize or L_853_arg0.main;
	if L_853_arg0.sub then
		L_853_arg0.visualize.Text = ""
		L_853_arg0.visualize.AutoButtonColor = false
	end;
	L_855_.InputBegan:connect(function(L_856_arg0)
		if L_856_arg0.UserInputType.Name == "MouseButton1" then
			if not L_853_arg0.mainHolder then
				L_20_func(L_853_arg0)
			end;
			if L_5_.popup == L_853_arg0 then
				L_5_.popup:Close()
				return
			end;
			if L_5_.popup then
				L_5_.popup:Close()
			end;
			L_853_arg0.open = true;
			local L_857_ = L_853_arg0.main.AbsolutePosition;
			L_853_arg0.mainHolder.Position = UDim2.new(0, L_857_.X + 36 + (L_853_arg0.trans and -16 or 0), 0, L_857_.Y + 56)
			L_853_arg0.mainHolder.Visible = true;
			L_5_.popup = L_853_arg0;
			L_853_arg0.visualize.BorderColor3 = library_flags["Menu Accent Color"]
		end;
		if L_856_arg0.UserInputType.Name == "MouseMovement" then
			if not L_5_.popup and not L_5_.warning and not L_5_.slider then
				L_853_arg0.visualize.BorderColor3 = library_flags["Menu Accent Color"]
			end;
			if L_853_arg0.tip then
				L_5_.tooltip.Text = L_853_arg0.tip;
				L_5_.tooltip.Size = UDim2.new(0, textService:GetTextSize(L_853_arg0.tip, 15, Enum.Font.Code, Vector2.new(387420489, 387420489)).X, 0, 20)
			end
		end
	end)
	L_855_.InputChanged:connect(function(L_858_arg0)
		if L_858_arg0.UserInputType.Name == "MouseMovement" then
			if L_853_arg0.tip then
				L_5_.tooltip.Position = UDim2.new(0, L_858_arg0.Position.X + 56, 0, L_858_arg0.Position.Y - 10)
			end
		end
	end)
	L_855_.InputEnded:connect(function(L_859_arg0)
		if L_859_arg0.UserInputType.Name == "MouseMovement" then
			if not L_853_arg0.open then
				L_853_arg0.visualize.BorderColor3 = Color3.new()
			end;
			L_5_.tooltip.Position = UDim2.new(2)
		end
	end)
	function L_853_arg0:SetColor(L_860_arg0, L_861_arg1)
		if typeof(L_860_arg0) == "table" then
			L_860_arg0 = Color3.new(L_860_arg0[1], L_860_arg0[2], L_860_arg0[3])
		end;
		L_860_arg0 = L_860_arg0 or Color3.new(1, 1, 1)
		if self.mainHolder then
			self:updateVisuals(L_860_arg0)
		end;
		L_853_arg0.visualize.BackgroundColor3 = L_860_arg0;
		library_flags[self.flag] = L_860_arg0;
		self.color = L_860_arg0;
		if not L_861_arg1 then
			self.callback(L_860_arg0)
		end
	end;
	if L_853_arg0.trans then
		function L_853_arg0:SetTrans(L_862_arg0, L_863_arg1)
			L_862_arg0 = math.clamp(tonumber(L_862_arg0) or 0, 0, 1)
			if self.transSlider then
				self.transSlider.Position = UDim2.new(0, 0, L_862_arg0, 0)
			end;
			self.trans = L_862_arg0;
			library_flags[self.flag .. " Transparency"] = 1 - L_862_arg0;
			self.calltrans(L_862_arg0)
		end;
		L_853_arg0:SetTrans(L_853_arg0.trans)
	end;
	delay(1, function()
		if L_5_ then
			L_853_arg0:SetColor(L_853_arg0.color)
		end
	end)
	function L_853_arg0:Close()
		L_5_.popup = nil;
		self.open = false;
		self.mainHolder.Visible = false;
		L_853_arg0.visualize.BorderColor3 = Color3.new()
	end
end;
function L_5_:AddTab(L_864_arg0, L_865_arg1)
	local L_866_ = {
		canInit = true,
		hasInit = false,
		columns = {},
		title = tostring(L_864_arg0)
	}
	table.insert(self.tabs, L_865_arg1 or # self.tabs + 1, L_866_)
	function L_866_:GetColumn(L_867_arg0)
		return self.columns[L_867_arg0]
	end;
	function L_866_:AddColumn()
		local L_868_ = {
			sections = {},
			position = # self.columns,
			canInit = true,
			tab = self
		}
		table.insert(self.columns, L_868_)
		function L_868_:AddSection(L_869_arg0)
			local L_870_ = {
				title = tostring(L_869_arg0),
				hasInit = false,
				options = {},
				canInit = true,
				column = self
			}
			table.insert(self.sections, L_870_)
			function L_870_:AddLabel(L_871_arg0)
				local L_872_ = {}
				L_872_.section = self;
				L_872_.text = tostring(L_871_arg0)
				L_872_.type = "label"
				L_872_.position = # self.options;
				L_872_.canInit = true;
				table.insert(self.options, L_872_)
				if L_5_.hasInit and self.hasInit then
					L_13_func(L_872_, self.content)
				else
					L_872_.Init = L_13_func
				end;
				return L_872_
			end;
			function L_870_:AddToggle(L_873_arg0)
				L_873_arg0 = typeof(L_873_arg0) == "table" and L_873_arg0 or {}
				L_873_arg0.section = self;
				L_873_arg0.text = tostring(L_873_arg0.text)
				L_873_arg0.state = typeof(L_873_arg0.state) == "boolean" and L_873_arg0.state or false;
				L_873_arg0.callback = typeof(L_873_arg0.callback) == "function" and L_873_arg0.callback or function()
				end;
				L_873_arg0.type = "toggle"
				L_873_arg0.position = # self.options;
				L_873_arg0.flag = (L_5_.flagprefix and L_5_.flagprefix .. " " or "") .. (L_873_arg0.flag or L_873_arg0.text)
				L_873_arg0.subcount = 0;
				L_873_arg0.canInit = L_873_arg0.canInit ~= nil and L_873_arg0.canInit or true;
				L_873_arg0.tip = L_873_arg0.tip and tostring(L_873_arg0.tip)
				L_873_arg0.style = L_873_arg0.style == 2;
				library_flags[L_873_arg0.flag] = L_873_arg0.state;
				table.insert(self.options, L_873_arg0)
				L_5_.options[L_873_arg0.flag] = L_873_arg0;
				function L_873_arg0:AddColor(L_874_arg0)
					L_874_arg0 = typeof(L_874_arg0) == "table" and L_874_arg0 or {}
					L_874_arg0.sub = true;
					L_874_arg0.subpos = self.subcount * 24;
					function L_874_arg0:getMain()
						return L_873_arg0.main
					end;
					self.subcount = self.subcount + 1;
					return L_870_:AddColor(L_874_arg0)
				end;
				function L_873_arg0:AddBind(L_875_arg0)
					L_875_arg0 = typeof(L_875_arg0) == "table" and L_875_arg0 or {}
					L_875_arg0.sub = true;
					L_875_arg0.subpos = self.subcount * 24;
					function L_875_arg0:getMain()
						return L_873_arg0.main
					end;
					self.subcount = self.subcount + 1;
					return L_870_:AddBind(L_875_arg0)
				end;
				function L_873_arg0:AddList(L_876_arg0)
					L_876_arg0 = typeof(L_876_arg0) == "table" and L_876_arg0 or {}
					L_876_arg0.sub = true;
					function L_876_arg0:getMain()
						return L_873_arg0.main
					end;
					self.subcount = self.subcount + 1;
					return L_870_:AddList(L_876_arg0)
				end;
				function L_873_arg0:AddSlider(L_877_arg0)
					L_877_arg0 = typeof(L_877_arg0) == "table" and L_877_arg0 or {}
					L_877_arg0.sub = true;
					function L_877_arg0:getMain()
						return L_873_arg0.main
					end;
					self.subcount = self.subcount + 1;
					return L_870_:AddSlider(L_877_arg0)
				end;
				if L_5_.hasInit and self.hasInit then
					L_14_func(L_873_arg0, self.content)
				else
					L_873_arg0.Init = L_14_func
				end;
				return L_873_arg0
			end;
			function L_870_:AddButton(L_878_arg0)
				L_878_arg0 = typeof(L_878_arg0) == "table" and L_878_arg0 or {}
				L_878_arg0.section = self;
				L_878_arg0.text = tostring(L_878_arg0.text)
				L_878_arg0.callback = typeof(L_878_arg0.callback) == "function" and L_878_arg0.callback or function()
				end;
				L_878_arg0.type = "button"
				L_878_arg0.position = # self.options;
				L_878_arg0.flag = (L_5_.flagprefix and L_5_.flagprefix .. " " or "") .. (L_878_arg0.flag or L_878_arg0.text)
				L_878_arg0.subcount = 0;
				L_878_arg0.canInit = L_878_arg0.canInit ~= nil and L_878_arg0.canInit or true;
				L_878_arg0.tip = L_878_arg0.tip and tostring(L_878_arg0.tip)
				table.insert(self.options, L_878_arg0)
				L_5_.options[L_878_arg0.flag] = L_878_arg0;
				function L_878_arg0:AddBind(L_879_arg0)
					L_879_arg0 = typeof(L_879_arg0) == "table" and L_879_arg0 or {}
					L_879_arg0.sub = true;
					L_879_arg0.subpos = self.subcount * 24;
					function L_879_arg0:getMain()
						L_878_arg0.main.Size = UDim2.new(1, 0, 0, 40)
						return L_878_arg0.main
					end;
					self.subcount = self.subcount + 1;
					return L_870_:AddBind(L_879_arg0)
				end;
				function L_878_arg0:AddColor(L_880_arg0)
					L_880_arg0 = typeof(L_880_arg0) == "table" and L_880_arg0 or {}
					L_880_arg0.sub = true;
					L_880_arg0.subpos = self.subcount * 24;
					function L_880_arg0:getMain()
						L_878_arg0.main.Size = UDim2.new(1, 0, 0, 40)
						return L_878_arg0.main
					end;
					self.subcount = self.subcount + 1;
					return L_870_:AddColor(L_880_arg0)
				end;
				if L_5_.hasInit and self.hasInit then
					L_15_func(L_878_arg0, self.content)
				else
					L_878_arg0.Init = L_15_func
				end;
				return L_878_arg0
			end;
			function L_870_:AddBind(L_881_arg0)
				L_881_arg0 = typeof(L_881_arg0) == "table" and L_881_arg0 or {}
				L_881_arg0.section = self;
				L_881_arg0.text = tostring(L_881_arg0.text)
				L_881_arg0.key = L_881_arg0.key and L_881_arg0.key.Name or L_881_arg0.key or "none"
				L_881_arg0.nomouse = typeof(L_881_arg0.nomouse) == "boolean" and L_881_arg0.nomouse or false;
				L_881_arg0.mode = typeof(L_881_arg0.mode) == "string" and (L_881_arg0.mode == "toggle" or L_881_arg0.mode == "hold" and L_881_arg0.mode) or "toggle"
				L_881_arg0.callback = typeof(L_881_arg0.callback) == "function" and L_881_arg0.callback or function()
				end;
				L_881_arg0.type = "bind"
				L_881_arg0.position = # self.options;
				L_881_arg0.flag = (L_5_.flagprefix and L_5_.flagprefix .. " " or "") .. (L_881_arg0.flag or L_881_arg0.text)
				L_881_arg0.canInit = L_881_arg0.canInit ~= nil and L_881_arg0.canInit or true;
				L_881_arg0.tip = L_881_arg0.tip and tostring(L_881_arg0.tip)
				table.insert(self.options, L_881_arg0)
				L_5_.options[L_881_arg0.flag] = L_881_arg0;
				if L_5_.hasInit and self.hasInit then
					L_16_func(L_881_arg0, self.content)
				else
					L_881_arg0.Init = L_16_func
				end;
				return L_881_arg0
			end;
			function L_870_:AddSlider(L_882_arg0)
				L_882_arg0 = typeof(L_882_arg0) == "table" and L_882_arg0 or {}
				L_882_arg0.section = self;
				L_882_arg0.text = tostring(L_882_arg0.text)
				L_882_arg0.min = typeof(L_882_arg0.min) == "number" and L_882_arg0.min or 0;
				L_882_arg0.max = typeof(L_882_arg0.max) == "number" and L_882_arg0.max or 0;
				L_882_arg0.value = L_882_arg0.min < 0 and 0 or math.clamp(typeof(L_882_arg0.value) == "number" and L_882_arg0.value or L_882_arg0.min, L_882_arg0.min, L_882_arg0.max)
				L_882_arg0.callback = typeof(L_882_arg0.callback) == "function" and L_882_arg0.callback or function()
				end;
				L_882_arg0.float = typeof(L_882_arg0.value) == "number" and L_882_arg0.float or 1;
				L_882_arg0.suffix = L_882_arg0.suffix and tostring(L_882_arg0.suffix) or ""
				L_882_arg0.textpos = L_882_arg0.textpos == 2;
				L_882_arg0.type = "slider"
				L_882_arg0.position = # self.options;
				L_882_arg0.flag = (L_5_.flagprefix and L_5_.flagprefix .. " " or "") .. (L_882_arg0.flag or L_882_arg0.text)
				L_882_arg0.subcount = 0;
				L_882_arg0.canInit = L_882_arg0.canInit ~= nil and L_882_arg0.canInit or true;
				L_882_arg0.tip = L_882_arg0.tip and tostring(L_882_arg0.tip)
				library_flags[L_882_arg0.flag] = L_882_arg0.value;
				table.insert(self.options, L_882_arg0)
				L_5_.options[L_882_arg0.flag] = L_882_arg0;
				function L_882_arg0:AddColor(L_883_arg0)
					L_883_arg0 = typeof(L_883_arg0) == "table" and L_883_arg0 or {}
					L_883_arg0.sub = true;
					L_883_arg0.subpos = self.subcount * 24;
					function L_883_arg0:getMain()
						return L_882_arg0.main
					end;
					self.subcount = self.subcount + 1;
					return L_870_:AddColor(L_883_arg0)
				end;
				function L_882_arg0:AddBind(L_884_arg0)
					L_884_arg0 = typeof(L_884_arg0) == "table" and L_884_arg0 or {}
					L_884_arg0.sub = true;
					L_884_arg0.subpos = self.subcount * 24;
					function L_884_arg0:getMain()
						return L_882_arg0.main
					end;
					self.subcount = self.subcount + 1;
					return L_870_:AddBind(L_884_arg0)
				end;
				if L_5_.hasInit and self.hasInit then
					L_17_func(L_882_arg0, self.content)
				else
					L_882_arg0.Init = L_17_func
				end;
				return L_882_arg0
			end;
			function L_870_:AddList(L_885_arg0)
				L_885_arg0 = typeof(L_885_arg0) == "table" and L_885_arg0 or {}
				L_885_arg0.section = self;
				L_885_arg0.text = tostring(L_885_arg0.text)
				L_885_arg0.values = typeof(L_885_arg0.values) == "table" and L_885_arg0.values or {}
				L_885_arg0.callback = typeof(L_885_arg0.callback) == "function" and L_885_arg0.callback or function()
				end;
				L_885_arg0.multiselect = typeof(L_885_arg0.multiselect) == "boolean" and L_885_arg0.multiselect or false;
				L_885_arg0.value = L_885_arg0.multiselect and (typeof(L_885_arg0.value) == "table" and L_885_arg0.value or {}) or tostring(L_885_arg0.value or L_885_arg0.values[1] or "")
				if L_885_arg0.multiselect then
					for L_886_forvar0, L_887_forvar1 in next, L_885_arg0.values do
						L_885_arg0.value[L_887_forvar1] = false
					end
				end;
				L_885_arg0.max = L_885_arg0.max or 4;
				L_885_arg0.open = false;
				L_885_arg0.type = "list"
				L_885_arg0.position = # self.options;
				L_885_arg0.labels = {}
				L_885_arg0.flag = (L_5_.flagprefix and L_5_.flagprefix .. " " or "") .. (L_885_arg0.flag or L_885_arg0.text)
				L_885_arg0.subcount = 0;
				L_885_arg0.canInit = L_885_arg0.canInit ~= nil and L_885_arg0.canInit or true;
				L_885_arg0.tip = L_885_arg0.tip and tostring(L_885_arg0.tip)
				library_flags[L_885_arg0.flag] = L_885_arg0.value;
				table.insert(self.options, L_885_arg0)
				L_5_.options[L_885_arg0.flag] = L_885_arg0;
				function L_885_arg0:AddValue(L_888_arg0, L_889_arg1)
					if self.multiselect then
						self.values[L_888_arg0] = L_889_arg1
					else
						table.insert(self.values, L_888_arg0)
					end
				end;
				function L_885_arg0:AddColor(L_890_arg0)
					L_890_arg0 = typeof(L_890_arg0) == "table" and L_890_arg0 or {}
					L_890_arg0.sub = true;
					L_890_arg0.subpos = self.subcount * 24;
					function L_890_arg0:getMain()
						return L_885_arg0.main
					end;
					self.subcount = self.subcount + 1;
					return L_870_:AddColor(L_890_arg0)
				end;
				function L_885_arg0:AddBind(L_891_arg0)
					L_891_arg0 = typeof(L_891_arg0) == "table" and L_891_arg0 or {}
					L_891_arg0.sub = true;
					L_891_arg0.subpos = self.subcount * 24;
					function L_891_arg0:getMain()
						return L_885_arg0.main
					end;
					self.subcount = self.subcount + 1;
					return L_870_:AddBind(L_891_arg0)
				end;
				if L_5_.hasInit and self.hasInit then
					L_18_func(L_885_arg0, self.content)
				else
					L_885_arg0.Init = L_18_func
				end;
				return L_885_arg0
			end;
			function L_870_:AddBox(L_892_arg0)
				L_892_arg0 = typeof(L_892_arg0) == "table" and L_892_arg0 or {}
				L_892_arg0.section = self;
				L_892_arg0.text = tostring(L_892_arg0.text)
				L_892_arg0.value = tostring(L_892_arg0.value or "")
				L_892_arg0.callback = typeof(L_892_arg0.callback) == "function" and L_892_arg0.callback or function()
				end;
				L_892_arg0.type = "box"
				L_892_arg0.position = # self.options;
				L_892_arg0.flag = (L_5_.flagprefix and L_5_.flagprefix .. " " or "") .. (L_892_arg0.flag or L_892_arg0.text)
				L_892_arg0.canInit = L_892_arg0.canInit ~= nil and L_892_arg0.canInit or true;
				L_892_arg0.tip = L_892_arg0.tip and tostring(L_892_arg0.tip)
				library_flags[L_892_arg0.flag] = L_892_arg0.value;
				table.insert(self.options, L_892_arg0)
				L_5_.options[L_892_arg0.flag] = L_892_arg0;
				if L_5_.hasInit and self.hasInit then
					L_19_func(L_892_arg0, self.content)
				else
					L_892_arg0.Init = L_19_func
				end;
				return L_892_arg0
			end;
			function L_870_:AddColor(L_893_arg0)
				L_893_arg0 = typeof(L_893_arg0) == "table" and L_893_arg0 or {}
				L_893_arg0.section = self;
				L_893_arg0.text = tostring(L_893_arg0.text)
				L_893_arg0.color = typeof(L_893_arg0.color) == "table" and Color3.new(tonumber(L_893_arg0.color[1]), tonumber(L_893_arg0.color[2]), tonumber(L_893_arg0.color[3])) or L_893_arg0.color or Color3.new(255, 255, 255)
				L_893_arg0.callback = typeof(L_893_arg0.callback) == "function" and L_893_arg0.callback or function()
				end;
				L_893_arg0.calltrans = typeof(L_893_arg0.calltrans) == "function" and L_893_arg0.calltrans or L_893_arg0.calltrans == 1 and L_893_arg0.callback or function()
				end;
				L_893_arg0.open = false;
				L_893_arg0.trans = tonumber(L_893_arg0.trans)
				L_893_arg0.subcount = 1;
				L_893_arg0.type = "color"
				L_893_arg0.position = # self.options;
				L_893_arg0.flag = (L_5_.flagprefix and L_5_.flagprefix .. " " or "") .. (L_893_arg0.flag or L_893_arg0.text)
				L_893_arg0.canInit = L_893_arg0.canInit ~= nil and L_893_arg0.canInit or true;
				L_893_arg0.tip = L_893_arg0.tip and tostring(L_893_arg0.tip)
				library_flags[L_893_arg0.flag] = L_893_arg0.color;
				table.insert(self.options, L_893_arg0)
				L_5_.options[L_893_arg0.flag] = L_893_arg0;
				function L_893_arg0:AddColor(L_894_arg0)
					L_894_arg0 = typeof(L_894_arg0) == "table" and L_894_arg0 or {}
					L_894_arg0.sub = true;
					L_894_arg0.subpos = self.subcount * 24;
					function L_894_arg0:getMain()
						return L_893_arg0.main
					end;
					self.subcount = self.subcount + 1;
					return L_870_:AddColor(L_894_arg0)
				end;
				if L_893_arg0.trans then
					library_flags[L_893_arg0.flag .. " Transparency"] = L_893_arg0.trans
				end;
				if L_5_.hasInit and self.hasInit then
					L_21_func(L_893_arg0, self.content)
				else
					L_893_arg0.Init = L_21_func
				end;
				return L_893_arg0
			end;
			function L_870_:SetTitle(L_895_arg0)
				self.title = tostring(L_895_arg0)
				if self.titleText then
					self.titleText.Text = tostring(L_895_arg0)
				end
			end;
			function L_870_:Init()
				if self.hasInit then
					return
				end;
				self.hasInit = true;
				self.main = L_5_:Create("Frame", {
					BackgroundColor3 = Color3.fromRGB(30, 30, 30),
					BorderColor3 = Color3.new(),
					Parent = L_868_.main
				})
				self.content = L_5_:Create("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundColor3 = Color3.fromRGB(30, 30, 30),
					BorderColor3 = Color3.fromRGB(60, 60, 60),
					BorderMode = Enum.BorderMode.Inset,
					Parent = self.main
				})
				table.insert(L_5_.theme, L_5_:Create("Frame", {
					Size = UDim2.new(1, 0, 0, 1),
					BackgroundColor3 = library_flags["Menu Accent Color"],
					BorderSizePixel = 0,
					BorderMode = Enum.BorderMode.Inset,
					Parent = self.main
				}))
				local L_896_ = L_5_:Create("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 2),
					Parent = self.content
				})
				L_5_:Create("UIPadding", {
					PaddingTop = UDim.new(0, 12),
					Parent = self.content
				})
				self.titleText = L_5_:Create("TextLabel", {
					AnchorPoint = Vector2.new(0, 0.5),
					Position = UDim2.new(0, 12, 0, 0),
					Size = UDim2.new(0, textService:GetTextSize(self.title, 15, Enum.Font.Code, Vector2.new(387420489, 387420489)).X + 10, 0, 2),
					BackgroundColor3 = Color3.fromRGB(30, 30, 30),
					BorderSizePixel = 0,
					Text = self.title,
					TextSize = 15,
					Font = Enum.Font.Code,
					TextColor3 = Color3.new(1, 1, 1),
					Parent = self.main
				})
				L_896_.Changed:connect(function()
					self.main.Size = UDim2.new(1, 0, 0, L_896_.AbsoluteContentSize.Y + 16)
				end)
				for L_897_forvar0, L_898_forvar1 in next, self.options do
					L_898_forvar1.Init(L_898_forvar1, self.content)
				end
			end;
			if L_5_.hasInit and self.hasInit then
				L_870_:Init()
			end;
			return L_870_
		end;
		function L_868_:Init()
			if self.hasInit then
				return
			end;
			self.hasInit = true;
			self.main = L_5_:Create("ScrollingFrame", {
				ZIndex = 2,
				Position = UDim2.new(0, 6 + self.position * 239, 0, 2),
				Size = UDim2.new(0, 233, 1, -4),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarImageColor3 = Color3.fromRGB(),
				ScrollBarThickness = 4,
				VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				Visible = false,
				Parent = L_5_.columnHolder
			})
			local L_899_ = L_5_:Create("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 12),
				Parent = self.main
			})
			L_5_:Create("UIPadding", {
				PaddingTop = UDim.new(0, 8),
				PaddingLeft = UDim.new(0, 2),
				PaddingRight = UDim.new(0, 2),
				Parent = self.main
			})
			L_899_.Changed:connect(function()
				self.main.CanvasSize = UDim2.new(0, 0, 0, L_899_.AbsoluteContentSize.Y + 14)
			end)
			for L_900_forvar0, L_901_forvar1 in next, self.sections do
				if L_901_forvar1.canInit and # L_901_forvar1.options > 0 then
					L_901_forvar1:Init()
				end
			end
		end;
		if L_5_.hasInit and self.hasInit then
			L_868_:Init()
		end;
		return L_868_
	end;
	function L_866_:Init()
		if self.hasInit then
			return
		end;
		self.hasInit = true;
		local L_902_ = textService:GetTextSize(self.title, 18, Enum.Font.Code, Vector2.new(387420489, 387420489)).X + 10;
		self.button = L_5_:Create("TextLabel", {
			Position = UDim2.new(0, L_5_.tabSize, 0, 22),
			Size = UDim2.new(0, L_902_, 0, 30),
			BackgroundTransparency = 1,
			Text = self.title,
			TextColor3 = Color3.new(1, 1, 1),
			TextSize = 15,
			Font = Enum.Font.Code,
			TextWrapped = true,
			ClipsDescendants = true,
			Parent = L_5_.main
		})
		L_5_.tabSize = L_5_.tabSize + L_902_;
		self.button.InputBegan:connect(function(L_903_arg0)
			if L_903_arg0.UserInputType.Name == "MouseButton1" then
				L_5_:selectTab(self)
			end
		end)
		for L_904_forvar0, L_905_forvar1 in next, self.columns do
			if L_905_forvar1.canInit then
				L_905_forvar1:Init()
			end
		end
	end;
	if self.hasInit then
		L_866_:Init()
	end;
	return L_866_
end;
function L_5_:AddWarning(L_906_arg0)
	L_906_arg0 = typeof(L_906_arg0) == "table" and L_906_arg0 or {}
	L_906_arg0.text = tostring(L_906_arg0.text)
	L_906_arg0.type = L_906_arg0.type == "confirm" and "confirm" or ""
	local L_907_;
	function L_906_arg0:Show()
		L_5_.warning = L_906_arg0;
		if L_906_arg0.main and L_906_arg0.type == "" then
			return
		end;
		if L_5_.popup then
			L_5_.popup:Close()
		end;
		if not L_906_arg0.main then
			L_906_arg0.main = L_5_:Create("TextButton", {
				ZIndex = 2,
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 0.6,
				BackgroundColor3 = Color3.new(),
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				Parent = L_5_.main
			})
			L_906_arg0.message = L_5_:Create("TextLabel", {
				ZIndex = 2,
				Position = UDim2.new(0, 20, 0.5, -60),
				Size = UDim2.new(1, -40, 0, 40),
				BackgroundTransparency = 1,
				TextSize = 16,
				Font = Enum.Font.Code,
				TextColor3 = Color3.new(1, 1, 1),
				TextWrapped = true,
				RichText = true,
				Parent = L_906_arg0.main
			})
			if L_906_arg0.type == "confirm" then
				local L_908_ = L_5_:Create("TextLabel", {
					ZIndex = 2,
					Position = UDim2.new(0.5, -105, 0.5, -10),
					Size = UDim2.new(0, 100, 0, 20),
					BackgroundColor3 = Color3.fromRGB(40, 40, 40),
					BorderColor3 = Color3.new(),
					Text = "Yes",
					TextSize = 16,
					Font = Enum.Font.Code,
					TextColor3 = Color3.new(1, 1, 1),
					Parent = L_906_arg0.main
				})
				L_5_:Create("ImageLabel", {
					ZIndex = 2,
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Image = "rbxassetid://2454009026",
					ImageColor3 = Color3.new(),
					ImageTransparency = 0.8,
					Parent = L_908_
				})
				L_5_:Create("ImageLabel", {
					ZIndex = 2,
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Image = "rbxassetid://2592362371",
					ImageColor3 = Color3.fromRGB(60, 60, 60),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(2, 2, 62, 62),
					Parent = L_908_
				})
				local L_909_ = L_5_:Create("TextLabel", {
					ZIndex = 2,
					Position = UDim2.new(0.5, 5, 0.5, -10),
					Size = UDim2.new(0, 100, 0, 20),
					BackgroundColor3 = Color3.fromRGB(40, 40, 40),
					BorderColor3 = Color3.new(),
					Text = "No",
					TextSize = 16,
					Font = Enum.Font.Code,
					TextColor3 = Color3.new(1, 1, 1),
					Parent = L_906_arg0.main
				})
				L_5_:Create("ImageLabel", {
					ZIndex = 2,
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Image = "rbxassetid://2454009026",
					ImageColor3 = Color3.new(),
					ImageTransparency = 0.8,
					Parent = L_909_
				})
				L_5_:Create("ImageLabel", {
					ZIndex = 2,
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Image = "rbxassetid://2592362371",
					ImageColor3 = Color3.fromRGB(60, 60, 60),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(2, 2, 62, 62),
					Parent = L_909_
				})
				L_908_.InputBegan:connect(function(L_910_arg0)
					if L_910_arg0.UserInputType.Name == "MouseButton1" then
						L_907_ = true
					end
				end)
				L_909_.InputBegan:connect(function(L_911_arg0)
					if L_911_arg0.UserInputType.Name == "MouseButton1" then
						L_907_ = false
					end
				end)
			else
				local L_912_ = L_5_:Create("TextLabel", {
					ZIndex = 2,
					Position = UDim2.new(0.5, -50, 0.5, -10),
					Size = UDim2.new(0, 100, 0, 20),
					BackgroundColor3 = Color3.fromRGB(30, 30, 30),
					BorderColor3 = Color3.new(),
					Text = "OK",
					TextSize = 16,
					Font = Enum.Font.Code,
					TextColor3 = Color3.new(1, 1, 1),
					Parent = L_906_arg0.main
				})
				L_5_:Create("ImageLabel", {
					ZIndex = 2,
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Image = "rbxassetid://2454009026",
					ImageColor3 = Color3.new(),
					ImageTransparency = 0.8,
					Parent = L_912_
				})
				L_5_:Create("ImageLabel", {
					ZIndex = 2,
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(1, -2, 1, -2),
					BackgroundTransparency = 1,
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(50, 50, 50),
					Parent = L_912_
				})
				L_912_.InputBegan:connect(function(L_913_arg0)
					if L_913_arg0.UserInputType.Name == "MouseButton1" then
						L_907_ = true
					end
				end)
			end
		end;
		L_906_arg0.main.Visible = true;
		L_906_arg0.message.Text = L_906_arg0.text;
		repeat
			wait()
		until L_907_ ~= nil;
		spawn(L_906_arg0.Close)
		L_5_.warning = nil;
		return L_907_
	end;
	function L_906_arg0:Close()
		L_907_ = nil;
		if not L_906_arg0.main then
			return
		end;
		L_906_arg0.main.Visible = false
	end;
	return L_906_arg0
end;
function L_5_:Close()
	self.open = not self.open;
	if self.open then
		inputService.MouseIconEnabled = false
	else
		inputService.MouseIconEnabled = self.mousestate;
		L_4_.mainFrame.Visible = false
	end;
	if self.main then
		if self.popup then
			self.popup:Close()
		end;
		self.main.Visible = self.open;
		self.cursor.Visible = self.open;
		self.cursor1.Visible = self.open
	end
end;
function L_5_:Init()
	if self.hasInit then
		return
	end;
	self.hasInit = true;
	self.base = L_5_:Create("ScreenGui", {
		IgnoreGuiInset = true
	})
	if runService:IsStudio() then
		self.base.Parent = script.Parent.Parent
	elseif syn then
		syn.protect_gui(self.base)
		self.base.Parent = game:GetService"CoreGui"
	end;
	self.main = self:Create("ImageButton", {
		AutoButtonColor = false,
		Position = UDim2.new(0, 100, 0, 46),
		Size = UDim2.new(0, 500, 0, 600),
		BackgroundColor3 = Color3.fromRGB(20, 20, 20),
		BorderColor3 = Color3.new(),
		ScaleType = Enum.ScaleType.Tile,
		Modal = true,
		Visible = false,
		Parent = self.base
	})
	local L_914_ = self:Create("Frame", {
		Size = UDim2.new(1, 0, 0, 50),
		BackgroundColor3 = Color3.fromRGB(30, 30, 30),
		BorderColor3 = Color3.new(),
		Parent = self.main
	})
	self:Create("TextLabel", {
		Position = UDim2.new(0, 6, 0, -1),
		Size = UDim2.new(0, 0, 0, 20),
		BackgroundTransparency = 1,
		Text = tostring(self.title),
		Font = Enum.Font.Code,
		TextSize = 18,
		TextColor3 = Color3.new(1, 1, 1),
		TextXAlignment = Enum.TextXAlignment.Left,
		Parent = self.main
	})
	table.insert(L_5_.theme, self:Create("Frame", {
		Size = UDim2.new(1, 0, 0, 1),
		Position = UDim2.new(0, 0, 0, 24),
		BackgroundColor3 = library_flags["Menu Accent Color"],
		BorderSizePixel = 0,
		Parent = self.main
	}))
	L_5_:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2454009026",
		ImageColor3 = Color3.new(),
		ImageTransparency = 0.4,
		Parent = L_914_
	})
	self.tabHighlight = self:Create("Frame", {
		BackgroundColor3 = library_flags["Menu Accent Color"],
		BorderSizePixel = 0,
		Parent = self.main
	})
	table.insert(L_5_.theme, self.tabHighlight)
	self.columnHolder = self:Create("Frame", {
		Position = UDim2.new(0, 5, 0, 55),
		Size = UDim2.new(1, -10, 1, -60),
		BackgroundTransparency = 1,
		Parent = self.main
	})
	self.cursor = self:Create("Triangle", {
		Color = Color3.fromRGB(180, 180, 180),
		Transparency = 0.6
	})
	self.cursor1 = self:Create("Triangle", {
		Color = Color3.fromRGB(240, 240, 240),
		Transparency = 0.6
	})
	self.tooltip = self:Create("TextLabel", {
		ZIndex = 2,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		TextSize = 15,
		Font = Enum.Font.Code,
		TextColor3 = Color3.new(1, 1, 1),
		Visible = true,
		Parent = self.base
	})
	self:Create("Frame", {
		AnchorPoint = Vector2.new(0.5, 0),
		Position = UDim2.new(0.5, 0, 0, 0),
		Size = UDim2.new(1, 10, 1, 0),
		Style = Enum.FrameStyle.RobloxRound,
		Parent = self.tooltip
	})
	self:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.fromRGB(60, 60, 60),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = self.main
	})
	L_914_.InputBegan:connect(function(L_915_arg0)
		if L_915_arg0.UserInputType.Name == "MouseButton1" then
			L_10_ = self.main;
			L_6_ = true;
			L_8_ = L_915_arg0.Position;
			L_9_ = L_10_.Position;
			if L_5_.popup then
				L_5_.popup:Close()
			end
		end
	end)
	L_914_.InputChanged:connect(function(L_916_arg0)
		if L_6_ and L_916_arg0.UserInputType.Name == "MouseMovement" then
			L_7_ = L_916_arg0
		end
	end)
	L_914_.InputEnded:connect(function(L_917_arg0)
		if L_917_arg0.UserInputType.Name == "MouseButton1" then
			L_6_ = false
		end
	end)
	function self:selectTab(L_918_arg0)
		if self.currentTab == L_918_arg0 then
			return
		end;
		if L_5_.popup then
			L_5_.popup:Close()
		end;
		if self.currentTab then
			self.currentTab.button.TextColor3 = Color3.fromRGB(255, 255, 255)
			for L_919_forvar0, L_920_forvar1 in next, self.currentTab.columns do
				L_920_forvar1.main.Visible = false
			end
		end;
		self.main.Size = UDim2.new(0, 16 + (# L_918_arg0.columns < 2 and 2 or # L_918_arg0.columns) * 239, 0, 600)
		self.currentTab = L_918_arg0;
		L_918_arg0.button.TextColor3 = library_flags["Menu Accent Color"]
		self.tabHighlight:TweenPosition(UDim2.new(0, L_918_arg0.button.Position.X.Offset, 0, 50), "Out", "Quad", 0.2, true)
		self.tabHighlight:TweenSize(UDim2.new(0, L_918_arg0.button.AbsoluteSize.X, 0, -1), "Out", "Quad", 0.1, true)
		for L_921_forvar0, L_922_forvar1 in next, L_918_arg0.columns do
			L_922_forvar1.main.Visible = true
		end
	end;
	spawn(function()
		while L_5_ do
			wait(1)
			local L_923_ = self:GetConfigs()
			for L_924_forvar0, L_925_forvar1 in next, L_923_ do
				if not table.find(self.options["Config List"].values, L_925_forvar1) then
					self.options["Config List"]:AddValue(L_925_forvar1)
				end
			end;
			for L_926_forvar0, L_927_forvar1 in next, self.options["Config List"].values do
				if not table.find(L_923_, L_927_forvar1) then
					self.options["Config List"]:RemoveValue(L_927_forvar1)
				end
			end;
			if isfolder("cipex_configs/scripts") then
				local L_928_ = {}
				for L_929_forvar0, L_930_forvar1 in next, listfiles("cipex_configs/scripts") do
					local L_931_ = L_930_forvar1:match('cipex_configs/scripts\\([%w%s%-]*)%.%a?')
					table.insert(L_928_, L_931_)
				end;
				for L_932_forvar0, L_933_forvar1 in next, L_928_ do
					if not table.find(self.options["scriptlist"].values, L_933_forvar1) then
						self.options["scriptlist"]:AddValue(L_933_forvar1)
					end
				end;
				for L_934_forvar0, L_935_forvar1 in next, self.options["scriptlist"].values do
					if not table.find(L_928_, L_935_forvar1) then
						self.options["scriptlist"]:RemoveValue(L_935_forvar1)
					end
				end
			else
				makefolder("cipex_configs/scripts")
			end
		end
	end)
	for L_936_forvar0, L_937_forvar1 in next, self.tabs do
		if L_937_forvar1.canInit then
			L_937_forvar1:Init()
			self:selectTab(L_937_forvar1)
		end
	end;
	self:AddConnection(inputService.InputEnded, function(L_938_arg0)
		if L_938_arg0.UserInputType.Name == "MouseButton1" and self.slider then
			self.slider.slider.BorderColor3 = Color3.new()
			self.slider = nil
		end
	end)
	self:AddConnection(inputService.InputChanged, function(L_939_arg0)
		if self.open then
			if L_939_arg0.UserInputType.Name == "MouseMovement" then
				if self.cursor then
					local L_940_ = inputService:GetMouseLocation()
					local L_941_ = Vector2.new(L_940_.X, L_940_.Y)
					self.cursor.PointA = L_941_;
					self.cursor.PointB = L_941_ + Vector2.new(12, 12)
					self.cursor.PointC = L_941_ + Vector2.new(12, 12)
					self.cursor1.PointA = L_941_;
					self.cursor1.PointB = L_941_ + Vector2.new(11, 11)
					self.cursor1.PointC = L_941_ + Vector2.new(11, 11)
				end;
				if self.slider then
					self.slider:SetValue(self.slider.min + (L_939_arg0.Position.X - self.slider.slider.AbsolutePosition.X) / self.slider.slider.AbsoluteSize.X * (self.slider.max - self.slider.min))
				end
			end;
			if L_939_arg0 == L_7_ and L_6_ and L_5_.draggable then
				local L_942_ = L_939_arg0.Position - L_8_;
				local L_943_ = L_9_.Y.Offset + L_942_.Y < -36 and -36 or L_9_.Y.Offset + L_942_.Y;
				L_10_:TweenPosition(UDim2.new(L_9_.X.Scale, L_9_.X.Offset + L_942_.X, L_9_.Y.Scale, L_943_), "Out", "Quint", 0.1, true)
			end
		end
	end)
	if not getgenv().silent then
		delay(1, function()
			self:Close()
		end)
	end
end;
function hasProperty(L_944_arg0, L_945_arg1)
	return pcall(function()
		_ = L_944_arg0[L_945_arg1]
	end)
end;
local L_22_ = {
	"HeadHB",
	"UpperTorso",
	"LowerTorso",
	"LeftUpperArm",
	"LeftLowerArm",
	"LeftHand",
	"RightUpperArm",
	"RightLowerArm",
	"RightHand",
	"LeftUpperLeg",
	"LeftLowerLeg",
	"LeftFoot",
	"RightUpperLeg",
	"RightLowerLeg",
	"RightFoot"
}
local L_23_ = game:GetService("ReplicatedStorage").Events.DataEvent;
local L_24_ = game:GetService("ReplicatedStorage")
local L_25_ = game:GetService("UserInputService")
local L_26_ = game:GetService("NetworkClient")
local L_27_ = game:GetService("TweenService")
local L_28_ = game:GetService("RunService")
local L_29_ = game:GetService("Lighting")
local L_30_ = game:GetService("Players")
local L_31_ = game:GetService("Debris")
local L_32_ = L_30_.LocalPlayer;
local L_33_ = L_32_:GetMouse()
local L_34_ = workspace.CurrentCamera;
local L_35_ = L_32_.PlayerGui.Client;
local L_36_ = getsenv(L_35_)
local L_37_, L_38_, L_39_ = false, false, false;
local L_40_ = L_24_.Events.HitPart;
local L_41_ = L_24_.Events.Vote;
local L_42_ = L_24_.Events.DropMag;
local L_43_ = Instance.new("Folder", workspace)
local L_44_ = Instance.new("ColorCorrectionEffect", L_29_)
local L_45_ = getsenv(L_32_.PlayerScripts.ControlScript.MasterControl)
local L_46_ = Instance.new("Folder", L_34_)
local L_47_ = {}
local L_48_ = Vector3.new(0, 0, 0)
local L_49_ = true;
local L_50_ = false;
getgenv().oldPositions = {}
local L_51_ = {}
local L_52_ = {}
local L_53_ = false;
local L_54_ = false;
local L_55_ = 0;
local L_56_ = {}
getgenv().target = nil;
getgenv().hookWS = false;
getgenv().hookJP = nil;
getgenv().holdE = false;
local L_57_ = {
	alive = false,
	melee = false,
	clientgun = nil,
	ammo = 0,
	name = "",
	sniper = false,
	silentAim = false,
	FOV = 0,
	silentFOV = 0,
	smoothness = 0,
	deadzone = 0,
	baim = false,
	mindmg = 0,
	hitboxes = {},
	trigger = false,
	triggerDelay = 0,
	type = ""
}
local L_58_ = 0;
local L_59_;
cbCHAMS = nil;
fonts = {
	UI = 0,
	System = 1,
	Plex = 2,
	Monospace = 3
}
Skyboxes = {
	["Purple Nebula"] = {
		["SkyboxBk"] = "rbxassetid://159454299",
		["SkyboxDn"] = "rbxassetid://159454296",
		["SkyboxFt"] = "rbxassetid://159454293",
		["SkyboxLf"] = "rbxassetid://159454286",
		["SkyboxRt"] = "rbxassetid://159454300",
		["SkyboxUp"] = "rbxassetid://159454288"
	},
	["Night Sky"] = {
		["SkyboxBk"] = "rbxassetid://12064107",
		["SkyboxDn"] = "rbxassetid://12064152",
		["SkyboxFt"] = "rbxassetid://12064121",
		["SkyboxLf"] = "rbxassetid://12063984",
		["SkyboxRt"] = "rbxassetid://12064115",
		["SkyboxUp"] = "rbxassetid://12064131"
	},
	["Pink Daylight"] = {
		["SkyboxBk"] = "rbxassetid://271042516",
		["SkyboxDn"] = "rbxassetid://271077243",
		["SkyboxFt"] = "rbxassetid://271042556",
		["SkyboxLf"] = "rbxassetid://271042310",
		["SkyboxRt"] = "rbxassetid://271042467",
		["SkyboxUp"] = "rbxassetid://271077958"
	},
	["Morning Glow"] = {
		["SkyboxBk"] = "rbxassetid://1417494030",
		["SkyboxDn"] = "rbxassetid://1417494146",
		["SkyboxFt"] = "rbxassetid://1417494253",
		["SkyboxLf"] = "rbxassetid://1417494402",
		["SkyboxRt"] = "rbxassetid://1417494499",
		["SkyboxUp"] = "rbxassetid://1417494643"
	},
	["Setting Sun"] = {
		["SkyboxBk"] = "rbxassetid://626460377",
		["SkyboxDn"] = "rbxassetid://626460216",
		["SkyboxFt"] = "rbxassetid://626460513",
		["SkyboxLf"] = "rbxassetid://626473032",
		["SkyboxRt"] = "rbxassetid://626458639",
		["SkyboxUp"] = "rbxassetid://626460625"
	},
	["Fade Blue"] = {
		["SkyboxBk"] = "rbxassetid://153695414",
		["SkyboxDn"] = "rbxassetid://153695352",
		["SkyboxFt"] = "rbxassetid://153695452",
		["SkyboxLf"] = "rbxassetid://153695320",
		["SkyboxRt"] = "rbxassetid://153695383",
		["SkyboxUp"] = "rbxassetid://153695471"
	},
	["Elegant Morning"] = {
		["SkyboxBk"] = "rbxassetid://153767241",
		["SkyboxDn"] = "rbxassetid://153767216",
		["SkyboxFt"] = "rbxassetid://153767266",
		["SkyboxLf"] = "rbxassetid://153767200",
		["SkyboxRt"] = "rbxassetid://153767231",
		["SkyboxUp"] = "rbxassetid://153767288"
	},
	["Neptune"] = {
		["SkyboxBk"] = "rbxassetid://218955819",
		["SkyboxDn"] = "rbxassetid://218953419",
		["SkyboxFt"] = "rbxassetid://218954524",
		["SkyboxLf"] = "rbxassetid://218958493",
		["SkyboxRt"] = "rbxassetid://218957134",
		["SkyboxUp"] = "rbxassetid://218950090"
	},
	["Redshift"] = {
		["SkyboxBk"] = "rbxassetid://401664839",
		["SkyboxDn"] = "rbxassetid://401664862",
		["SkyboxFt"] = "rbxassetid://401664960",
		["SkyboxLf"] = "rbxassetid://401664881",
		["SkyboxRt"] = "rbxassetid://401664901",
		["SkyboxUp"] = "rbxassetid://401664936"
	},
	["Aesthetic Night"] = {
		["SkyboxBk"] = "rbxassetid://1045964490",
		["SkyboxDn"] = "rbxassetid://1045964368",
		["SkyboxFt"] = "rbxassetid://1045964655",
		["SkyboxLf"] = "rbxassetid://1045964655",
		["SkyboxRt"] = "rbxassetid://1045964655",
		["SkyboxUp"] = "rbxassetid://1045962969"
	}
}
local L_60_ = {
	SmoothPlastic = "",
	ForceField = "4573037993"
}
hitSounds = {
	Bameware = "rbxassetid://3124331820",
	Bell = "rbxassetid://6534947240",
	Bubble = "rbxassetid://6534947588",
	Pick = "rbxassetid://1347140027",
	Pop = "rbxassetid://198598793",
	Rust = "rbxassetid://1255040462",
	Sans = "rbxassetid://3188795283",
	Fart = "rbxassetid://130833677",
	Big = "rbxassetid://5332005053",
	Vine = "rbxassetid://5332680810",
	Bruh = "rbxassetid://4578740568",
	Skeet = "rbxassetid://5633695679",
	Neverlose = "rbxassetid://6534948092",
	Fatality = "rbxassetid://6534947869",
	Bonk = "rbxassetid://5766898159",
	Minecraft = "rbxassetid://4018616850",
	Moan = {
		"rbxassetid://2440888376",
		"rbxassetid://2440889605",
		"rbxassetid://2440889869",
		"rbxassetid://2440889381",
		"rbxassetid://2440891382"
	}
}
L_33_.TargetFilter = L_34_;
indicatorHolder = Instance.new("ScreenGui", game.CoreGui)
leftIndicator = Instance.new("TextLabel", indicatorHolder)
rightIndicator = Instance.new("TextLabel", indicatorHolder)
indicatorHolder.Enabled = false;
leftIndicator.BackgroundTransparency = 1;
leftIndicator.Size = UDim2.new(0.4, 0, 0, 0)
leftIndicator.Position = UDim2.new(0, 0, 0.5, 0)
leftIndicator.TextXAlignment = "Right"
leftIndicator.TextColor3 = Color3.new(1, 1, 1)
leftIndicator.Text = "<"
leftIndicator.TextSize = 40;
leftIndicator.TextTransparency = 0.5;
leftIndicator.Font = "Bodoni"
rightIndicator.BackgroundTransparency = 1;
rightIndicator.Size = UDim2.new(0.6, 0, 0, 0)
rightIndicator.Position = UDim2.new(0, 0, 0.5, 0)
rightIndicator.TextXAlignment = "Right"
rightIndicator.TextColor3 = Color3.new(1, 1, 1)
rightIndicator.Text = ">"
rightIndicator.TextSize = 40;
rightIndicator.Font = "Bodoni"
rightIndicator.TextTransparency = 0.5;
L_4_ = game:GetObjects("rbxassetid://6219220506")[1]
L_4_.Parent = game.CoreGui;
L_4_.mainFrame.Visible = false;
L_4_.mainFrame.ZIndex = 100;
onHit = Instance.new("BindableEvent", workspace)
onHit.Name = "onHit"
onKill = Instance.new("BindableEvent", workspace)
onKill.Name = "onKill"
if not isfolder("cipex_configs/tempimages") then
	makefolder("cipex_configs/tempimages")
end;
if not isfolder("cipex_configs/demos") then
	makefolder("cipex_configs/demos")
end;
local L_61_ = -3846999;
local L_62_ = 8532252;
local L_63_ = -1162714;
local L_64_ = 52;
local L_65_ = 4;
local L_66_ = 82;
function encodePos(L_946_arg0)
	local L_947_, L_948_, L_949_ = L_946_arg0.X * L_64_, L_946_arg0.Y * L_65_, L_946_arg0.Z * L_66_;
	return Vector3.new(L_61_ + L_947_, L_62_ + L_948_, L_63_ + L_949_)
end;
function decodePos(L_950_arg0)
	local L_951_, L_952_, L_953_ = L_950_arg0.X - L_61_, L_950_arg0.Y - L_62_, L_950_arg0.Z - L_63_;
	return Vector3.new(L_951_ / L_64_, L_952_ / L_65_, L_953_ / L_66_)
end;
getgenv().encodePos = encodePos;
getgenv().decodePos = decodePos;
function addSkin(L_954_arg0, L_955_arg1, L_956_arg2, L_957_arg3, L_958_arg4)
	local L_959_, L_960_ = pcall(function()
		local L_961_ = {}
		for L_972_forvar0, L_973_forvar1 in next, L_956_arg2 do
			if L_973_forvar1:match("^%w+://([^/]+)") then
				local L_974_ = syn.request({
					Url = L_973_forvar1,
					Method = "GET"
				})
				if L_974_.Success then
					local L_975_ = "cipex_configs/tempimages/" .. L_972_forvar0 .. L_955_arg1 .. L_954_arg0 .. ".png"
					writefile(L_975_, L_974_.Body)
					L_956_arg2[L_972_forvar0] = getsynasset(L_975_)
					table.insert(L_961_, L_972_forvar0)
				end
			end
		end;
		local L_962_ = false;
		if L_957_arg3:match("^%w+://([^/]+)") then
			local L_976_ = syn.request({
				Url = L_957_arg3,
				Method = "GET"
			})
			if L_976_.Success then
				local L_977_ = "cipex_configs/tempimages/" .. "image" .. L_955_arg1 .. L_954_arg0 .. ".png"
				writefile(L_977_, L_976_.Body)
				L_957_arg3 = getsynasset(L_977_)
				L_962_ = true
			end
		end;
		local L_963_ = L_954_arg0 .. "_" .. L_955_arg1;
		local L_964_ = string.split(L_963_, "_")[2]
		local L_965_ = string.split(L_963_, "_")[1]
		if not L_962_ then
			L_957_arg3 = L_957_arg3 and "rbxassetid://" .. tostring(L_957_arg3) or "rbxassetid://1541381206"
		end;
		local L_966_ = nil;
		if L_958_arg4 == "Glove" then
			L_966_ = "Knife"
		else
			L_966_ = L_958_arg4 or "Red"
		end;
		local L_967_ = Instance.new("StringValue")
		L_967_.Name = L_964_;
		local L_968_ = Instance.new("StringValue")
		L_968_.Name = L_963_;
		local L_969_ = Instance.new("StringValue")
		L_969_.Name = L_964_;
		L_969_.Value = L_957_arg3;
		L_969_.Parent = game.Players.LocalPlayer.PlayerGui.Client.Images[L_965_]
		local L_970_ = Instance.new("StringValue")
		L_970_.Name = L_964_;
		L_970_.Name = "Quality"
		L_970_.Value = L_966_;
		L_970_.Parent = L_969_;
		local L_971_ = Instance.new("StringValue")
		L_971_.Name = L_963_;
		L_971_.Value = L_966_;
		L_971_.Parent = game.Players.LocalPlayer.PlayerGui.Client.Rarities;
		if L_958_arg4 == "Glove" then
			local L_978_ = L_24_.Gloves[L_965_]:GetChildren()[1]:Clone()
			L_978_.Textures.TextureId = "rbxassetid://" .. L_956_arg2.Main;
			L_978_.Name = L_964_;
			L_978_.Parent = L_24_.Gloves[L_965_]
		else
			local L_979_ = game.ReplicatedStorage.Skins[L_965_]:GetChildren()[1]:Clone()
			L_979_.Name = L_964_;
			L_979_.Parent = game.ReplicatedStorage.Skins[L_965_]
			for L_980_forvar0, L_981_forvar1 in next, L_979_:GetChildren() do
				if L_981_forvar1.ClassName ~= "Folder" then
					if L_981_forvar1.Value == "" then
						continue;
					end;
					local L_982_ = table.find(L_961_, L_981_forvar1.Name) and "" or "rbxassetid://"
					if L_956_arg2[L_981_forvar1.Name] then
						L_981_forvar1.Value = L_982_ .. L_956_arg2[L_981_forvar1.Name]
					else
						L_982_ = table.find(L_961_, "Main") and "" or "rbxassetid://"
						L_981_forvar1.Value = L_982_ .. L_956_arg2.Main
					end
				end
			end
		end
	end)
	if not L_959_ then
		warn(L_960_)
	end
end;
if not isfile("cipex_configs/customskins.txt") then
	writefile("cipex_configs/customskins.txt", [[
[
{"image":"1541381200","skins":{"Main":"1541381200"},"weaponname":"USP","skinname":"Example Skin","rarity":"Red"},
{"image":"1541381200","skins":{"Main":"6488789251"},"weaponname":"Butterfly Knife","skinname":"Drop Out","rarity":"Knife"},
{"image":"6515650373","skins":{"Main":"6515650373"},"weaponname":"Fingerless Glove","skinname":"Troll","rarity":"Glove"},
{"image":"6504360603","skins":{"Main":"6504360603"},"weaponname":"Fingerless Glove","skinname":"Pastel Galaxy","rarity":"Glove"},
{"image":"1541381200","skins":{"Scope":"1541381200","Main":"1541381200"},"weaponname":"AWP","skinname":"Example Skin","rarity":"Red"},
{"image":"6515853919","skins":{"Scope":"6515794979","Main":"6515853919"},"weaponname":"AWP","skinname":"Troll","rarity":"Red"},
{"image":"1541381200","skins":{"Main":"1541381200","Mag":"1541381200","Part1":"1541381200"},"weaponname":"AK47","skinname":"Example Skin","rarity":"Red"}
]
]])
end;
if isfile("cipex_configs/customskins.txt") then
	succes, reason = pcall(function()
		local L_983_ = readfile("cipex_configs/customskins.txt")
		local L_984_ = game:service("HttpService"):JSONDecode(L_983_)
		for L_985_forvar0, L_986_forvar1 in next, L_984_ do
			addSkin(L_986_forvar1.weaponname, L_986_forvar1.skinname, L_986_forvar1.skins, L_986_forvar1.image, L_986_forvar1.rarity)
		end;
		wait(0.5)
	end)
	if not succes then
		warn("[cipex] could not load custom skins! reason: " .. reason)
	end
end;
function chat(L_987_arg0)
	L_24_.Events.PlayerChatted:FireServer(L_987_arg0, false, false, true)
end;
function alive(L_988_arg0)
	if L_988_arg0 == nil then
		L_988_arg0 = L_32_
	end;
	if L_988_arg0.Character and L_988_arg0:FindFirstChild("Ragdoll") and L_988_arg0.Character.PrimaryPart and L_988_arg0.Character:FindFirstChild("UpperTorso") and L_988_arg0.Character:FindFirstChild("Head") and L_988_arg0.Character:FindFirstChild("EquippedTool") and L_988_arg0.Character:FindFirstChild("HumanoidRootPart") and L_988_arg0.Character:FindFirstChild("Humanoid") and L_988_arg0.Character.Humanoid.Health > 0 then
		return true
	end;
	return false
end;
function updateViewModelVisuals()
	local L_989_;
	if L_34_:FindFirstChild("Arms") then
		L_989_ = L_34_.Arms
	end;
	if L_989_ and L_989_.Name == "Arms" then
		for L_990_forvar0, L_991_forvar1 in next, L_989_:GetChildren() do
			if library_flags["Weapon Chams"] then
				if L_991_forvar1:IsA"MeshPart" or L_991_forvar1.Name == "Part" then
					if L_991_forvar1.Name == "StatClock" then
						L_991_forvar1:ClearAllChildren()
					end;
					L_991_forvar1.Color = library_flags["weaponColor"]
					L_991_forvar1.Transparency = 1 - L_5_.options["weaponColor"].trans;
					L_991_forvar1.Material = library_flags["weaponMaterial"]
					if hasProperty(L_991_forvar1, "TextureID") then
						L_991_forvar1.TextureID = ""
					end;
					if hasProperty(L_991_forvar1, "Reflectance") then
						L_991_forvar1.Reflectance = library_flags["weaponReflectance"] / 50
					end;
					if L_991_forvar1:FindFirstChild("SurfaceAppearance") then
						L_991_forvar1.SurfaceAppearance:Destroy()
					end
				end;
				local L_992_ = false;
				for L_993_forvar0, L_994_forvar1 in next, L_34_.Arms:GetChildren() do
					if string.find(L_994_forvar1.Name, 'Knife') or L_994_forvar1.Name == "Handle2" or L_994_forvar1.Name == "Blade" then
						L_992_ = true
					end
				end;
				if L_992_ then
					if L_34_.Arms:FindFirstChild("Handle") then
						L_34_.Arms.Handle.Transparency = 1
					end
				end;
				pcall(function()
					if L_34_.Arms:FindFirstChild("Silencer2") then
						if workspace.Map.SpawnPoints:FindFirstChild("BuyArea") then
							L_34_.Arms.Silencer2.Welded.Part0 = workspace.Map.SpawnPoints.BuyArea
						end
					end
				end)
			end;
			if L_991_forvar1:IsA"Model" then
				for L_995_forvar0, L_996_forvar1 in next, L_989_:GetDescendants() do
					if library_flags["Remove Sleeves"] and L_996_forvar1.Name == "Sleeve" then
						L_996_forvar1:Destroy()
					end;
					if library_flags["Arm Chams"] then
						if hasProperty(L_996_forvar1, "CastShadow") then
							L_996_forvar1.CastShadow = false
						end;
						local L_997_ = library_flags["armMaterial"]
						if L_996_forvar1:IsA"SpecialMesh" then
							if L_997_ == "ForceField" then
								L_996_forvar1.TextureId = L_60_[L_997_]
							else
								L_996_forvar1.TextureId = ""
							end;
							local L_998_ = library_flags["armColor"]
							L_996_forvar1.VertexColor = Vector3.new(L_998_.R, L_998_.G, L_998_.B)
						end;
						if L_996_forvar1:IsA"Part" then
							L_996_forvar1.Material = L_997_;
							L_996_forvar1.Color = library_flags["armColor"]
							if L_996_forvar1.Transparency == 1 then
								continue;
							end;
							L_996_forvar1.Transparency = 1.01 - L_5_.options["armColor"].trans
						end
					end
				end
			end
		end
	end
end;
local L_67_ = {
	{
		"",
		"DualBerettas",
		"",
		"",
		"Deagle/R8"
	},
	{},
	{},
	{
		"",
		"AK47/M4",
		"Scout",
		"",
		"AWP",
		"Autosniper"
	},
	{
		"Kevlar Vest",
		"Kevlar + Helmet",
		""
	},
	{
		"Fire Grenade",
		"Decoy Grenade",
		"Flashbang",
		"HE Grenade",
		"Smoke Grenade"
	}
}
function buyWeapon(L_999_arg0)
	if L_999_arg0 == "None" then
		return
	end;
	wait(0.15)
	CreateThread(function()
		L_36_.createNotification2("Purchasing " .. L_999_arg0 .. "...")
	end)
	L_36_.Buymenuframe.Visible = true;
	L_36_.BuyMenuOpen = true;
	for L_1000_forvar0, L_1001_forvar1 in pairs(L_67_) do
		if table.find(L_1001_forvar1, L_999_arg0) then
			L_36_.Click(L_1000_forvar0)
			wait()
			for L_1002_forvar0, L_1003_forvar1 in next, L_1001_forvar1 do
				if L_1003_forvar1 == L_999_arg0 then
					L_36_.Click(L_1002_forvar0)
					wait()
					L_36_.Back(L_1002_forvar0)
				end
			end
		end
	end
end;
function draggable(L_1004_arg0)
	local L_1005_ = game:GetService("UserInputService")
	local L_1006_;
	local L_1007_;
	local L_1008_;
	local L_1009_;
	local function L_1010_func(L_1011_arg0)
		if not scrollon then
			local L_1012_ = L_1011_arg0.Position - L_1008_;
			L_1004_arg0.Position = UDim2.new(L_1009_.X.Scale, L_1009_.X.Offset + L_1012_.X, L_1009_.Y.Scale, L_1009_.Y.Offset + L_1012_.Y)
		end
	end;
	L_1004_arg0.InputBegan:Connect(function(L_1013_arg0)
		if L_1013_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_1013_arg0.UserInputType == Enum.UserInputType.Touch then
			L_1006_ = true;
			L_1008_ = L_1013_arg0.Position;
			L_1009_ = L_1004_arg0.Position;
			L_1013_arg0.Changed:Connect(function()
				if L_1013_arg0.UserInputState == Enum.UserInputState.End then
					L_1006_ = false
				end
			end)
		end
	end)
	L_1004_arg0.InputChanged:Connect(function(L_1014_arg0)
		if L_1014_arg0.UserInputType == Enum.UserInputType.MouseMovement or L_1014_arg0.UserInputType == Enum.UserInputType.Touch then
			L_1007_ = L_1014_arg0
		end
	end)
	L_1005_.InputChanged:Connect(function(L_1015_arg0)
		if L_1015_arg0 == L_1007_ and L_1006_ then
			L_1010_func(L_1015_arg0)
		end
	end)
end;
function returntime(L_1016_arg0)
	return os.date("*t", os.time())[L_1016_arg0]
end;
local L_68_ = {
	DiamondPlate = 3,
	CorrodedMetal = 2,
	Metal = 2,
	Concrete = 2,
	Brick = 2,
	WoodPlanks = 0.1,
	Wood = 0.1,
	nowallbang = 100,
	Grate = 0.1,
	Glass = 0.1,
	Cardboard = 0.1
}
getgenv().damagemod = 1;
function wallbangCheck(L_1017_arg0)
	return L_1017_arg0 and L_1017_arg0.Parent and L_1017_arg0.Parent.Name == "Hitboxes" or L_1017_arg0 and L_1017_arg0.Parent and L_1017_arg0.Parent.Parent and L_1017_arg0.Parent.Parent:FindFirstChild("Humanoid") or L_1017_arg0 and L_1017_arg0.Parent and L_1017_arg0.Parent:FindFirstChild("Humanoid") or L_1017_arg0 and L_1017_arg0.Parent and L_1017_arg0.Parent:FindFirstChild("Humanoid") and (1 > L_1017_arg0.Transparency or L_1017_arg0.Name == "HeadHB") and L_1017_arg0.Parent:IsA("Model")
end;
local L_69_ = false;
local L_70_ = Instance.new("Part")
L_70_.Size = Vector3.new(0.75, 0.75, 0.75)
L_70_.Anchored = true;
L_70_.Material = "Neon"
L_70_.Color = Color3.new(0.85, 0.25, 0.75)
L_70_.Transparency = 1;
L_70_.Name = "jigpart"
function calculateWallbang(L_1018_arg0, L_1019_arg1, L_1020_arg2)
	local L_1021_ = L_36_.gun;
	if not L_1021_ or not L_1021_:FindFirstChild("Penetration") or L_1021_:FindFirstChild("Melee") or not L_1018_arg0:FindFirstChild(L_1019_arg1) then
		return 0, 0
	end;
	L_69_ = not L_69_;
	if L_1020_arg2 and L_69_ then
		local L_1034_ = L_70_:Clone()
		L_1034_.CFrame = L_1018_arg0[L_1019_arg1].CFrame + L_1018_arg0[L_1019_arg1].Velocity * library_flags["predictAmount"] / 400;
		L_1034_.Parent = L_1018_arg0;
		L_1019_arg1 = "jigpart"
	end;
	local L_1022_ = L_1018_arg0[L_1019_arg1]
	local L_1023_ = library_flags["From Camera"] and L_34_.CFrame.p or Vector3.new(L_32_.Character.PrimaryPart.Position.X, L_32_.Character.Head.Position.Y, L_32_.Character.PrimaryPart.Position.Z)
	local L_1024_ = CFrame.new(L_1023_, L_1022_.Position).lookVector.unit * 4096 * 0.0694;
	local L_1025_ = Ray.new(L_1023_, L_1024_)
	local L_1026_ = L_1021_.Penetration.Value * 0.013 or 0;
	local L_1027_ = {
		L_34_,
		L_32_.Character,
		workspace.Debris,
		workspace.Ray_Ignore,
		workspace.Map.Clips,
		workspace.Map.SpawnPoints
	}
	local L_1028_ = {}
	local L_1029_ = nil;
	local L_1030_ = 1;
	local L_1031_ = 0;
	local L_1032_ = 0;
	local L_1033_ = 0;
	repeat
		L_1033_ = L_1033_ + 1;
		L_1029_, pos = workspace:FindPartOnRayWithIgnoreList(L_1025_, L_1027_, false, true)
		if L_1029_ and L_1029_ ~= L_1022_ or L_1029_ and L_1029_.Parent and L_1029_ ~= L_1022_ then
			if not L_1029_:IsDescendantOf(L_1018_arg0) and not string.find(L_1029_.Name, "Head") then
				local L_1035_ = 1;
				local L_1036_ = tostring(L_1029_.Material)
				local L_1037_ = string.sub(tostring(L_1029_.Material), 15, # L_1036_)
				local L_1038_ = L_68_[L_1029_.Name]
				local L_1039_ = L_68_[L_1037_]
				local L_1040_ = 2 - library_flags["awallMod"] == 0 and 0.1 or 2 - library_flags["awallMod"]
				L_1035_ = (L_1038_ or L_1039_ or 1) * L_1040_;
				if string.find(L_1029_.Name, "Hat") or string.find(L_1029_.Parent.Name, "Hat") then
					L_1035_ = 0
				end;
				local L_1041_, L_1042_ = workspace:FindPartOnRayWithWhitelist(Ray.new(pos + L_1024_ * 1, L_1024_ * -2), {
					L_1029_
				}, true)
				local L_1043_ = (L_1042_ - pos).magnitude;
				local L_1044_ = L_1043_ * L_1035_;
				L_1032_ = math.min(L_1026_, L_1032_ + L_1044_)
				L_1030_ = 1 - L_1032_ / L_1026_;
				if L_1035_ > 0 then
					L_1031_ = L_1031_ + 1
				end;
				table.insert(L_1028_, L_1029_)
				if wallbangCheck(L_1029_) then
					table.insert(L_1027_, L_1029_.Parent)
				else
					table.insert(L_1027_, L_1029_)
				end
			end
		end
	until L_1029_ == nil or L_1029_ == L_1022_ or L_1029_:IsDescendantOf(L_1018_arg0) or L_1031_ >= 4 or L_1032_ >= L_1026_ or L_1033_ > 20 or L_1029_.Name == "jigpart" or string.find(L_1029_.Name, "Head")
	if L_1031_ >= 4 or L_1033_ >= 20 then
		L_1030_ = 0
	end;
	if L_1020_arg2 and L_69_ then
		if L_1030_ ~= 0 then
			if library_flags["Show Prediction Position"] then
				local L_1045_ = Instance.new("Part")
				L_1045_.Size = Vector3.new(0.5, 0.5, 0.5)
				L_1045_.Anchored = true;
				L_1045_.CanCollide = false;
				L_1045_.Transparency = 0.6;
				L_1045_.Position = L_1022_.Position;
				L_1045_.Color = Color3.new(0.3, 1, 0.3)
				L_1045_.Material = "Neon"
				L_1045_.Parent = workspace.Ray_Ignore;
				L_31_:AddItem(L_1045_, 3)
			end
		end;
		L_1022_:Destroy()
	end;
	return L_1030_, L_1031_
end;
function returnDamage(L_1046_arg0, L_1047_arg1)
	local L_1048_ = 0;
	local L_1049_ = 0;
	if L_36_.gun and L_36_.gun:FindFirstChild("Melee") then
		return 0, 0
	end;
	pcall(function()
		local L_1050_ = {
			L_34_,
			L_32_.Character,
			workspace.Debris,
			workspace.Ray_Ignore,
			workspace.Map:WaitForChild("Clips"),
			workspace.Map:WaitForChild("SpawnPoints")
		}
		local L_1051_ = L_36_.gun;
		local L_1052_ = L_1051_.Penetration.Value * 0.01 or 0;
		local L_1053_ = L_1051_.Range.Value;
		local L_1054_ = L_1051_.DMG.Value;
		local L_1055_ = L_1046_arg0[L_1047_arg1].Position;
		local L_1056_ = library_flags["From Camera"] and L_34_.CFrame.p or Vector3.new(L_32_.Character.PrimaryPart.Position.X, L_32_.Character.Head.Position.Y, L_32_.Character.PrimaryPart.Position.Z)
		local L_1057_ = CFrame.new(L_1056_, L_1055_).lookVector.unit * L_1053_ * 0.0694;
		local L_1058_ = Ray.new(L_1056_, L_1057_)
		local L_1059_, L_1060_ = workspace:FindPartOnRayWithIgnoreList(L_1058_, L_1050_, false, true)
		local L_1061_ = 0;
		local L_1062_ = 0;
		local L_1063_, L_1064_, L_1065_;
		local L_1066_ = 1;
		L_1048_ = 1;
		pcall(function()
			repeat
				L_1063_, L_1064_, L_1065_ = workspace:FindPartOnRayWithIgnoreList(L_1058_, L_1050_, false, true)
				if L_1063_ and L_1063_.Parent then
					L_1066_ = 1;
					local L_1067_ = tostring(L_1063_.Material)
					local L_1068_ = string.sub(tostring(L_1063_.Material), 15, # L_1067_)
					local L_1069_ = L_68_[L_1063_.Name]
					local L_1070_ = L_68_[L_1068_]
					L_1066_ = L_1069_ or L_1070_ or 1;
					if L_1063_:FindFirstChild("PartModifier") then
						L_1066_ = L_1063_.PartModifier.Value
					end;
					if L_1063_:IsDescendantOf(game.Workspace.Ray_Ignore) or L_1063_:IsDescendantOf(game.Workspace.Debris) then
						L_1066_ = 0
					end;
					local L_1071_, L_1072_ = game.Workspace:FindPartOnRayWithWhitelist(Ray.new(L_1064_ + L_1057_ * 1, L_1057_ * -2), {
						L_1063_
					}, true)
					local L_1073_ = (L_1072_ - L_1064_).magnitude;
					local L_1074_ = L_1073_ * L_1066_;
					L_1062_ = math.min(L_1052_, L_1062_ + L_1074_)
					L_1048_ = 1 - L_1062_ / L_1052_;
					if L_1066_ > 0 then
						L_1061_ = L_1061_ + 1
					end;
					if L_1063_ and L_1063_.Parent and L_1063_.Parent.Name == "Hitboxes" or L_1063_ and L_1063_.Parent and L_1063_.Parent.Parent and L_1063_.Parent.Parent:FindFirstChild("Humanoid") or L_1063_ and L_1063_.Parent and L_1063_.Parent:FindFirstChild("Humanoid") or L_1063_ and L_1063_.Parent and L_1063_.Parent:FindFirstChild("Humanoid") and (1 > L_1063_.Transparency or L_1063_.Name == "HeadHB") and L_1063_.Parent:IsA("Model") then
						table.insert(L_1050_, L_1063_.Parent)
					else
						table.insert(L_1050_, L_1063_)
					end
				end
			until L_1063_ == nil or L_1063_.Parent == L_1046_arg0 or L_1062_ >= L_1052_ or 0 >= L_1048_ or L_1061_ >= 4
		end)
		if L_1061_ >= 5 then
			L_1048_ = 0
		end
	end)
	return L_1048_, L_1049_
end;
function tracerTable(L_1075_arg0)
	local L_1076_ = {
		L_34_,
		L_32_.Character,
		game.Workspace.Debris,
		game.Workspace.Ray_Ignore,
		game.Workspace.Map:WaitForChild("Clips"),
		game.Workspace.Map:WaitForChild("SpawnPoints")
	}
	local L_1077_ = game.ReplicatedStorage.Weapons:FindFirstChild(L_32_.Character.EquippedTool.Value)
	local L_1078_ = L_1077_.Penetration.Value * 0.01;
	local L_1079_ = L_1077_.Range.Value;
	local L_1080_ = L_1077_.DMG.Value;
	local L_1081_ = L_1075_arg0;
	local L_1082_ = CFrame.new(L_34_.CFrame.p, L_1081_).lookVector.unit * L_1079_ * 0.0694;
	local L_1083_ = Ray.new(L_34_.CFrame.p, L_1082_)
	local L_1084_, L_1085_ = workspace:FindPartOnRayWithIgnoreList(L_1083_, L_1076_, false, true)
	local L_1086_ = 0;
	local L_1087_ = 0;
	local L_1088_, L_1089_, L_1090_;
	local L_1091_ = 1;
	damagemodifier = 1;
	pcall(function()
		repeat
			L_1088_, L_1089_, L_1090_ = workspace:FindPartOnRayWithIgnoreList(L_1083_, L_1076_, false, true)
			if L_1088_ and L_1088_.Parent then
				L_1091_ = 1;
				L_1086_ = L_1086_ + 1;
				if L_1088_.Name == "nowallbang" then
					L_1091_ = 100
				elseif L_1088_:FindFirstChild("PartModifier") then
					L_1091_ = L_1088_.PartModifier.Value
				end;
				local L_1092_, L_1093_ = game.Workspace:FindPartOnRayWithWhitelist(Ray.new(L_1089_ + L_1082_ * 1, L_1082_ * -2), {
					L_1088_
				}, true)
				local L_1094_ = (L_1093_ - L_1089_).magnitude;
				local L_1095_ = L_1094_ * L_1091_;
				L_1087_ = math.min(L_1078_, L_1087_ + L_1095_)
				damagemodifier = 1 - L_1087_ / L_1078_;
				if damagemodifier > 0 and L_1091_ < 100 then
					if L_1088_ and L_1088_.Parent and L_1088_.Parent.Name == "Hitboxes" or L_1088_ and L_1088_.Parent and L_1088_.Parent.Parent and L_1088_.Parent.Parent:FindFirstChild("Humanoid") or L_1088_ and L_1088_.Parent and L_1088_.Parent:FindFirstChild("Humanoid") or L_1088_ and L_1088_.Parent and L_1088_.Parent:FindFirstChild("Humanoid") and (1 > L_1088_.Transparency or L_1088_.Name == "HeadHB") and L_1088_.Parent:IsA("Model") then
						table.insert(L_1076_, L_1088_.Parent)
					else
						table.insert(L_1076_, L_1088_)
					end
				end
			end
		until L_1088_ == nil or L_1087_ >= L_1078_ or 0 >= damagemodifier or L_1086_ >= 4
	end)
	return L_1076_
end;
function teamCheck(L_1096_arg0, L_1097_arg1)
	if L_1096_arg0 == L_32_ or not L_1096_arg0.Team then
		return false
	end;
	return L_1097_arg1 or L_1096_arg0.Team ~= L_32_.Team
end;
function getWeaponInfo()
	local L_1098_ = {
		alive = false,
		melee = false,
		clientgun = nil,
		ammo = 0,
		name = "",
		sniper = false,
		silentAim = library_flags["otherSilentAim"],
		FOV = library_flags["otherFOV"],
		silentFOV = library_flags["otherSilentFOV"],
		smoothness = library_flags["otherSmoothness"],
		deadzone = library_flags["otherDeadzone"],
		baim = library_flags["otherBaim"],
		mindmg = library_flags["otherMin"],
		hitboxes = library_flags["otherHitboxes"],
		trigger = library_flags["otherTrigger"],
		triggerDelay = library_flags["otherTriggerDelay"],
		type = ""
	}
	if alive() and L_24_.Weapons:FindFirstChild(L_32_.Character.EquippedTool.Value) then
		local L_1099_ = L_24_.Weapons[L_32_.Character.EquippedTool.Value]
		L_1098_.clientgun = L_1099_;
		L_1098_.ammo = tonumber(L_32_.PlayerGui.GUI.AmmoGUI.AmmoClip.Text)
		L_1098_.melee = L_1099_:FindFirstChild("Melee")
		L_1098_.name = L_1099_.Name;
		L_1098_.alive = true;
		if L_1098_.melee then
			L_1098_.mindmg = 387420489;
			L_1098_.hitboxes = {
				"Body"
			}
			L_1098_.silentAim = false;
			L_1098_.silentFOV = 0
		end;
		if L_1099_:FindFirstChild("RifleThing") then
			L_1098_.FOV = library_flags["riflesFOV"]
			L_1098_.silentFOV = library_flags["riflesSilentFOV"]
			L_1098_.deadzone = library_flags["riflesDeadzone"]
			L_1098_.baim = library_flags["riflesBaim"]
			L_1098_.silentAim = library_flags["riflesSilentAim"]
			L_1098_.smoothness = library_flags["riflesSmoothness"]
			L_1098_.mindmg = library_flags["riflesMin"]
			L_1098_.hitboxes = library_flags["riflesHitboxes"]
			L_1098_.trigger = library_flags["riflesTrigger"]
			L_1098_.triggerDelay = library_flags["riflesTriggerDelay"]
			L_1098_.type = "main"
		elseif L_1099_:FindFirstChild("Secondary") and L_1099_.Name ~= "R8" and L_1099_.Name ~= "DesertEagle" then
			L_1098_.FOV = library_flags["pistolFOV"]
			L_1098_.silentFOV = library_flags["pistolSilentFOV"]
			L_1098_.deadzone = library_flags["pistolDeadzone"]
			L_1098_.baim = library_flags["pistolBaim"]
			L_1098_.silentAim = library_flags["pistolSilentAim"]
			L_1098_.smoothness = library_flags["pistolSmoothness"]
			L_1098_.mindmg = library_flags["pistolMin"]
			L_1098_.hitboxes = library_flags["pistolHitboxes"]
			L_1098_.trigger = library_flags["pistolTrigger"]
			L_1098_.triggerDelay = library_flags["pistolTriggerDelay"]
			L_1098_.type = "secondary"
		elseif L_1099_.Name == "R8" or L_1099_.Name == "DesertEagle" then
			L_1098_.FOV = library_flags["heavypFOV"]
			L_1098_.silentFOV = library_flags["heavypSilentFOV"]
			L_1098_.deadzone = library_flags["heavypDeadzone"]
			L_1098_.baim = library_flags["heavypBaim"]
			L_1098_.silentAim = library_flags["heavypSilentAim"]
			L_1098_.smoothness = library_flags["heavypSmoothness"]
			L_1098_.mindmg = library_flags["heavypMin"]
			L_1098_.hitboxes = library_flags["heavypHitboxes"]
			L_1098_.trigger = library_flags["heavypTrigger"]
			L_1098_.triggerDelay = library_flags["heavypTriggerDelay"]
			L_1098_.type = "secondary"
		elseif L_1099_.Name == "AWP" then
			L_1098_.FOV = library_flags["awpFOV"]
			L_1098_.silentFOV = library_flags["awpSilentFOV"]
			L_1098_.deadzone = library_flags["awpDeadzone"]
			L_1098_.baim = library_flags["awpBaim"]
			L_1098_.silentAim = library_flags["awpSilentAim"]
			L_1098_.smoothness = library_flags["awpSmoothness"]
			L_1098_.mindmg = library_flags["awpMin"]
			L_1098_.hitboxes = library_flags["awpHitboxes"]
			L_1098_.trigger = library_flags["awpTrigger"]
			L_1098_.triggerDelay = library_flags["awpTriggerDelay"]
			L_1098_.sniper = true;
			L_1098_.type = "main"
		elseif L_1099_.Name == "Scout" then
			L_1098_.FOV = library_flags["scoutFOV"]
			L_1098_.silentFOV = library_flags["scoutSilentFOV"]
			L_1098_.deadzone = library_flags["scoutDeadzone"]
			L_1098_.baim = library_flags["scoutBaim"]
			L_1098_.silentAim = library_flags["scoutSilentAim"]
			L_1098_.smoothness = library_flags["scoutSmoothness"]
			L_1098_.mindmg = library_flags["scoutMin"]
			L_1098_.hitboxes = library_flags["scoutHitboxes"]
			L_1098_.trigger = library_flags["scoutTrigger"]
			L_1098_.triggerDelay = library_flags["scoutTriggerDelay"]
			L_1098_.sniper = true;
			L_1098_.type = "main"
		elseif L_1099_.Name == "G3SG1" then
			L_1098_.mindmg = library_flags["autoMin"]
			L_1098_.hitboxes = library_flags["autoHitboxes"]
			L_1098_.sniper = true;
			L_1098_.type = "main"
		end
	end;
	return L_1098_
end;
function getNearest(L_1100_arg0, L_1101_arg1, L_1102_arg2)
	L_1100_arg0 = L_1100_arg0 * 3;
	if not L_57_.alive then
		return
	end;
	local L_1103_, L_1104_ = 387420489, nil;
	for L_1105_forvar0, L_1106_forvar1 in next, L_30_:GetPlayers() do
		if L_1106_forvar1.Character and L_1106_forvar1.Character.PrimaryPart and L_1106_forvar1.Character:FindFirstChild("Head") and teamCheck(L_1106_forvar1, L_1101_arg1) then
			local L_1107_, L_1108_ = L_34_:WorldToScreenPoint(L_1106_forvar1.Character.Head.Position)
			local L_1109_ = false;
			if L_1102_arg2 then
				local L_1110_ = Ray.new(L_34_.CFrame.p, (L_1106_forvar1.Character.Head.Position - L_34_.CFrame.p).unit * 500)
				local L_1111_, L_1112_ = workspace:FindPartOnRayWithIgnoreList(L_1110_, {
					L_34_,
					L_32_.Character,
					workspace.Ray_Ignore,
					workspace.Map:WaitForChild("Clips"),
					workspace.Map:WaitForChild("SpawnPoints")
				})
				if L_1111_:IsDescendantOf(L_1106_forvar1.Character) then
					L_1109_ = true
				end
			end;
			if L_1108_ then
				if not L_1102_arg2 or L_1102_arg2 and L_1109_ then
					local L_1113_ = Vector2.new(L_33_.X, L_33_.Y)
					local L_1114_ = (Vector2.new(L_1107_.X, L_1107_.Y) - L_1113_).magnitude;
					if L_1114_ < L_1103_ and L_1114_ <= L_1100_arg0 then
						L_1103_ = L_1114_;
						L_1104_ = L_1106_forvar1
					end
				end
			end
		end
	end;
	return L_1104_, L_1103_
end;
function playAudio(L_1115_arg0)
	if not game.ReplicatedStorage.Weapons:FindFirstChild(L_1115_arg0) then
		return
	end;
	local L_1116_ = game.ReplicatedStorage.Weapons[L_1115_arg0]
	local L_1117_ = L_1116_.Model:FindFirstChild("PreSounds") or L_1116_.Model;
	local L_1118_ = "Shoot"
	if L_1116_.Name == "USP" or L_1116_.Name == "M4A1" then
		L_1118_ = "SShoot"
	end;
	if L_57_.alive and L_1117_:FindFirstChild(L_1118_) then
		local L_1119_ = Instance.new('Sound', workspace)
		L_1119_.SoundId = L_1117_[L_1118_].Value;
		L_1119_.PlayOnRemove = true;
		L_1119_.Volume = 0.7;
		L_1119_:Destroy()
	end
end;
local L_71_ = {
	["AK47"] = "rbxassetid://6061266272",
	["AWP"] = "rbxassetid://6067278314",
	["G3SG1"] = "rbxassetid://6067426225",
	["DesertEagle"] = "rbxassetid://6067333190",
	["Glock"] = "rbxassetid://6067337612",
	["USP"] = "rbxassetid://6067338308",
	["Scout"] = "rbxassetid://6067338138",
	["P250"] = "rbxassetid://6067337798",
	["M4A4"] = "rbxassetid://6067358591",
	["M4A1"] = "rbxassetid://6067358774"
}
local L_72_ = {
	["USP"] = "SShoot",
	["M4A1"] = "SShoot"
}
function replaceAudio(L_1120_arg0)
	if not L_71_[L_1120_arg0] then
		return
	end;
	local L_1121_ = "Shoot"
	if L_72_[L_1120_arg0] then
		L_1121_ = L_72_[L_1120_arg0]
	end;
	pcall(function()
		L_32_.Character.Gun[L_1121_].Value = L_71_[L_1120_arg0]
	end)
end;
function updatePitch()
	L_24_.Events.ControlTurn:FireServer("0")
	if library_flags["Yaw"] ~= "Manual" or not library_flags["Anti Aim"] then
		indicatorHolder.Enabled = false
	end
end;
local L_73_ = 0;
local L_74_ = false;
function setYaw(L_1122_arg0, L_1123_arg1)
	if L_74_ then
		return
	end;
	L_1122_arg0 = holdE and 0 or L_1122_arg0;
	if library_flags["Pitch"] ~= "None" then
		updatePitch()
	end;
	if library_flags["Roll"] ~= "None" then
		local L_1124_ = 180;
		L_32_.Character.Humanoid.HipHeight = 2.05;
		L_32_.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
		L_32_.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
		L_32_.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, L_53_)
		L_32_.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, L_53_)
		L_32_.Character:SetPrimaryPartCFrame(CFrame.new(L_32_.Character.PrimaryPart.Position, L_32_.Character.HumanoidRootPart.Position + Vector3.new(L_34_.CFrame.lookVector.X, 0, L_34_.CFrame.lookVector.Z)) * CFrame.Angles(0, math.rad(L_1122_arg0), 0) * CFrame.Angles(0, 0, math.rad(L_1124_)))
		return
	end;
	L_32_.Character.Humanoid.HipHeight = 2;
	L_32_.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
	L_32_.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
	L_32_.Character.HumanoidRootPart.CFrame = CFrame.new(L_32_.Character.HumanoidRootPart.Position, L_32_.Character.HumanoidRootPart.Position + Vector3.new(L_34_.CFrame.lookVector.X, 0, L_34_.CFrame.lookVector.Z)) * CFrame.Angles(0, math.rad(L_1122_arg0), 0)
end;
function CreateThread(L_1125_arg0)
	local L_1126_ = coroutine.create(L_1125_arg0)
	coroutine.resume(L_1126_)
	return L_1126_
end;
local L_75_ = false;
function tracers(L_1127_arg0, L_1128_arg1)
	if not L_75_ and L_32_.Character and L_32_.Character:FindFirstChild("Gun") and L_1128_arg1 then
		L_75_ = true;
		CreateThread(function()
			wait()
			L_75_ = false
		end)
		local L_1129_ = Instance.new("Part")
		local L_1130_ = Instance.new("Part")
		local L_1131_ = Instance.new("Beam", L_1129_)
		local L_1132_ = Instance.new("Part")
		local L_1133_ = Instance.new("Attachment")
		local L_1134_ = Instance.new("Attachment")
		if library_flags["Tracer Mode"] == "Part" then
			local L_1135_ = L_1128_arg1.Position - L_1127_arg0;
			L_1132_.Material = "ForceField"
			L_1132_.CFrame = CFrame.new(L_1127_arg0 + L_1135_ / 2, L_1127_arg0)
			L_1132_.Size = Vector3.new(0.125, 0.125, L_1135_.Magnitude)
			L_1132_.CanCollide = false;
			L_1132_.Transparency = 0;
			L_1132_.Anchored = true;
			L_1132_.Color = library_flags["tracerColor"]
			L_1132_.Parent = workspace.Debris
		elseif library_flags["Tracer Mode"] == "Beam" then
			L_1129_.Size = Vector3.new(0.1, 0.1, 0.1)
			L_1129_.Transparency = 1;
			L_1129_.Parent = workspace;
			L_1129_.Position = L_1127_arg0;
			L_1129_.CanCollide = false;
			L_1129_.Anchored = true;
			L_1133_.Parent = L_1129_;
			L_1130_.Size = Vector3.new(0.1, 0.1, 0.1)
			L_1130_.Transparency = 1;
			L_1130_.Parent = workspace;
			L_1130_.Position = L_1128_arg1.Position;
			L_1130_.CanCollide = false;
			L_1130_.Anchored = true;
			L_1134_.Parent = L_1130_;
			L_1131_.Color = ColorSequence.new(library_flags["tracerColor"])
			L_1131_.LightEmission = 1;
			L_1131_.LightInfluence = 0;
			L_1131_.Transparency = NumberSequence.new{
				NumberSequenceKeypoint.new(0, 1 - L_5_.options["tracerColor"].trans),
				NumberSequenceKeypoint.new(1, 1 - L_5_.options["tracerColor"].trans)
			}
			L_1131_.Width0 = 0.25;
			L_1131_.Width1 = 0.25;
			L_1131_.Attachment0 = L_1133_;
			L_1131_.Attachment1 = L_1134_;
			L_1131_.FaceCamera = library_flags["Beams Face Camera"]
			L_1131_.Texture = "http://www.roblox.com/asset/?id=" .. library_flags["Beam Texture"]
			L_1131_.TextureMode = Enum.TextureMode.Wrap;
			L_1131_.Parent = L_1129_
		end;
		CreateThread(function()
			wait(0.3)
			for L_1136_forvar0 = 1, 100, 4 do
				wait()
				if L_1136_forvar0 / 100 > 1 - L_5_.options["tracerColor"].trans then
					L_1132_.Transparency = L_1136_forvar0 / 100;
					L_1131_.Transparency = NumberSequence.new{
						NumberSequenceKeypoint.new(0, L_1136_forvar0 / 100),
						NumberSequenceKeypoint.new(1, L_1136_forvar0 / 100)
					}
				end
			end;
			L_1132_:Destroy()
			L_1129_:Destroy()
			L_1130_:Destroy()
		end)
	end
end;
getgenv().tracers = tracers;
function fireHitpart(L_1137_arg0, L_1138_arg1, L_1139_arg2, L_1140_arg3, L_1141_arg4)
	if L_34_:FindFirstChild("Arms") and L_32_.Character and L_32_.Character:FindFirstChild("EquippedTool") and L_32_.Character:FindFirstChild("Gun") then
		local L_1142_ = L_1137_arg0.CFrame.p;
		local L_1143_ = L_32_.Character.EquippedTool.Value;
		local L_1144_ = L_32_.Character.Gun;
		local L_1145_ = L_34_.Arms:FindFirstChild("Guy")
		local L_1146_ = L_34_.Arms:FindFirstChild("fire")
		if L_1145_ and L_1146_ then
			pcall(function()
				L_1145_:LoadAnimation(L_1146_):Play()
			end)
			L_40_:FireServer(L_1137_arg0, L_1141_arg4 or encodePos(L_1137_arg0.Position), L_1143_, 4096, L_1144_, nil, L_1138_arg1, false, L_1138_arg1 < 1, workspace.CurrentCamera.CFrame.p, game.Workspace.DistributedTime.Value, Vector3.new(0, 0, 0), true, nil, nil, nil)
			if not L_1140_arg3 then
				playAudio(L_1143_)
			end
		end
	end
end;
function countESP()
	local L_1147_ = 0;
	for L_1148_forvar0, L_1149_forvar1 in next, L_56_ do
		if L_1149_forvar1.type == "plr" then
			L_1147_ = L_1147_ + 1
		end
	end;
	return L_1147_
end;
local L_76_ = 0;
function createEsp(L_1150_arg0, L_1151_arg1)
	local L_1152_ = Drawing.new("Text")
	local L_1153_ = Drawing.new("Text")
	local L_1154_ = Drawing.new("Line")
	local L_1155_ = Drawing.new("Square")
	local L_1156_ = Drawing.new("Square")
	local L_1157_ = Drawing.new("Square")
	local L_1158_ = Drawing.new("Square")
	local L_1159_ = "Object" .. tostring(L_76_)
	local L_1160_;
	if L_1150_arg0 == "plr" then
		L_1160_ = Instance.new("Folder", L_46_)
		L_1159_ = L_1151_arg1.Name;
		L_1160_.Name = L_1159_;
		L_1157_.Color = Color3.new(0, 0, 0)
		L_1157_.Thickness = 2;
		L_1157_.Transparency = 1;
		L_1157_.Visible = false;
		L_1158_.Color = Color3.new(0, 1, 0)
		L_1158_.Thickness = 1;
		L_1158_.Transparency = 1;
		L_1158_.Visible = false
	else
		L_76_ = L_76_ + 1
	end;
	L_1155_.Color = Color3.new(0, 0, 0)
	L_1155_.Thickness = 3;
	L_1155_.Transparency = 1;
	L_1155_.Filled = false;
	L_1155_.Visible = false;
	L_1156_.Color = Color3.new(1, 1, 1)
	L_1156_.Thickness = 1;
	L_1156_.Transparency = 1;
	L_1156_.Filled = false;
	L_1156_.Visible = false;
	L_1154_.From = Vector2.new(L_34_.ViewportSize.X / 2, L_34_.ViewportSize.Y * 0.9)
	L_1154_.Color = Color3.new(1, 1, 1)
	L_1154_.Thickness = 1;
	L_1154_.Transparency = 1;
	L_1154_.Visible = false;
	L_1152_.Text = L_1151_arg1.Name;
	L_1152_.Size = 13;
	L_1152_.Center = true;
	L_1152_.OutlineColor = Color3.new(0, 0, 0)
	L_1152_.Color = Color3.new(1, 1, 1)
	L_1152_.Visible = false;
	L_1153_.Text = "Gun"
	L_1153_.Size = 13;
	L_1153_.Center = true;
	L_1153_.OutlineColor = Color3.new(0, 0, 0)
	L_1153_.Color = Color3.new(1, 1, 1)
	L_1153_.Visible = false;
	function invis()
		L_1156_.Visible = false;
		L_1154_.Visible = false;
		L_1152_.Visible = false;
		L_1158_.Visible = false;
		L_1155_.Visible = false;
		L_1157_.Visible = false;
		L_1153_.Visible = false
	end;
	function remove()
		L_1156_:Remove()
		L_1153_:Remove()
		L_1154_:Remove()
		L_1152_:Remove()
		L_1158_:Remove()
		L_1155_:Remove()
		L_1157_:Remove()
	end;
	local L_1161_ = {
		text = L_1152_,
		weapon = L_1153_,
		tracer = L_1154_,
		box = L_1156_,
		healthb = L_1158_,
		boxoutline = L_1155_,
		healthbo = L_1157_,
		invis = invis,
		remove = remove,
		type = L_1150_arg0,
		object = L_1151_arg1
	}
	L_56_[L_1159_] = L_1161_;
	return L_1161_
end;
local L_77_ = {}
function ApplyValue(L_1162_arg0, L_1163_arg1, L_1164_arg2, L_1165_arg3)
	if L_1162_arg0 then
		for L_1166_forvar0, L_1167_forvar1 in pairs(game.ReplicatedStorage.Weapons:GetDescendants()) do
			if L_1167_forvar1.Name == L_1163_arg1 then
				L_1164_arg2[L_1167_forvar1] = {
					value = L_1167_forvar1.Value
				}
				L_1167_forvar1.Value = L_1165_arg3;
				for L_1168_forvar0, L_1169_forvar1 in pairs(L_1167_forvar1:GetChildren()) do
					L_1164_arg2[L_1169_forvar1] = {
						value = L_1169_forvar1.Value
					}
					L_1169_forvar1.Value = L_1165_arg3
				end
			end
		end
	else
		for L_1170_forvar0, L_1171_forvar1 in pairs(game.ReplicatedStorage.Weapons:GetDescendants()) do
			if L_1171_forvar1.Name == L_1163_arg1 and L_1164_arg2[L_1171_forvar1] then
				L_1171_forvar1.Value = L_1164_arg2[L_1171_forvar1].value;
				for L_1172_forvar0, L_1173_forvar1 in pairs(L_1171_forvar1:GetChildren()) do
					L_1173_forvar1.Value = L_1164_arg2[L_1173_forvar1].value
				end
			end
		end
	end
end;
L_43_.Name = "bt"
function createPlr(L_1174_arg0)
	if not L_1174_arg0.Character then
		return
	end;
	local L_1175_ = Instance.new("Model", L_43_)
	L_1175_.Name = L_1174_arg0.Name;
	if L_47_[L_1174_arg0.Name] then
		L_47_[L_1174_arg0.Name]:Destroy()
		L_47_[L_1174_arg0.Name] = nil
	end;
	for L_1176_forvar0, L_1177_forvar1 in next, L_1174_arg0.Character:GetChildren() do
		if not L_1177_forvar1:IsA"BasePart" or L_1177_forvar1.Name == "Gun" then
			continue;
		end;
		if L_1177_forvar1.Name ~= "HeadHB" and L_1177_forvar1.Transparency == 1 then
			continue;
		end;
		local L_1178_ = L_1177_forvar1:Clone()
		L_1178_.Transparency = 0;
		L_1178_.Anchored = true;
		L_1178_.CanCollide = false;
		L_1178_.Color = Color3.new(1, 1, 1)
		L_1178_.Size = L_1178_.Size - Vector3.new(0.035, 0.035, 0.035)
		L_1178_.Transparency = 1;
		L_1178_.Name = L_1177_forvar1.Name;
		L_1178_.Parent = L_1175_;
		for L_1179_forvar0, L_1180_forvar1 in next, L_1178_:GetChildren() do
			if not L_1180_forvar1:IsA"BasePart" and not L_1180_forvar1:IsA"DataModelMesh" then
				L_1180_forvar1:Destroy()
			end
		end
	end;
	if # L_1175_:GetChildren() > 0 then
		L_47_[L_1174_arg0.Name] = L_1175_
	end
end;
local L_78_ = false;
function updateSkybox()
	if L_29_:FindFirstChild("SunRays") then
		L_29_.SunRays.Enabled = false
	end;
	local L_1181_ = library_flags["skyboxValue"]
	if library_flags["Skybox Changer"] and Skyboxes[L_1181_] then
		local L_1182_ = Instance.new("Sky", L_29_)
		L_1182_.Name = "customsky"
		L_1182_.SunTextureId = "rbxassetid://"
		L_1182_.CelestialBodiesShown = "rbxassetid://"
		L_78_ = true;
		for L_1183_forvar0, L_1184_forvar1 in next, Skyboxes[L_1181_] do
			L_1182_[L_1183_forvar0] = L_1184_forvar1
		end
	elseif not library_flags["Skybox Changer"] and L_78_ then
		if L_29_:FindFirstChild("customsky") then
			L_29_.customsky:Destroy()
		end;
		local L_1185_ = game:GetService("Lighting"):FindFirstChildOfClass("Sky")
		if L_1185_ then
			L_78_ = false;
			L_1185_.Parent = workspace;
			wait()
			L_1185_.Parent = L_29_
		end
	end
end;
local L_79_ = {
	"HumanoidRootPart",
	"FakeHead",
	"C4",
	"Gun"
}
local L_80_ = false;
function hitChams(L_1186_arg0, L_1187_arg1, L_1188_arg2, L_1189_arg3)
	if L_1186_arg0.Character and not L_80_ then
		L_80_ = true;
		CreateThread(function()
			wait(0.05)
			L_80_ = false
		end)
		for L_1190_forvar0, L_1191_forvar1 in next, L_1186_arg0.Character:GetChildren() do
			if L_1191_forvar1:IsA"MeshPart" and L_1191_forvar1.Transparency ~= 1 or L_1191_forvar1.Name == "Head" then
				if not L_79_[L_1191_forvar1.Name] then
					local L_1192_ = L_1191_forvar1:Clone()
					L_1192_:ClearAllChildren()
					L_1192_.Material = L_1187_arg1 and "SmoothPlastic" or "ForceField"
					L_1192_.CFrame = L_1191_forvar1.CFrame;
					L_1192_.Size = L_1191_forvar1.Name == "Head" and Vector3.new(1.18, 1.18, 1.18) or L_1192_.Size;
					L_1192_.CanCollide = false;
					L_1192_.Color = L_1187_arg1 or library_flags["hitchamsColor"]
					L_1192_.Anchored = true;
					L_1192_.Transparency = L_1188_arg2 or 0;
					L_1192_.Parent = workspace.Debris;
					if hasProperty(L_1192_, "TextureID") then
						L_1192_.TextureID = ""
					end;
					if hasProperty(L_1192_, "UsePartColor") then
						L_1192_.UsePartColor = true
					end;
					L_31_:AddItem(L_1192_, L_1189_arg3 or 1.5)
					if not L_1187_arg1 then
						local L_1193_ = L_27_:Create(L_1192_, TweenInfo.new(1.5), {
							Transparency = 1
						})
						L_1193_:Play()
					end
				end
			end
		end
	end
end;
getgenv().hitChams = hitChams;
local L_81_ = {
	"Head",
	"UpperTorso",
	"LowerTorso",
	"LeftUpperArm",
	"LeftLowerArm",
	"LeftHand",
	"RightUpperArm",
	"RightLowerArm",
	"RightHand",
	"LeftUpperLeg",
	"LeftLowerLeg",
	"LeftFoot",
	"RightUpperLeg",
	"RightLowerLeg",
	"RightFoot"
}
function chamsPlr(L_1194_arg0)
	if L_1194_arg0.Character and teamCheck(L_1194_arg0, L_39_) and L_1194_arg0.Character:FindFirstChild("HumanoidRootPart") then
		for L_1195_forvar0, L_1196_forvar1 in next, L_1194_arg0.Character:GetChildren() do
			if L_1196_forvar1:IsA"Accoutrement" then
				L_1196_forvar1:Destroy()
			end;
			if table.find(L_81_, L_1196_forvar1.Name) then
				if L_1196_forvar1:FindFirstChild("inner") or L_1196_forvar1:FindFirstChild("outer") then
					continue;
				end;
				local L_1197_;
				local L_1198_;
				if L_1196_forvar1.Name == "Head" then
					L_1197_ = Instance.new("CylinderHandleAdornment", L_1196_forvar1)
					L_1198_ = Instance.new("CylinderHandleAdornment", L_1196_forvar1)
					L_1197_.CFrame = L_1197_.CFrame * CFrame.Angles(math.rad(90), 0, 0)
					L_1198_.CFrame = L_1198_.CFrame * CFrame.Angles(math.rad(90), 0, 0)
					L_1197_.Radius = 0.54;
					L_1198_.Radius = 0.62;
					L_1197_.Height = 1.12;
					L_1198_.Height = 1.3
				else
					L_1197_ = Instance.new("BoxHandleAdornment", L_1196_forvar1)
					L_1198_ = Instance.new("BoxHandleAdornment", L_1196_forvar1)
					L_1197_.Size = L_1196_forvar1.Size + Vector3.new(0.02, 0.02, 0.02)
					L_1198_.Size = L_1196_forvar1.Size + Vector3.new(0.12, 0.12, 0.12)
				end;
				L_1197_.Name = "inner"
				L_1198_.Name = "outer"
				L_1197_.Adornee = L_1196_forvar1;
				L_1198_.Adornee = L_1196_forvar1;
				L_1197_.Color3 = library_flags["chamsColor2"]
				L_1198_.Color3 = library_flags["chamsColor"]
				L_1197_.Transparency = 1 - L_5_.options["chamsColor2"].trans;
				L_1198_.Transparency = 1 - L_5_.options["chamsColor"].trans;
				L_1197_.AlwaysOnTop = true;
				L_1198_.AlwaysOnTop = false;
				L_1197_.ZIndex = 5;
				L_1194_arg0.Character.HumanoidRootPart.AncestryChanged:connect(function()
					L_1197_:Destroy()
					L_1198_:Destroy()
				end)
			end
		end
	end
end;
local L_82_ = Instance.new("ScreenGui")
local L_83_ = Instance.new("Frame")
local L_84_ = Instance.new("TextLabel")
local L_85_ = Instance.new("Frame")
local L_86_ = Instance.new("UIListLayout")
L_82_.Enabled = true;
L_82_.Parent = L_32_.PlayerGui;
L_83_.Visible = false;
L_83_.Parent = L_82_;
L_83_.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
L_83_.BorderColor3 = Color3.fromRGB(30, 60, 150)
L_83_.Position = UDim2.new(0, 3, 0.6, -100)
L_83_.Size = UDim2.new(0, 200, 0, 20)
L_84_.Parent = L_83_;
L_84_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
L_84_.BackgroundTransparency = 1;
L_84_.BorderSizePixel = 0;
L_84_.Size = UDim2.new(1, 0, 1, 0)
L_84_.Font = Enum.Font.Ubuntu;
L_84_.Text = "Spectators"
L_84_.TextColor3 = Color3.fromRGB(255, 255, 255)
L_84_.TextSize = 14;
L_85_.Parent = L_83_;
L_85_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
L_85_.BackgroundTransparency = 1;
L_85_.Position = UDim2.new(0, 0, 0, 21)
L_85_.Size = UDim2.new(1, 0, 1, 0)
L_86_.Parent = L_85_;
function addSpectator(L_1199_arg0)
	local L_1200_ = Instance.new("TextLabel")
	L_1200_.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	L_1200_.BorderSizePixel = 0;
	L_1200_.Size = UDim2.new(1, 0, 1, 0)
	L_1200_.Font = Enum.Font.Ubuntu;
	L_1200_.TextColor3 = Color3.fromRGB(255, 255, 255)
	L_1200_.Text = L_1199_arg0;
	L_1200_.TextSize = 13;
	L_1200_.Visible = true;
	L_1200_.Parent = L_85_
end;
function removeSpectators()
	for L_1201_forvar0, L_1202_forvar1 in next, L_85_:GetChildren() do
		if L_1202_forvar1:IsA"TextLabel" then
			L_1202_forvar1:Destroy()
		end
	end
end;
local L_87_ = Instance.new("Frame")
local L_88_ = Instance.new("TextLabel")
local L_89_ = Instance.new("Frame")
local L_90_ = Instance.new("UIListLayout")
L_87_.Visible = false;
L_87_.ZIndex = 0;
L_87_.Parent = L_82_;
L_87_.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
L_87_.BorderColor3 = Color3.fromRGB(30, 60, 150)
L_87_.Position = UDim2.new(0, 4, 0.45, -100)
L_87_.Size = UDim2.new(0, 200, 0, 20)
L_88_.Parent = L_87_;
L_88_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
L_88_.BackgroundTransparency = 1;
L_88_.BorderSizePixel = 0;
L_88_.Size = UDim2.new(1, 0, 1, 0)
L_88_.Font = Enum.Font.Ubuntu;
L_88_.Text = "Keybinds"
L_88_.TextColor3 = Color3.fromRGB(255, 255, 255)
L_88_.TextSize = 14;
L_89_.Parent = L_87_;
L_89_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
L_89_.BackgroundTransparency = 1;
L_89_.Position = UDim2.new(0, 0, 0, 21)
L_89_.Size = UDim2.new(1, 0, 1, 0)
L_90_.Parent = L_89_;
function addBindtext(L_1203_arg0, L_1204_arg1)
	local L_1205_ = L_1204_arg1 == "hold" and " (hold)" or " (toggle)"
	local L_1206_ = Instance.new("TextLabel")
	L_1206_.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	L_1206_.BorderSizePixel = 0;
	L_1206_.Size = UDim2.new(1, 0, 1, 0)
	L_1206_.Font = Enum.Font.Ubuntu;
	L_1206_.TextColor3 = Color3.fromRGB(255, 255, 255)
	L_1206_.Text = L_1203_arg0 .. L_1205_;
	L_1206_.TextSize = 13;
	L_1206_.Visible = true;
	L_1206_.Parent = L_89_
end;
local L_91_ = {}
local L_92_ = {}
local L_93_ = {}
local L_94_ = {
	{
		"TKnife_Stock"
	},
	{
		"CTKnife_Stock"
	}
}
local L_95_ = {
	{
		"TGlove_Stock"
	},
	{
		"CTGlove_Stock"
	}
}
local L_96_ = {}
for L_1207_forvar0, L_1208_forvar1 in pairs(game.Players.LocalPlayer.PlayerGui.Client.Rarities:GetChildren()) do
	table.insert(L_93_, {
		L_1208_forvar1.Name
	})
end;
getgenv().unlockInventory = false;
getgenv().silentAimEnabled = false;
getgenv().antiAimCFrame = CFrame.new()
getgenv().lastKnife = ""
getgenv().lastGlove = ""
getgenv().predictionValue = Vector3.new()
spawn(function()
	wait(3)
	local L_1209_ = game:GetService("Players")
	local L_1210_ = L_1209_.LocalPlayer;
	local L_1211_ = game:GetService("ReplicatedStorage")
	local L_1212_ = workspace.CurrentCamera;
	local L_1213_ = game:GetService("RunService")
	local L_1214_ = game:GetService("Debris")
	pingIntance = game.Stats.PerformanceStats.Ping;
	local L_1215_ = false;
	local L_1216_ = false;
	local L_1217_ = nil;
	local L_1218_ = {}
	local L_1219_ = getgenv().library.flags;
	local L_1220_ = getgenv().hitChams;
	local L_1221_ = getgenv().decodePos;
	local L_1222_ = getgenv().encodePos;
	local L_1223_ = getgenv().hitlog;
	local L_1224_ = getgenv().tracers;
	local L_1225_ = getgenv().predictionValue;
	local L_1226_ = 1;
	local L_1227_ = 0;
	local L_1228_ = 0;
	local L_1229_ = false;
	local L_1230_ = nil;
	local L_1231_ = false;
	L_1213_.RenderStepped:Connect(function(L_1232_arg0)
		L_1227_ = L_1232_arg0;
		L_1228_ = pingIntance:GetValue()
		L_1226_ = getgenv().damagemod;
		L_1218_ = getgenv().oldPositions;
		L_1225_ = getgenv().predictionValue;
		L_1229_ = getgenv().holdE;
		L_1230_ = getgenv().hookJP;
		L_1231_ = getgenv().hookWS
	end)
	oldNewindex = hookmetamethod(game, "__newindex", LPH_NO_VIRTUALIZE(function(L_1233_arg0, L_1234_arg1, L_1235_arg2)
		if L_1233_arg0.Name == "Crosshair" and L_1234_arg1 == "Visible" and L_1219_["Force Crosshair"] then
			L_1235_arg2 = true
		end;
		if L_1233_arg0 == L_1212_ and L_1234_arg1 == "CFrame" then
			if L_1219_["Aspect Ratio"] then
				L_1235_arg2 = L_1235_arg2 * CFrame.new(0, 0, 0, 1, 0, 0, 0, L_1219_["ratioValue"], 0, 0, 0, 1)
			end;
			if L_1219_["Anti Aim"] and L_1219_["Roll"] ~= "None" then
				L_1235_arg2 = L_1235_arg2 + Vector3.new(0, L_1219_["Third Person"] and 2 or 1.5, 0)
			end
		end;
		return oldNewindex(L_1233_arg0, L_1234_arg1, L_1235_arg2)
	end))
	oldNamecall = hookmetamethod(game, "__namecall", LPH_NO_VIRTUALIZE(function(L_1236_arg0, ...)
		local L_1237_ = {
			...
		}
		local L_1238_ = getnamecallmethod()
		local L_1239_ = L_1236_arg0.Name;
		if L_1238_ == "GetService" and L_1237_[1] == "Cuteware" then
			local L_1240_ = {
				HitEvent = onHit,
				KillEvent = onKill,
				Chat = chat,
				SetYaw = setYaw
			}
			function L_1240_:GetTabs()
				local L_1241_ = {
					Legit = L_5_.tabs[1],
					Rage = L_5_.tabs[2],
					Visuals = L_5_.tabs[3],
					Misc = L_5_.tabs[4],
					Exploits = L_5_.tabs[5],
					Scripts = L_5_.tabs[6],
					Settings = L_5_.tabs[100]
				}
				return L_1241_
			end;
			return L_1240_
		end;
		if L_1238_ == "Kick" and L_1236_arg0 == L_1210_ then
			return
		end;
		if string.find(L_1238_, "FindPartOnRay") and (L_1219_["Ragebot"] or getgenv().silentAimEnabled) then
			if getgenv().target then
				local L_1242_ = getgenv().target.CFrame.p;
				local L_1243_ = L_1212_.CFrame.p;
				if not L_1219_["From Camera"] and L_1210_.Character and L_1210_.Character.PrimaryPart then
					L_1243_ = Vector3.new(L_1210_.Character.PrimaryPart.Position.X, L_1210_.Character.Head.Position.Y, L_1210_.Character.PrimaryPart.Position.Z)
				end;
				local L_1244_ = Ray.new(L_1243_, (L_1242_ + Vector3.new(0, (L_1243_ - L_1242_).Magnitude / 500, 0) - L_1243_).unit * 500)
				CreateThread(function()
					L_1217_ = L_1242_;
					wait(0.3)
					L_1217_ = nil
				end)
				return oldNamecall(L_1236_arg0, L_1244_, select(2, ...))
			end
		end;
		if L_1238_ == "FireServer" then
			if L_1239_ == "UpdatePing" and L_1219_["Ping Spoof"] then
				return oldNamecall(L_1236_arg0, math.random(100, 600) / 1000, select(2, ...))
			end;
			if L_1239_ == "RemoteEvent" and typeof(L_1237_[1]) == "table" and L_1237_[1][1] == "kick" then
				return
			end;
			if L_1239_ == "FallDamage" and L_1219_["No Fall Damage"] then
				return
			end;
			if L_1239_ == "BURNME" and L_1219_["No Fire Damage"] then
				return
			end;
			if L_1237_[1] == L_1210_.UserId or string.find(tostring(L_1237_[1]), '{') then
				return
			end;
			if L_1239_ == "ApplyGun" then
				if string.find(L_1237_[1].Name, "Banana") or string.find(L_1237_[1].Name, "Flip") then
					local L_1245_ = ...
					L_1245_ = L_1211_.Weapons[L_1210_.Status.Team.Value .. " Knife"]
					return oldNamecall(L_1236_arg0, L_1245_, select(2, ...))
				end
			end;
			if getgenv().unlockInventory then
				if string.len(tostring(L_1236_arg0)) == 38 then
					if not L_1215_ then
						L_1215_ = true;
						for L_1246_forvar0, L_1247_forvar1 in next, L_93_ do
							local L_1248_;
							for L_1249_forvar0, L_1250_forvar1 in next, L_1237_[1] do
								if L_1247_forvar1[1] == L_1250_forvar1[1] then
									L_1248_ = true
								end
							end;
							if not L_1248_ then
								table.insert(L_1237_[1], L_1247_forvar1)
							end
						end
					end;
					return
				end;
				if L_1239_ == "DataEvent" and L_1237_[1][4] then
					local L_1251_ = string.split(L_1237_[1][4][1], "_")[2]
					local L_1252_ = L_1237_[1][3]
					if L_1237_[1][2] == "Both" then
						L_1210_["SkinFolder"]["CTFolder"][L_1252_].Value = L_1251_;
						L_1210_["SkinFolder"]["TFolder"][L_1252_].Value = L_1251_
					else
						L_1210_["SkinFolder"][L_1237_[1][2] .. "Folder"][L_1252_].Value = L_1251_
					end;
					spawn(function()
						if L_1237_[1][4] and L_1237_[1][5] and L_1237_[1][5][2] then
							if L_1237_[1][3] == "Knife" then
								getgenv().lastKnife = L_1237_[1][4][1]
							elseif L_1237_[1][3] == "Glove" then
								getgenv().lastGlove = L_1237_[1][4][1]
							end
						end
					end)
				end
			end;
			if L_1239_ == "ControlTurn" then
				if L_1219_["Anti Aim"] then
					local L_1253_ = 0;
					if L_1219_["Pitch"] == "Down" then
						L_1253_ = -1
					elseif L_1219_["Pitch"] == "Up" then
						L_1253_ = 1
					elseif L_1219_["Pitch"] == "180" then
						L_1253_ = 2.2
					end;
					if L_1229_ then
						L_1253_ = 0
					end;
					return oldNamecall(L_1236_arg0, L_1253_, select(2, ...))
				end
			end;
			if L_1239_ == "ReplicateCamera" then
				if L_1219_["Spectator Anti Aim"] then
					return oldNamecall(L_1236_arg0, antiAimCFrame, select(2, ...))
				end
			end;
			if L_1239_ == "HitPart" then
				local L_1254_ = false;
				local L_1255_, L_1256_, L_1257_, L_1258_, L_1259_, L_1260_, L_1261_, L_1262_, L_1263_, L_1264_, L_1265_, L_1266_, L_1267_, L_1268_, L_1269_, L_1270_ = ...
				L_1267_ = true;
				L_1256_ = L_1221_(L_1256_)
				local L_1271_ = L_1218_[L_1255_.Parent.Name]
				L_1261_ = L_1219_["Minimum Damage"] and L_1219_["minDamage"] > L_1261_ and L_1219_["minDamage"] or L_1261_;
				L_1261_ = L_1261_ * L_1226_;
				if L_1219_["Force Headshot"] and L_1271_ then
					L_1255_ = L_1255_.Parent.Head;
					L_1256_ = L_1255_.Position
				end;
				if L_1219_["Movement Prediction"] and L_1219_["Ragebot"] and L_1271_ then
					if L_1219_["Prediction Mode"] == "Old" then
						local L_1272_ = (L_1256_ - L_1218_[L_1255_.Parent.Name]) * Vector3.new(1, 0, 1)
						L_1256_ = L_1256_ + L_1272_ * L_1228_ / 1000 * L_1219_["predictAmount"] / 50
					elseif L_1219_["Prediction Mode"] == "Performance" then
						L_1256_ = L_1255_.Position + getgenv().predictionValue;
						getgenv().predictionValue = Vector3.new(0, 0, 0)
					elseif L_1219_["Prediction Mode"] == "Adaptive" then
						coroutine.wrap(function()
							local L_1273_ = L_1255_.Parent.HumanoidRootPart.Position;
							local L_1274_ = L_1218_[L_1255_.Parent.Name]
							local L_1275_ = (Vector3.new(L_1273_.X, 0, L_1273_.Z) - Vector3.new(L_1274_.X, 0, L_1274_.Z)) / L_1227_;
							local L_1276_ = Vector3.new(L_1275_.X / L_1275_.magnitude, 0, L_1275_.Z / L_1275_.magnitude)
							L_1256_ = L_1256_ + L_1276_ * L_1228_ / math.pow(L_1228_, 1.5) * L_1276_ / (L_1276_ / 2)
						end)
					end;
					L_1258_ = 0;
					L_1265_ = L_1265_ - 500;
					L_1254_ = true;
					oldNamecall(L_1236_arg0, L_1255_, L_1222_(L_1256_), L_1257_, L_1258_, L_1259_, L_1260_, L_1261_, L_1262_, L_1263_, L_1264_, L_1265_, L_1266_, L_1267_, L_1268_, L_1269_, L_1270_)
					spawn(function()
						if L_1219_["Show Prediction Position"] then
							local L_1277_ = Instance.new("Part")
							L_1277_.Size = Vector3.new(0.5, 0.5, 0.5)
							L_1277_.Anchored = true;
							L_1277_.CanCollide = false;
							L_1277_.Transparency = 0.6;
							L_1277_.Position = L_1256_;
							L_1277_.Color = Color3.new(1, 0.3, 0.3)
							L_1277_.Material = "Neon"
							L_1277_.Parent = workspace.Ray_Ignore;
							L_1214_:AddItem(L_1277_, 3)
						end
					end)
				end;
				if not L_1216_ then
					local L_1278_ = false;
					if string.find(L_1255_.Parent.Parent.Name, "bt") then
						L_1255_ = L_1209_[L_1255_.Parent.Name].Character[L_1255_.Name]
						L_1256_ = L_1255_.Position;
						L_1278_ = true
					end;
					if string.find(L_1255_.Name, "btHead") then
						L_1255_ = L_1255_.Parent["Head"]
						L_1256_ = L_1255_.Position;
						L_1278_ = true
					end;
					if L_1278_ then
						L_1216_ = true;
						L_1266_ = Vector3.new(420, 5, 69)
						CreateThread(function()
							wait(0.1)
							L_1216_ = false
						end)
					end
				end;
				CreateThread(function()
					if L_1219_["Bullet Tracers"] and L_1210_.Character and L_1212_:FindFirstChild("Arms") then
						local L_1279_;
						if L_1219_["Third Person"] then
							L_1279_ = L_1210_.Character.Gun:FindFirstChild("Flash")
						else
							L_1279_ = L_1212_.Arms:FindFirstChild("Flash")
						end;
						if L_1279_ then
							wait()
							local L_1280_ = Ray.new(L_1212_.CFrame.p, (L_1221_(L_1256_) - L_1212_.CFrame.p).unit * 100)
							local L_1281_, L_1282_, L_1283_ = workspace:FindPartOnRayWithIgnoreList(L_1280_, {
								workspace.Map,
								L_1212_,
								L_1210_.Character,
								workspace.Ray_Ignore,
								workspace.Map:WaitForChild("Clips"),
								workspace.Map:WaitForChild("SpawnPoints")
							}, false, true)
							L_1224_(L_1282_, L_1279_)
						end
					end
				end)
				CreateThread(function()
					if L_1209_:FindFirstChild(L_1255_.Parent.Name) then
						local L_1284_ = L_1209_[L_1255_.Parent.Name]
						onHit:Fire(L_1284_, L_1255_)
						if L_1219_["Hitlogs"] and L_1284_.Team ~= L_1210_.Team then
							CreateThread(function()
								pcall(L_1223_, L_1284_, L_1255_.Name, tostring(L_1257_))
							end)
						end;
						if L_1266_ ~= Vector3.new(420, 5, 69) then
							L_1216_ = true;
							CreateThread(function()
								wait(0.1)
								L_1216_ = false
							end)
						end;
						if L_1219_["Hit Chams"] and teamCheck(L_1284_, L_39_) then
							L_1220_(L_1284_)
						end;
						if L_1219_["Hitsound"] and teamCheck(L_1284_, false) then
							local L_1285_ = Instance.new('Sound', workspace)
							local L_1286_ = L_1219_["hitsoundValue"]
							local L_1287_ = hitSounds[L_1286_]
							if type(L_1287_) == "table" then
								L_1287_ = L_1287_[math.random(1, # L_1286_)]
							end;
							L_1285_.SoundId = L_1287_;
							L_1285_.PlayOnRemove = true;
							L_1285_.Volume = L_1219_["Hitsound Volume"]
							L_1285_:Destroy()
						end
					end
				end)
				if not L_1254_ then
					L_1256_ = L_1222_(L_1256_)
					return oldNamecall(L_1236_arg0, L_1255_, L_1256_, L_1257_, L_1258_, L_1259_, L_1260_, L_1261_, L_1262_, L_1263_, L_1264_, L_1265_, L_1266_, L_1267_, L_1268_, L_1269_, L_1270_)
				end
			end
		end;
		if L_1238_ == "InvokeServer" and L_1239_ == "Hugh" then
			return
		end;
		if L_1238_ == "LoadAnimation" then
			if L_1219_["Slide Walk"] and (L_1237_[1].Name == "RunAnim" or L_1237_[1].Name == "JumpAnim") then
				return wait(387420489)
			end
		end;
		if L_1238_ == "SetPrimaryPartCFrame" then
			if L_1239_ ~= L_1210_.Name and L_1219_["viewmodelEnabled"] then
				local L_1288_ = L_1237_[1]
				L_1288_ = L_1288_ * CFrame.new(L_1219_["viewmodelX"] / 10, L_1219_["viewmodelY"] / 10, - L_1219_["viewmodelZ"] / 10) * CFrame.Angles(0, 0, math.rad(L_1219_["viewmodelRoll"]))
				if L_1217_ and L_1219_["Visualize Silent Angles"] then
					L_1288_ = CFrame.new(L_1288_.p, L_1217_)
				end;
				return oldNamecall(L_1236_arg0, L_1288_, select(2, ...))
			end
		end;
		if L_1239_ == "Filter" and L_1219_["Uncensor Chat"] then
			return L_1237_[1]
		end;
		return oldNamecall(L_1236_arg0, ...)
	end))
end)
local L_97_ = L_5_:AddTab"Legit"
local L_98_ = L_97_:AddColumn()
local L_99_ = L_97_:AddColumn()
local L_100_ = false;
local L_101_ = L_98_:AddSection"Aimbot"
L_101_:AddToggle({
	text = "Enabled",
	flag = "aimbotEnabled"
})
L_101_:AddToggle({
	text = "Aim Assist"
}):AddBind({
	key = "MouseButton1",
	mode = "hold",
	flag = "assistBind",
	callback = function()
		if library_flags["aimbotEnabled"] and library_flags["Aim Assist"] and not L_5_.open then
			L_100_ = true;
			if L_57_.alive then
				local L_1289_ = L_32_.Character.Humanoid:GetState()
				if library_flags["Jump Check"] and L_1289_ == Enum.HumanoidStateType.Freefall then
					return
				end;
				if library_flags["Flash Check"] and L_32_.PlayerGui.Blnd.Blind.Transparency <= 0.6 then
					return
				end;
				local L_1290_, L_1291_ = getNearest(L_57_.FOV, L_38_, library_flags["legitVisOnly"])
				if L_1290_ and L_1291_ > L_57_.deadzone * 2.3 then
					local L_1292_, L_1293_ = L_34_:WorldToScreenPoint(L_57_.baim and L_1290_.Character.PrimaryPart.Position or L_1290_.Character.Head.Position)
					if L_1293_ then
						local L_1294_, L_1295_ = - ((L_33_.X - L_1292_.X) / L_57_.smoothness), - ((L_33_.Y - L_1292_.Y) / L_57_.smoothness)
						mousemoverel(L_1294_, L_1295_)
					end
				end
			end
		end
	end
})
L_101_:AddToggle({
	text = "Visible Only",
	flag = "legitVisOnly"
})
L_101_:AddToggle({
	text = "Teammates",
	flag = "legitteam",
	callback = function(L_1296_arg0)
		L_38_ = L_1296_arg0
	end
})
L_101_:AddToggle({
	text = "Magnet Triggerbot"
})
L_101_:AddToggle({
	text = "Jump Check"
})
L_101_:AddToggle({
	text = "Flash Check"
})
local L_102_ = false;
L_101_:AddBind({
	text = "Triggerbot Keybind",
	key = Enum.KeyCode.LeftAlt,
	mode = "hold",
	callback = function(L_1297_arg0)
		if not L_1297_arg0 then
			L_102_ = true
		else
			L_102_ = false
		end
	end
})
rifles2 = L_99_:AddSection"Rifles"
scout2 = L_99_:AddSection"Scout"
awp2 = L_99_:AddSection"AWP"
heavyp2 = L_99_:AddSection"Heavy Pistols"
pistols2 = L_99_:AddSection"Pistols"
smg = L_99_:AddSection"SMG"
other2 = L_99_:AddSection"Other"
rifles2:AddToggle({
	text = "Triggerbot",
	flag = "riflesTrigger"
})
rifles2:AddToggle({
	text = "Body Aim",
	flag = "riflesBaim"
})
rifles2:AddToggle({
	text = "Silent Aim",
	flag = "riflesSilentAim"
})
rifles2:AddSlider({
	text = "Aim Assist FOV",
	min = 1,
	max = 180,
	flag = "riflesFOV"
})
rifles2:AddSlider({
	text = "Silent Aim FOV",
	min = 1,
	max = 180,
	flag = "riflesSilentFOV"
})
rifles2:AddSlider({
	text = "Deadzone",
	min = 0,
	max = 20,
	flag = "riflesDeadzone"
})
rifles2:AddSlider({
	text = "Smoothness",
	min = 1,
	max = 50,
	flag = "riflesSmoothness"
})
rifles2:AddSlider({
	text = "Triggerbot Delay",
	min = 0,
	max = 100,
	flag = "riflesTriggerDelay"
})
scout2:AddToggle({
	text = "Triggerbot",
	flag = "scoutTrigger"
})
scout2:AddToggle({
	text = "Body Aim",
	flag = "scoutBaim"
})
scout2:AddToggle({
	text = "Silent Aim",
	flag = "scoutSilentAim"
})
scout2:AddSlider({
	text = "Aim Assist FOV",
	min = 1,
	max = 180,
	flag = "scoutFOV"
})
scout2:AddSlider({
	text = "Silent Aim FOV",
	min = 1,
	max = 180,
	flag = "scoutSilentFOV"
})
scout2:AddSlider({
	text = "Deadzone",
	min = 0,
	max = 20,
	flag = "scoutDeadzone"
})
scout2:AddSlider({
	text = "Smoothness",
	min = 1,
	max = 50,
	flag = "scoutSmoothness"
})
scout2:AddSlider({
	text = "Triggerbot Delay",
	min = 0,
	max = 100,
	flag = "scoutTriggerDelay"
})
awp2:AddToggle({
	text = "Triggerbot",
	flag = "awpTrigger"
})
awp2:AddToggle({
	text = "Body Aim",
	flag = "awpBaim"
})
awp2:AddToggle({
	text = "Silent Aim",
	flag = "awpSilentAim"
})
awp2:AddSlider({
	text = "Aim Assist FOV",
	min = 1,
	max = 180,
	flag = "awpFOV"
})
awp2:AddSlider({
	text = "Silent Aim FOV",
	min = 1,
	max = 180,
	flag = "awpSilentFOV"
})
awp2:AddSlider({
	text = "Deadzone",
	min = 0,
	max = 20,
	flag = "awpDeadzone"
})
awp2:AddSlider({
	text = "Smoothness",
	min = 1,
	max = 50,
	flag = "awpSmoothness"
})
awp2:AddSlider({
	text = "Triggerbot Delay",
	min = 0,
	max = 100,
	flag = "awpTriggerDelay"
})
heavyp2:AddToggle({
	text = "Triggerbot",
	flag = "heavypTrigger"
})
heavyp2:AddToggle({
	text = "Body Aim",
	flag = "heavypBaim"
})
heavyp2:AddToggle({
	text = "Silent Aim",
	flag = "heavypSilentAim"
})
heavyp2:AddSlider({
	text = "Aim Assist FOV",
	min = 1,
	max = 180,
	flag = "heavypFOV"
})
heavyp2:AddSlider({
	text = "Silent Aim FOV",
	min = 1,
	max = 180,
	flag = "heavypSilentFOV"
})
heavyp2:AddSlider({
	text = "Deadzone",
	min = 0,
	max = 20,
	flag = "heavypDeadzone"
})
heavyp2:AddSlider({
	text = "Smoothness",
	min = 1,
	max = 50,
	flag = "heavypSmoothness"
})
heavyp2:AddSlider({
	text = "Triggerbot Delay",
	min = 0,
	max = 100,
	flag = "heavypTriggerDelay"
})
pistols2:AddToggle({
	text = "Triggerbot",
	flag = "pistolTrigger"
})
pistols2:AddToggle({
	text = "Body Aim",
	flag = "pistolBaim"
})
pistols2:AddToggle({
	text = "Silent Aim",
	flag = "pistolSilentAim"
})
pistols2:AddSlider({
	text = "Aim Assist FOV",
	min = 1,
	max = 180,
	flag = "pistolFOV"
})
pistols2:AddSlider({
	text = "Silent Aim FOV",
	min = 1,
	max = 180,
	flag = "pistolSilentFOV"
})
pistols2:AddSlider({
	text = "Deadzone",
	min = 0,
	max = 20,
	flag = "pistolDeadzone"
})
pistols2:AddSlider({
	text = "Smoothness",
	min = 1,
	max = 50,
	flag = "pistolSmoothness"
})
pistols2:AddSlider({
	text = "Triggerbot Delay",
	min = 0,
	max = 100,
	flag = "pistolTriggerDelay"
})
smg:AddToggle({
	text = "Triggerbot",
	flag = "smgTrigger"
})
smg:AddToggle({
	text = "Body Aim",
	flag = "smgBaim"
})
smg:AddToggle({
	text = "Silent Aim",
	flag = "smgSilentAim"
})
smg:AddSlider({
	text = "Aim Assist FOV",
	min = 1,
	max = 180,
	flag = "smgFOV"
})
smg:AddSlider({
	text = "Silent Aim FOV",
	min = 1,
	max = 180,
	flag = "smgSilentFOV"
})
smg:AddSlider({
	text = "Deadzone",
	min = 0,
	max = 20,
	flag = "smgDeadzone"
})
smg:AddSlider({
	text = "Smoothness",
	min = 1,
	max = 50,
	flag = "smgSmoothness"
})
smg:AddSlider({
	text = "Triggerbot Delay",
	min = 0,
	max = 100,
	flag = "smgTriggerDelay"
})
other2:AddToggle({
	text = "Triggerbot",
	flag = "otherTrigger"
})
other2:AddToggle({
	text = "Body Aim",
	flag = "otherBaim"
})
other2:AddToggle({
	text = "Silent Aim",
	flag = "otherSilentAim"
})
other2:AddSlider({
	text = "Aim Assist FOV",
	min = 1,
	max = 180,
	flag = "otherFOV"
})
other2:AddSlider({
	text = "Silent Aim FOV",
	min = 1,
	max = 180,
	flag = "otherSilentFOV"
})
other2:AddSlider({
	text = "Deadzone",
	min = 0,
	max = 20,
	flag = "otherDeadzone"
})
other2:AddSlider({
	text = "Smoothness",
	min = 1,
	max = 50,
	flag = "otherSmoothness"
})
other2:AddSlider({
	text = "Triggerbot Delay",
	min = 0,
	max = 100,
	flag = "otherTriggerDelay"
})
L_101_:AddList({
	text = "Weapon",
	values = {
		"Rifles",
		"Scout",
		"AWP",
		"Heavy Pistols",
		"Pistols",
		"SMG",
		"Other"
	},
	max = 10,
	callback = function(L_1298_arg0)
		rifles2.main.Visible = L_1298_arg0 == "Rifles"
		scout2.main.Visible = L_1298_arg0 == "Scout"
		awp2.main.Visible = L_1298_arg0 == "AWP"
		heavyp2.main.Visible = L_1298_arg0 == "Heavy Pistols"
		pistols2.main.Visible = L_1298_arg0 == "Pistols"
		smg.main.Visible = L_1298_arg0 == "SMG"
		other2.main.Visible = L_1298_arg0 == "Other"
	end
})
local L_103_ = L_98_:AddSection"Other"
L_103_:AddToggle({
	text = "Auto Pistol",
	callback = function()
		for L_1299_forvar0, L_1300_forvar1 in next, L_24_.Weapons:GetChildren() do
			if L_1300_forvar1:FindFirstChild("Secondary") and L_1300_forvar1.Name ~= "CZ" then
				L_1300_forvar1.Auto.Value = library_flags["Auto Pistol"]
			end
		end
	end
})
rageTab = L_5_:AddTab"Rage"
rageColumn = rageTab:AddColumn()
rageColumn2 = rageTab:AddColumn()
rageMain = rageColumn:AddSection"Ragebot"
rageAntiaim = rageColumn:AddSection"Anti-Aim"
quickpeeking = false;
qpPartpos = nil;
local L_104_ = false;
local L_105_ = 0;
local L_106_ = false;
local L_107_ = {
	Body = {
		"UpperTorso",
		"LowerTorso"
	},
	Arms = {
		"LeftLowerArm",
		"RightLowerArm",
		"LeftHand",
		"RightHand"
	},
	Legs = {
		"LeftLowerLeg",
		"RightLowerLeg"
	}
}
local L_108_ = {
	"Body",
	"Arms",
	"Legs"
}
function rageShoot(L_1301_arg0, L_1302_arg1, L_1303_arg2, L_1304_arg3)
	if not L_104_ and not L_1304_arg3.melee then
		local L_1305_ = library_flags["Double Tap"] and 2 or 1;
		local L_1306_ = L_1301_arg0["HumanoidRootPart"]
		local L_1307_ = L_1301_arg0["HumanoidRootPart"].Position;
		local L_1308_ = tick()
		if library_flags["Movement Prediction"] and library_flags["Prediction Mode"] == "Performance" then
			L_28_.RenderStepped:Wait()
			L_28_.RenderStepped:Wait()
			local L_1309_ = (L_1306_.Position - L_1307_) / (tick() - L_1308_)
			local L_1310_ = Vector3.new(L_1309_.X, 0, L_1309_.Z)
			getgenv().predictionValue = L_1310_.Unit * L_1310_.Magnitude * L_58_ / 1000 * (L_58_ > 200 and 1.5 or 2)
		end;
		getgenv().target = L_1301_arg0[L_1302_arg1]
		if library_flags["HitPart"] then
			for L_1311_forvar0 = 1, L_1305_ do
				L_28_.RenderStepped:Wait()
				L_75_ = false;
				fireHitpart(target, library_flags["Damage Modifier"] and 1 or L_1303_arg2, L_1303_arg2 > 0.985 and false or true)
			end
		else
			for L_1312_forvar0 = 1, L_1305_ do
				L_75_ = false;
				L_36_.firebullet()
			end
		end;
		CreateThread(function()
			if quickpeeking and qpPartpos then
				if not library_flags["Old Ray Method"] then
					wait(0.1)
				end;
				L_32_.Character.HumanoidRootPart.CFrame = CFrame.new(qpPartpos.X, qpPartpos.Y + 2.75, qpPartpos.Z)
			end
		end)
	end
end;
ragecounter = 0;
skipwait = false;
skippedwaits = 0;
rageMain:AddToggle({
	text = "Enabled",
	flag = "Ragebot",
	callback = function()
		getgenv().target = nil;
		while library_flags["Ragebot"] do
			kan, ker = pcall(function()
				if library_flags["Slower Ragebot"] then
					wait()
				else
					L_28_.RenderStepped:Wait()
				end;
				L_106_ = false;
				getgenv().target = nil;
				if L_57_.alive and not L_104_ and not L_57_.melee then
					L_105_ = L_105_ + 1;
					L_105_ = L_105_ > 3 and 1 or L_105_;
					local L_1313_ = L_108_[L_105_]
					local L_1314_ = L_107_[L_1313_]
					for L_1315_forvar0, L_1316_forvar1 in next, L_30_:GetPlayers() do
						if not teamCheck(L_1316_forvar1, L_37_) or not alive(L_1316_forvar1) then
							continue;
						end;
						if math.abs(L_1316_forvar1.Character.Head.Position.Y - L_32_.Character.Head.Position.Y) >= 30 then
							continue;
						end;
						if L_1316_forvar1.Character:FindFirstChild("ForceField") then
							continue;
						end;
						if L_57_.name == "C4" then
							continue;
						end;
						local L_1317_, L_1318_ = false;
						if L_52_[L_1316_forvar1.Name] then
							L_1317_ = L_52_[L_1316_forvar1.Name].rageWL;
							L_1318_ = L_52_[L_1316_forvar1.Name].ragePL
						end;
						if not L_1318_ and library_flags["Rage Force Priority"] then
							continue;
						end;
						if L_1317_ then
							continue;
						end;
						if L_57_.hitboxes.Head then
							if not L_1316_forvar1.Character:FindFirstChild("HeadHB") and library_flags["HitPart"] or L_1316_forvar1.Character:FindFirstChild("HeadHB") then
								local L_1319_ = calculateWallbang(L_1316_forvar1.Character, "Head", library_flags["Movement Prediction"] and library_flags["HitPart"])
								local L_1320_ = L_57_.clientgun.DMG.Value * L_1319_ * 4;
								if L_1320_ >= L_57_.mindmg or L_57_.mindmg == 1 and L_1319_ > 0 and library_flags["HitPart"] then
									rageShoot(L_1316_forvar1.Character, "Head", L_1319_, L_57_)
									wait(L_57_.clientgun.FireRate.Value * 0.9)
									break
								end
							end
						end;
						if L_57_.hitboxes[L_1313_] then
							for L_1321_forvar0, L_1322_forvar1 in next, L_1314_ do
								if L_1316_forvar1.Character:FindFirstChild(L_1322_forvar1) then
									local L_1323_ = calculateWallbang(L_1316_forvar1.Character, L_1322_forvar1, library_flags["Movement Prediction"] and library_flags["HitPart"])
									local L_1324_ = L_57_.clientgun.DMG.Value * L_1323_;
									if L_1324_ >= L_57_.mindmg or L_57_.mindmg == 1 and L_1323_ > 0 and library_flags["HitPart"] then
										rageShoot(L_1316_forvar1.Character, L_1322_forvar1, L_1323_, L_57_, library_flags["Movement Prediction"] and library_flags["HitPart"])
										L_106_ = true;
										break
									end
								end
							end
						end;
						if L_106_ then
							wait(L_57_.clientgun.FireRate.Value * 0.85)
							break
						end
					end
				end
			end)
			if not kan then
				warn(ker)
			end
		end
	end
})
rageMain:AddToggle({
	text = "Knife Bot",
	callback = function()
		while library_flags["Knife Bot"] do
			wait()
			if L_57_.melee or L_104_ then
			else
				continue;
			end;
			for L_1325_forvar0, L_1326_forvar1 in next, L_30_:GetPlayers() do
				if L_57_.alive and alive(L_1326_forvar1) and teamCheck(L_1326_forvar1, L_37_) and L_57_ and L_57_.melee and L_36_.gun and L_36_.gun:FindFirstChild("Melee") then
					local L_1327_, L_1328_ = false;
					if L_52_[L_1326_forvar1.Name] then
						L_1327_ = L_52_[L_1326_forvar1.Name].rageWL;
						L_1328_ = L_52_[L_1326_forvar1.Name].ragePL
					end;
					if not L_1328_ and library_flags["Rage Force Priority"] then
						continue;
					end;
					if L_1327_ then
						continue;
					end;
					local L_1329_ = L_1326_forvar1.Character.PrimaryPart.Position;
					local L_1330_ = (L_1329_ - L_32_.Character.PrimaryPart.Position).magnitude;
					if L_1330_ <= 8 then
						fireHitpart(L_1326_forvar1.Character.HumanoidRootPart, 1, false)
						wait(0.4)
					end
				end
			end
		end
	end
})
rageMain:AddToggle({
	text = "Hitpart",
	flag = "HitPart"
})
rageMain:AddToggle({
	text = "Movement Prediction"
})
rageMain:AddToggle({
	text = "From Camera"
})
rageMain:AddToggle({
	text = "Resolve Angles"
})
rageMain:AddToggle({
	text = "Rage Force Priority"
})
rageMain:AddToggle({
	text = "Teammates",
	flag = "rageteam",
	callback = function(L_1331_arg0)
		L_37_ = L_1331_arg0
	end
})
rageMain:AddList({
	text = "Prediction Mode",
	values = {
		"Adaptive",
		"Test",
		"Performance",
		"Old"
	}
})
rageMain:AddSlider({
	text = "Prediction Amount",
	min = 0,
	max = 100,
	value = 50,
	flag = "predictAmount"
})
rageOther = rageColumn2:AddSection"Other"
auto = rageColumn2:AddSection"Autosniper"
scout = rageColumn2:AddSection"Scout"
awp = rageColumn2:AddSection"AWP"
rifles = rageColumn2:AddSection"Rifles"
heavyp = rageColumn2:AddSection"Heavy Pistols"
pistols = rageColumn2:AddSection"Pistols"
other = rageColumn2:AddSection"Other"
auto:AddSlider({
	text = "Minimum Damage",
	min = 1,
	max = 120,
	flag = "autoMin"
})
scout:AddSlider({
	text = "Minimum Damage",
	min = 1,
	max = 120,
	flag = "scoutMin"
})
awp:AddSlider({
	text = "Minimum Damage",
	min = 1,
	max = 120,
	flag = "awpMin"
})
rifles:AddSlider({
	text = "Minimum Damage",
	min = 1,
	max = 120,
	flag = "riflesMin"
})
heavyp:AddSlider({
	text = "Minimum Damage",
	min = 1,
	max = 120,
	flag = "heavypMin"
})
pistols:AddSlider({
	text = "Minimum Damage",
	min = 1,
	max = 120,
	flag = "pistolMin"
})
other:AddSlider({
	text = "Minimum Damage",
	min = 1,
	max = 120,
	flag = "otherMin"
})
auto:AddList({
	text = "Hitboxes",
	multiselect = true,
	values = {
		"Head",
		"Body",
		"Arms",
		"Legs"
	},
	max = 4,
	flag = "autoHitboxes"
})
scout:AddList({
	text = "Hitboxes",
	multiselect = true,
	values = {
		"Head",
		"Body",
		"Arms",
		"Legs"
	},
	max = 4,
	flag = "scoutHitboxes"
})
awp:AddList({
	text = "Hitboxes",
	multiselect = true,
	values = {
		"Head",
		"Body",
		"Arms",
		"Legs"
	},
	max = 4,
	flag = "awpHitboxes"
})
rifles:AddList({
	text = "Hitboxes",
	multiselect = true,
	values = {
		"Head",
		"Body",
		"Arms",
		"Legs"
	},
	max = 4,
	flag = "riflesHitboxes"
})
heavyp:AddList({
	text = "Hitboxes",
	multiselect = true,
	values = {
		"Head",
		"Body",
		"Arms",
		"Legs"
	},
	max = 4,
	flag = "heavypHitboxes"
})
pistols:AddList({
	text = "Hitboxes",
	multiselect = true,
	values = {
		"Head",
		"Body",
		"Arms",
		"Legs"
	},
	max = 4,
	flag = "pistolHitboxes"
})
other:AddList({
	text = "Hitboxes",
	multiselect = true,
	values = {
		"Head",
		"Body",
		"Arms",
		"Legs"
	},
	max = 4,
	flag = "otherHitboxes"
})
rageMain:AddList({
	text = "Weapon",
	values = {
		"Autosniper",
		"Scout",
		"AWP",
		"Rifles",
		"Heavy Pistols",
		"Pistols",
		"Other"
	},
	max = 10,
	callback = function(L_1332_arg0)
		auto.main.Visible = L_1332_arg0 == "Autosniper"
		scout.main.Visible = L_1332_arg0 == "Scout"
		awp.main.Visible = L_1332_arg0 == "AWP"
		rifles.main.Visible = L_1332_arg0 == "Rifles"
		heavyp.main.Visible = L_1332_arg0 == "Heavy Pistols"
		pistols.main.Visible = L_1332_arg0 == "Pistols"
		other.main.Visible = L_1332_arg0 == "Other"
	end
})
local L_109_, L_110_, L_111_ = false, false, true;
rageAntiaim:AddToggle({
	text = "Enabled",
	flag = "Anti Aim",
	callback = function()
		updatePitch()
	end
})
rageAntiaim:AddToggle({
	text = "Remove Head"
})
rageAntiaim:AddToggle({
	text = "Spectator Anti Aim"
})
rageAntiaim:AddToggle({
	text = "Manual Indicators",
	callback = function(L_1333_arg0)
		indicatorHolder.Enabled = L_1333_arg0
	end
})
rageAntiaim:AddList({
	text = "Pitch",
	values = {
		"None",
		"Down",
		"Up"
	},
	callback = updatePitch
})
rageAntiaim:AddList({
	text = "Yaw",
	values = {
		"None",
		"Manual",
		"Backwards",
		"Spin",
		"Random",
		"Jitter"
	},
	max = 5,
	callback = updatePitch
})
rageAntiaim:AddList({
	text = "Roll",
	values = {
		"None",
		"Upside Down"
	}
})
rageAntiaim:AddBind({
	text = "Right Manual Key",
	key = "Right",
	callback = function()
		L_109_ = true;
		L_110_ = false;
		L_111_ = false
	end
})
rageAntiaim:AddBind({
	text = "Left Manual Key",
	key = "Left",
	callback = function()
		L_109_ = false;
		L_110_ = true;
		L_111_ = false
	end
})
rageAntiaim:AddBind({
	text = "Backwards Manual Key",
	key = "Down",
	callback = function()
		L_109_ = false;
		L_110_ = false;
		L_111_ = true
	end
})
rageAntiaim:AddSlider({
	text = "Manual Yaw Offset",
	min = -89,
	max = 89
})
rageOther:AddToggle({
	text = "Kill All"
})
rageOther:AddToggle({
	text = "Slide Walk"
})
local L_112_;
rageOther:AddToggle({
	text = "Fake Duck"
}):AddBind({
	key = "V",
	flag = "fakeduckBind",
	mode = "hold",
	callback = function(L_1334_arg0)
		if library_flags["Fake Duck"] and L_57_.alive then
			if not L_1334_arg0 and not L_112_ then
				L_112_ = L_32_.Character.Humanoid:LoadAnimation(L_35_.Idle)
				L_112_:Play()
			elseif L_1334_arg0 and L_112_ then
				L_112_:Stop()
				L_112_ = nil
			end
		end
	end
})
qpPart = Instance.new("MeshPart")
qpPart.Anchored = true;
qpPart.CanCollide = false;
qpPart.Parent = workspace;
qpPart.Size = Vector3.new(0.5, 0.125, 0.5)
qpPart.MeshId = "rbxassetid://5536195161"
rageOther:AddToggle({
	text = "Quickpeek"
}):AddBind({
	key = "LeftAlt",
	flag = "fakeduckBind",
	mode = "hold",
	callback = function(L_1335_arg0)
		if library_flags["Quickpeek"] and L_57_.alive then
			qpPart.Color = library_flags["Menu Accent Color"]
			if not L_1335_arg0 then
				quickpeeking = true;
				if not qpPartpos or (L_32_.Character.HumanoidRootPart.Position - qpPartpos).magnitude >= 15 then
					qpPart.Position = L_32_.Character.HumanoidRootPart.Position - Vector3.new(0, 2.75, 0)
					qpPartpos = qpPart.Position
				end
			else
				quickpeeking = false;
				qpPart.Position = Vector3.new()
				qpPartpos = nil
			end
		end
	end
})
visualsTab = L_5_:AddTab"Visuals"
visualsColumn = visualsTab:AddColumn()
visualsColumn2 = visualsTab:AddColumn()
visualsESP = visualsColumn:AddSection"ESP"
visualsESP:AddToggle({
	text = "Enabled",
	flag = "espEnabled"
})
visualsESP:AddToggle({
	text = "Chams",
	callback = function()
		if library_flags["Chams"] and library_flags["espEnabled"] then
			for L_1336_forvar0, L_1337_forvar1 in next, L_30_:GetPlayers() do
				if L_1337_forvar1.Character then
					chamsPlr(L_1337_forvar1)
				end
			end;
			for L_1338_forvar0, L_1339_forvar1 in next, L_30_:GetPlayers() do
				if L_1339_forvar1.Character then
					local L_1340_ = L_52_[L_1339_forvar1.Name] and L_52_[L_1339_forvar1.Name].TargetESP and "targetchams2" or "chamsColor"
					local L_1341_ = L_52_[L_1339_forvar1.Name] and L_52_[L_1339_forvar1.Name].TargetESP and "Target Chams Color" or "chamsColor2"
					local L_1342_ = library_flags[L_1340_]
					local L_1343_ = library_flags[L_1341_]
					local L_1344_ = 1 - L_5_.options[L_1340_].trans;
					local L_1345_ = 1 - L_5_.options[L_1341_].trans;
					for L_1346_forvar0, L_1347_forvar1 in next, L_1339_forvar1.Character:GetDescendants() do
						if L_1347_forvar1.Name == "inner" then
							L_1347_forvar1.Color3 = L_1343_;
							L_1347_forvar1.Transparency = L_1345_;
							L_1347_forvar1.Visible = not library_flags["Visible Only ESP"]
						elseif L_1347_forvar1.Name == "outer" then
							L_1347_forvar1.Transparency = L_1344_;
							L_1347_forvar1.Color3 = L_1342_;
							L_1347_forvar1.AlwaysOnTop = false
						end
					end;
					if not teamCheck(L_1339_forvar1, L_39_) then
						for L_1348_forvar0, L_1349_forvar1 in next, L_1339_forvar1.Character:GetDescendants() do
							if L_1349_forvar1.Name == "inner" or L_1349_forvar1.Name == "outer" then
								L_1349_forvar1:Destroy()
							end
						end
					end
				end
			end
		else
			if not library_flags["Chams"] or not library_flags["espEnabled"] then
				for L_1350_forvar0, L_1351_forvar1 in next, L_30_:GetPlayers() do
					if L_1351_forvar1.Character then
						for L_1352_forvar0, L_1353_forvar1 in next, L_1351_forvar1.Character:GetDescendants() do
							if L_1353_forvar1.Name == "inner" or L_1353_forvar1.Name == "outer" then
								L_1353_forvar1:Destroy()
							end
						end
					end
				end
			end
		end
	end
}):AddColor({
	color = Color3.new(0.615, 0.613, 0.616),
	flag = "chamsColor2",
	trans = 0.15,
	callback = L_5_.options["Chams"].callback,
	calltrans = L_5_.options["Chams"].callback
})
cbCHAMS = L_5_.options["Chams"].callback;
L_5_.options["espEnabled"].callback = cbCHAMS;
L_5_.options["Chams"]:AddColor({
	color = Color3.new(0.192, 0.581, 0.459),
	flag = "chamsColor",
	trans = 0.6,
	calltrans = L_5_.options["Chams"].callback,
	callback = L_5_.options["Chams"].callback
})
visualsESP:AddToggle({
	text = "Box ESP"
}):AddColor({
	color = Color3.fromRGB(255, 255, 255),
	flag = "boxESPcolor"
})
visualsESP:AddToggle({
	text = "Name ESP"
}):AddColor({
	color = Color3.fromRGB(255, 255, 255),
	flag = "nameESPcolor"
})
visualsESP:AddToggle({
	text = "Weapon ESP"
}):AddColor({
	color = Color3.fromRGB(255, 255, 255),
	flag = "weaponESPcolor"
})
visualsESP:AddToggle({
	text = "Health Bar"
}):AddColor({
	color = Color3.fromRGB(0, 255, 0),
	flag = "healthBar"
})
visualsESP:AddToggle({
	text = "Tracers"
}):AddColor({
	color = Color3.fromRGB(255, 255, 255),
	flag = "tracersColor"
})
visualsESP:AddToggle({
	text = "Outline"
})
visualsESP:AddToggle({
	text = "Visible Only",
	flag = "Visible Only ESP",
	callback = cbCHAMS
})
visualsESP:AddToggle({
	text = "Teammates",
	flag = "visualsteam",
	callback = function(L_1354_arg0)
		L_39_ = L_1354_arg0;
		cbCHAMS()
	end
})
visualsESP:AddList({
	text = "Font",
	values = {
		"UI",
		"System",
		"Plex",
		"Monospace"
	}
})
visualsESP:AddList({
	text = "Text Mode",
	values = {
		"Normal",
		"Upper",
		"Lower"
	}
})
visualsMisc = visualsColumn:AddSection"Misc"
visualsMisc:AddToggle({
	text = "Remove Scope",
	callback = function(L_1355_arg0)
		L_32_.PlayerGui.GUI.Crosshairs.Scope.ImageTransparency = L_1355_arg0 and 1 or 0;
		for L_1356_forvar0 = 1, 4 do
			L_32_.PlayerGui.GUI.Crosshairs["Frame" .. L_1356_forvar0].Transparency = L_1355_arg0 and 1 or 0
		end
	end
})
visualsMisc:AddToggle({
	text = "Beams Face Camera"
})
visualsMisc:AddToggle({
	text = "Bullet Tracers"
}):AddColor({
	color = Color3.fromRGB(150, 20, 60),
	trans = 1,
	flag = "tracerColor"
})
visualsMisc:AddToggle({
	text = "Hit Chams"
}):AddColor({
	color = Color3.fromRGB(200, 30, 80),
	flag = "hitchamsColor"
})
visualsMisc:AddToggle({
	text = "Third Person",
	callback = function()
		if library_flags["Third Person"] then
			L_28_:BindToRenderStep("thirdperson", 1, function()
				if L_34_:FindFirstChild("Arms") then
					if workspace.Camera:FindFirstChild("Arms") then
						for L_1357_forvar0, L_1358_forvar1 in next, workspace.Camera.Arms:GetDescendants() do
							if L_1358_forvar1:IsA"BasePart" or L_1358_forvar1:IsA"Part" or L_1358_forvar1:IsA"MeshPart" then
								if L_1358_forvar1.Name == "StatClock" then
									L_1358_forvar1:ClearAllChildren()
								end;
								L_1358_forvar1.Transparency = 1
							end
						end
					end
				end;
				L_32_.CameraMaxZoomDistance = library_flags["tpDistance"]
				L_32_.CameraMinZoomDistance = library_flags["tpDistance"]
			end)
		else
			L_28_:UnbindFromRenderStep("thirdperson")
			for L_1359_forvar0 = 1, 5 do
				wait()
				L_32_.CameraMaxZoomDistance = 0;
				L_32_.CameraMinZoomDistance = 0
			end;
			if L_57_.alive and L_32_.Character:FindFirstChild("EquippedTool") and workspace.Camera:FindFirstChild("Arms") then
				local L_1360_ = L_32_.Character.EquippedTool.Value;
				local L_1361_ = L_24_.Viewmodels:FindFirstChild("v_" .. L_1360_)
				if L_1361_ then
					for L_1362_forvar0, L_1363_forvar1 in next, workspace.Camera.Arms:GetChildren() do
						if L_1363_forvar1:IsA"Part" or L_1363_forvar1:IsA"MeshPart" then
							if L_1361_:FindFirstChild(L_1363_forvar1.Name) and L_1361_[L_1363_forvar1.Name].Transparency ~= 1 and not string.find(L_1363_forvar1.Name, "Arm") then
								L_1363_forvar1.Transparency = L_1361_[L_1363_forvar1.Name].Transparency
							end
						end;
						if string.find(L_1363_forvar1.Name, "Arms") then
							for L_1364_forvar0, L_1365_forvar1 in next, L_1363_forvar1:GetDescendants() do
								if L_1365_forvar1:IsA"Part" then
									L_1365_forvar1.Transparency = 0
								end
							end
						end
					end
				end
			end;
			updateViewModelVisuals()
		end
	end
}):AddBind({
	key = "X",
	flag = "tpBind",
	toggle = true,
	callback = function()
		L_5_.options["Third Person"]:SetState(not L_5_.options["Third Person"].state)
	end
})
visualsMisc:AddSlider({
	text = "Third Person Distance",
	min = 5,
	max = 15,
	flag = "tpDistance"
})
visualsMisc:AddList({
	text = "Tracer Mode",
	values = {
		"Part",
		"Beam"
	},
	value = "Beam"
})
visualsMisc:AddBox({
	text = "Beam Texture",
	skipflag = true,
	value = "446111271"
})
visualsLocal = visualsColumn2:AddSection"Local"
visualsLocal:AddToggle({
	text = "Force Crosshair"
})
visualsLocal:AddToggle({
	text = "Remove UI Elements",
	callback = function(L_1366_arg0)
		if L_1366_arg0 then
			L_28_:BindToRenderStep("uielements", 1, function()
				L_32_.PlayerGui.GUI.UpperInfo.BackgroundTransparency = 0.8;
				L_32_.PlayerGui.GUI.UpperInfo.Timer.BackgroundTransparency = 0.8;
				L_32_.PlayerGui.GUI.UpperInfo.Timer.BorderSizePixel = 1;
				L_32_.PlayerGui.GUI.UpperInfo.T.Visible = false;
				L_32_.PlayerGui.GUI.UpperInfo.CT.Visible = false;
				L_32_.PlayerGui.GUI.UpperInfo.TScore.BorderSizePixel = 0;
				L_32_.PlayerGui.GUI.UpperInfo.CTScore.BorderSizePixel = 0;
				L_32_.PlayerGui.GUI.UpperInfo.Tplus.Visible = false;
				L_32_.PlayerGui.GUI.UpperInfo.CTplus.Visible = false;
				L_32_.PlayerGui.GUI.UpperInfo.BorderSizePixel = 0;
				L_32_.PlayerGui.GUI.Vitals.bk.Visible = false;
				L_32_.PlayerGui.GUI.Vitals.Plus.TextTransparency = 1;
				L_32_.PlayerGui.GUI.Vitals.APlus.ImageTransparency = 1;
				L_32_.PlayerGui.GUI.AmmoGUI.bk.Visible = false;
				L_32_.PlayerGui.GUI.AmmoGUI.DefuseKit.ImageTransparency = 1;
				L_32_.PlayerGui.GUI.Cash.BuyZone.ImageTransparency = 1;
				L_32_.PlayerGui.GUI.Cash.BackgroundTransparency = 0.8;
				for L_1367_forvar0, L_1368_forvar1 in next, L_32_.PlayerGui.GUI.AmmoGUI:GetChildren() do
					if L_1368_forvar1.Name == "bullet" then
						L_1368_forvar1.ImageTransparency = 1
					end
				end
			end)
		else
			L_28_:UnbindFromRenderStep("uielements")
			L_32_.PlayerGui.GUI.UpperInfo.BackgroundTransparency = 0.1;
			L_32_.PlayerGui.GUI.UpperInfo.Timer.BackgroundTransparency = 0.22;
			L_32_.PlayerGui.GUI.UpperInfo.BorderSizePixel = 2;
			L_32_.PlayerGui.GUI.Vitals.bk.Visible = true;
			L_32_.PlayerGui.GUI.Vitals.Plus.TextTransparency = 0;
			L_32_.PlayerGui.GUI.Vitals.APlus.ImageTransparency = 0;
			L_32_.PlayerGui.GUI.AmmoGUI.bk.Visible = true;
			L_32_.PlayerGui.GUI.AmmoGUI.DefuseKit.ImageTransparency = 0.25;
			L_32_.PlayerGui.GUI.Cash.BuyZone.ImageTransparency = 0;
			L_32_.PlayerGui.GUI.Cash.BackgroundTransparency = 0.22;
			L_32_.PlayerGui.GUI.UpperInfo.TScore.BorderSizePixel = 2;
			L_32_.PlayerGui.GUI.UpperInfo.CTScore.BorderSizePixel = 2;
			L_32_.PlayerGui.GUI.UpperInfo.Timer.BorderSizePixel = 2;
			for L_1369_forvar0, L_1370_forvar1 in next, L_32_.PlayerGui.GUI.AmmoGUI:GetChildren() do
				if L_1370_forvar1.Name == "bullet" then
					L_1370_forvar1.ImageTransparency = 0
				end
			end
		end
	end
})
visualsLocal:AddToggle({
	text = "Remove Radio Commands"
})
visualsLocal:AddToggle({
	text = "Remove Flash",
	callback = function(L_1371_arg0)
		L_32_.PlayerGui.Blnd.Blind.Visible = not L_1371_arg0
	end
})
local L_113_ = Drawing.new("Circle")
local L_114_ = Drawing.new("Circle")
L_113_.Color = Color3.new(1, 1, 1)
L_113_.Thickness = 0.05;
L_113_.NumSides = 100;
L_113_.Radius = 100;
L_113_.Visible = false;
L_113_.Filled = false;
L_114_.Color = Color3.new(1, 1, 1)
L_114_.Thickness = 0.05;
L_114_.NumSides = 100;
L_114_.Radius = 100;
L_114_.Visible = false;
L_114_.Filled = false;
function selfChams()
	if library_flags["Self Chams"] and L_32_.Character then
		for L_1372_forvar0, L_1373_forvar1 in next, L_32_.Character:GetDescendants() do
			local L_1374_ = library_flags["selfChamsMaterial"]
			if L_1373_forvar1.Name == "HumanoidRootPart" or L_1373_forvar1.Name == "Head" or L_1373_forvar1.Name == "HeadHB" or string.find(L_1373_forvar1.Name, "C4") and not L_1373_forvar1.Name == "BackC4" or L_1373_forvar1.Name == "Gun" then
				continue;
			end;
			if (L_1373_forvar1:IsA"Accoutrement" or L_1373_forvar1.Name == "BackC4") and library_flags["Remove Hats"] then
				L_1373_forvar1:Destroy()
			end;
			if L_1373_forvar1:IsA"BasePart" then
				L_1373_forvar1.Color = library_flags["selfChamsColor"]
				L_1373_forvar1.Transparency = 1 - L_5_.options["selfChamsColor"].trans;
				L_1373_forvar1.Material = L_1374_
			end;
			if L_1373_forvar1:IsA"SpecialMesh" then
				local L_1375_ = library_flags["selfChamsColor"]
				L_1373_forvar1.VertexColor = Vector3.new(L_1375_.R, L_1375_.G, L_1375_.B)
			end;
			if L_1373_forvar1.Name == "Shirt" then
				L_1373_forvar1.ShirtTemplate = "rbxassetid://0"
			elseif L_1373_forvar1.Name == "Pants" then
				L_1373_forvar1.PantsTemplate = "rbxassetid://0"
			elseif L_1373_forvar1.Name == "Face" then
				L_1373_forvar1.Texture = "rbxassetid://0"
			end;
			if hasProperty(L_1373_forvar1, "TextureID") then
				L_1373_forvar1.TextureID = L_60_[L_1374_]
			end;
			if hasProperty(L_1373_forvar1, "TextureId") then
				L_1373_forvar1.TextureId = L_60_[L_1374_]
			end
		end
	end
end;
visualsLocal:AddToggle({
	text = "Remove Hats",
	callback = selfChams
})
visualsLocal:AddToggle({
	text = "Remove Sleeves",
	callback = updateViewModelVisuals
})
visualsLocal:AddToggle({
	text = "Self Chams",
	callback = selfChams
}):AddColor({
	flag = "selfChamsColor",
	callback = L_5_.options["Self Chams"].callback,
	calltrans = L_5_.options["Self Chams"].callback,
	trans = 1,
	color = Color3.new(1, 1, 1)
})
L_5_.options["Self Chams"]:AddList({
	flag = "selfChamsMaterial",
	callback = L_5_.options["Self Chams"].callback,
	values = {
		"SmoothPlastic",
		"ForceField"
	}
})
visualsLocal:AddToggle({
	text = "Weapon Chams",
	callback = updateViewModelVisuals
}):AddColor({
	flag = "weaponColor",
	trans = 1,
	color = Color3.new(1, 1, 1),
	callback = updateViewModelVisuals,
	calltrans = updateViewModelVisuals
})
L_5_.options["Weapon Chams"]:AddList({
	flag = "weaponMaterial",
	values = {
		"SmoothPlastic",
		"ForceField",
		"Neon",
		"Glass"
	},
	callback = updateViewModelVisuals
})
visualsLocal:AddToggle({
	text = "Arm Chams",
	callback = updateViewModelVisuals
}):AddColor({
	flag = "armColor",
	trans = 1,
	color = Color3.new(1, 1, 1),
	callback = updateViewModelVisuals,
	calltrans = updateViewModelVisuals
})
visualsLocal:AddToggle({
	text = "Fake Lag Chams"
}):AddColor({
	flag = "fakelagColor",
	trans = 1,
	color = Color3.new(1, 0.4, 0.7)
})
L_5_.options["Arm Chams"]:AddList({
	flag = "armMaterial",
	values = {
		"SmoothPlastic",
		"ForceField",
		"Glass"
	},
	callback = updateViewModelVisuals
})
visualsLocal:AddSlider({
	text = "Weapon Reflectance",
	flag = "weaponReflectance",
	max = 100,
	callback = updateViewModelVisuals
})
visualsLocal:AddToggle({
	text = "FOV Changer",
	callback = function(L_1376_arg0)
		if L_1376_arg0 then
			L_28_:BindToRenderStep("fovchanger", 10, function()
				if not L_32_.PlayerGui.GUI.Crosshairs.Scope.Visible or library_flags["Third Person"] then
					L_34_.FieldOfView = library_flags["fovValue"]
				end
			end)
		else
			L_28_:UnbindFromRenderStep("fovchanger")
		end;
		L_34_.FieldOfView = 80
	end
}):AddSlider({
	flag = "fovValue",
	min = 50,
	max = 120,
	value = 80
})
visualsLocal:AddToggle({
	text = "Aspect Ratio"
}):AddSlider({
	flag = "ratioValue",
	min = 0.1,
	max = 1,
	float = 0.01,
	value = 1
})
visualsLocal:AddToggle({
	text = "FOV Circle",
	callback = function()
		L_113_.Position = Vector2.new(L_34_.ViewportSize.X / 2, L_34_.ViewportSize.Y / 2)
		L_114_.Position = Vector2.new(L_34_.ViewportSize.X / 2, L_34_.ViewportSize.Y / 2)
		L_113_.Visible = library_flags["FOV Circle"]
		L_114_.Visible = library_flags["FOV Circle"]
	end
}):AddColor({
	color = Color3.new(1, 1, 1),
	trans = 0.5,
	flag = "circleColor",
	callback = function()
		L_113_.Color = library_flags["circleColor"]
		L_114_.Color = library_flags["silentCircleColor"]
	end,
	calltrans = function()
		L_113_.Transparency = L_5_.options["circleColor"].trans;
		L_114_.Transparency = L_5_.options["silentCircleColor"].trans
	end
})
cba, cbb = L_5_.options["FOV Circle"].callback, L_5_.options["FOV Circle"].calltrans;
L_5_.options["FOV Circle"]:AddColor({
	flag = "silentCircleColor",
	color = Color3.new(1, 1, 0),
	trans = 0.5,
	callback = cba,
	calltrans = cbb
})
L_24_.Particles.Light.Range = 0;
visualsWorld = visualsColumn2:AddSection"World"
visualsWorld:AddToggle({
	text = "Better Shadows",
	callback = function()
		sethiddenproperty(L_29_, "Technology", library_flags["Better Shadows"] and Enum.Technology.Future or Enum.Technology.Compatibility)
	end
})
visualsWorld:AddToggle({
	text = "Gradient"
}):AddColor({
	flag = "gradientColor",
	color = Color3.fromRGB(90, 90, 90)
})
L_5_.options["Gradient"]:AddColor({
	flag = "gradientColor2",
	color = Color3.fromRGB(150, 150, 150)
})
visualsWorld:AddToggle({
	text = "Grenade Area"
}):AddColor({
	flag = "areaColor",
	color = Color3.fromRGB(150, 20, 75)
})
visualsWorld:AddToggle({
	text = "Saturation"
}):AddSlider({
	min = 0,
	max = 100,
	value = 10,
	flag = "saturationValue"
})
visualsWorld:AddToggle({
	text = "Time Changer"
}):AddSlider({
	min = 0,
	max = 48,
	flag = "time"
})
visualsWorld:AddToggle({
	text = "Asus Walls",
	callback = function()
		if library_flags["Asus Walls"] then
			for L_1377_forvar0, L_1378_forvar1 in pairs(workspace.Map.Geometry:GetDescendants()) do
				if L_1378_forvar1:IsA"BasePart" and L_1378_forvar1.Transparency ~= 1 then
					L_1378_forvar1.Transparency = library_flags["asuswalls"] / 100
				end;
				if L_1377_forvar0 % 75 == 75 then
					wait()
				end
			end
		else
			for L_1379_forvar0, L_1380_forvar1 in pairs(workspace.Map.Geometry:GetDescendants()) do
				if L_1380_forvar1:IsA"BasePart" and L_1380_forvar1.Transparency ~= 1 then
					L_1380_forvar1.Transparency = 0
				end;
				if L_1379_forvar0 % 75 == 75 then
					wait()
				end
			end
		end
	end
})
L_5_.options["Asus Walls"]:AddSlider({
	min = 0,
	max = 99,
	flag = "asuswalls",
	callback = L_5_.options["Asus Walls"].callback
})
visualsWorld:AddToggle({
	text = "Skybox Changer",
	callback = updateSkybox
}):AddList({
	max = 6,
	values = {
		"Purple Nebula",
		"Night Sky",
		"Pink Daylight",
		"Morning Glow",
		"Setting Sun",
		"Elegant Morning",
		"Elegant Morning",
		"Neptune",
		"Redshift",
		"Aesthetic Night"
	},
	flag = "skyboxValue",
	callback = updateSkybox
})
visualsViewmodel = visualsColumn2:AddSection"Viewmodel"
visualsViewmodel:AddToggle({
	text = "Enabled",
	flag = "viewmodelEnabled"
})
visualsViewmodel:AddToggle({
	text = "Visualize Silent Angles"
})
visualsViewmodel:AddSlider({
	text = "X",
	min = -25,
	max = 25,
	flag = "viewmodelX"
})
visualsViewmodel:AddSlider({
	text = "Y",
	min = -25,
	max = 25,
	flag = "viewmodelY"
})
visualsViewmodel:AddSlider({
	text = "Z",
	min = -25,
	max = 25,
	flag = "viewmodelZ"
})
visualsViewmodel:AddSlider({
	text = "Roll",
	min = 0,
	max = 360,
	flag = "viewmodelRoll"
})
miscTab = L_5_:AddTab"Misc"
miscColumn = miscTab:AddColumn()
miscColumn2 = miscTab:AddColumn()
miscMain = miscColumn:AddSection"Main"
fakeLagDebounce = false;
jumpbugging = false;
noclipping = false;
surfing = false;
miscMain:AddToggle({
	text = "Hitlogs"
})
miscMain:AddToggle({
	text = "Keybind Indicators",
	callback = function()
		L_87_.Visible = library_flags["Keybind Indicators"]
		while library_flags["Keybind Indicators"] do
			wait()
			pcall(function()
				for L_1385_forvar0, L_1386_forvar1 in next, L_89_:GetChildren() do
					if L_1386_forvar1:IsA"TextLabel" then
						L_1386_forvar1:Destroy()
					end
				end;
				if not L_57_.alive then
					wait(1)
					return
				end;
				local L_1381_ = L_5_.options["fakeduckBind"]
				local L_1382_ = L_5_.options["Triggerbot Keybind"]
				local L_1383_ = Enum.KeyCode[L_1381_.key] or Enum.UserInputType[L_1381_.key]
				local L_1384_ = Enum.KeyCode[L_1382_.key] or Enum.UserInputType[L_1382_.key]
				if L_100_ then
					addBindtext("Aimbot", "hold")
				end;
				if noclipping then
					addBindtext("Noclip", "hold")
				end;
				if jumpbugging then
					addBindtext("Jumpbug", "hold")
				end;
				if L_50_ then
					addBindtext("Edgebug", "hold")
				end;
				if surfing then
					addBindtext("Pixelsurf", "hold")
				end;
				if L_25_:IsKeyDown(L_1384_) and L_57_.trigger then
					addBindtext("Triggerbot", "hold")
				end;
				if L_112_ and library_flags["Fake Duck"] then
					addBindtext("Fake Duck", "hold")
				end;
				if quickpeeking then
					addBindtext("Quickpeek", "hold")
				end;
				if getgenv().hookWS then
					addBindtext("Slow Walk", "hold")
				end;
				if library_flags["Third Person"] then
					addBindtext("Thirdperson", "toggle")
				end;
				L_100_ = false
			end)
		end
	end
})
miscMain:AddToggle({
	text = "Spectator List",
	callback = function()
		L_83_.Visible = library_flags["Spectator List"]
		while library_flags["Spectator List"] do
			wait()
			removeSpectators()
			if L_32_:FindFirstChild("CameraCF") then
				local L_1387_ = L_32_.CameraCF.Value.p;
				for L_1388_forvar0, L_1389_forvar1 in next, L_30_:GetPlayers() do
					if not L_1389_forvar1.Character or L_1389_forvar1.Character and not L_1389_forvar1.Character:FindFirstChild("HumanoidRootPart") then
						if L_1389_forvar1:FindFirstChild("CameraCF") and L_1389_forvar1 ~= L_32_ and L_32_.Character and L_32_.Character.PrimaryPart then
							local L_1390_ = L_1389_forvar1.CameraCF.Value.p;
							if (L_1390_ - L_1387_).magnitude < 20 then
								addSpectator(L_1389_forvar1.Name)
							end
						end
					end
				end
			end;
			wait()
		end
	end
})
local L_115_ = Instance.new("ScreenGui")
local L_116_ = Instance.new("TextLabel")
L_115_.Enabled = false;
L_115_.Parent = game:GetService("CoreGui")
L_116_.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
L_116_.BorderSizePixel = 1;
L_116_.BorderColor3 = Color3.fromRGB(30, 60, 150)
L_116_.Size = UDim2.new(0, 225, 0, 20)
L_116_.Font = Enum.Font.Ubuntu;
L_116_.TextColor3 = Color3.fromRGB(255, 255, 255)
L_116_.TextSize = 14;
L_116_.Position = UDim2.new(1, -229, 0, -30)
L_116_.Parent = L_115_;
miscMain:AddToggle({
	text = "Watermark",
	callback = function()
		L_115_.Enabled = library_flags["Watermark"]
	end
})
miscMain:AddToggle({
	text = "Old Gun Sounds"
})
miscMain:AddToggle({
	text = "Hitsound"
}):AddList({
	flag = "hitsoundValue",
	max = 8,
	values = {
		"Bameware",
		"Bubble",
		"Pick",
		"Pop",
		"Rust",
		"Sans",
		"Fart",
		"Big",
		"Vine",
		"Bruh",
		"Skeet",
		"Neverlose",
		"Fatality",
		"Bonk",
		"Moan",
		"Minecraft"
	}
})
miscMain:AddSlider({
	text = "Hitsound Volume",
	min = 1,
	max = 10,
	float = 0.5
})
local L_117_ = Instance.new("Part")
btCount = 0;
L_117_.Size = Vector3.new(1, 1, 1)
L_117_.CanCollide = false;
L_117_.Anchored = true;
L_117_.Material = "Neon"
L_117_.Name = "btHead"
L_117_.Rotation = Vector3.new(0, 0, 0)
function updateBT()
	L_117_.Color = library_flags["backtrackColor"]
	L_117_.Transparency = 1.01 - L_5_.options["backtrackColor"].trans
end;
miscMain:AddToggle({
	text = "Backtrack",
	callback = function(L_1391_arg0)
		if L_1391_arg0 then
			for L_1392_forvar0, L_1393_forvar1 in next, L_30_:GetPlayers() do
				createPlr(L_1393_forvar1)
			end;
			while library_flags["Backtrack"] do
				local L_1394_, L_1395_ = getNearest(1000, false, false), library_flags["Only Backtrack Nearest"]
				if library_flags["backtrackMode"] == "Characters" then
					wait()
					for L_1396_forvar0, L_1397_forvar1 in next, L_47_ do
						if L_1395_ and L_1397_forvar1 ~= L_1394_ then
							continue;
						end;
						if not L_30_:FindFirstChild(L_1396_forvar0) then
							L_47_[L_1396_forvar0]:Destroy()
							L_47_[L_1396_forvar0] = nil;
							continue;
						end;
						if not L_30_[L_1396_forvar0].Character or L_30_[L_1396_forvar0].Team == L_32_.Team then
							for L_1398_forvar0, L_1399_forvar1 in next, L_1397_forvar1:GetChildren() do
								L_1399_forvar1.Transparency = 1;
								L_1399_forvar1.Position = Vector3.new(0, 0, 0)
							end;
							continue;
						end;
						CreateThread(function()
							local L_1400_ = {}
							for L_1401_forvar0, L_1402_forvar1 in next, L_1397_forvar1:GetChildren() do
								if not L_30_[L_1396_forvar0].Character:FindFirstChild(L_1402_forvar1.Name) then
									L_1402_forvar1.Transparency = 1;
									continue;
								end;
								L_1400_[L_1402_forvar1] = L_30_[L_1396_forvar0].Character[L_1402_forvar1.Name].CFrame;
								L_1402_forvar1.Color = library_flags["backtrackColor"]
								L_1402_forvar1.Transparency = 1.01 - L_5_.options["backtrackColor"].trans
							end;
							wait(library_flags["backtrackLength"] / 175)
							for L_1403_forvar0, L_1404_forvar1 in next, L_1397_forvar1:GetChildren() do
								if not L_1400_[L_1404_forvar1] then
									continue;
								end;
								L_1404_forvar1.CFrame = L_1400_[L_1404_forvar1]
							end
						end)
					end
				else
					L_28_.RenderStepped:Wait()
					L_28_.RenderStepped:Wait()
					local L_1405_;
					if L_1395_ then
						if L_1394_ and teamCheck(L_1394_, L_38_) and alive(L_1394_) then
							L_1405_ = L_117_:Clone()
							local L_1406_, L_1407_ = L_1394_.Character.Head.Position, L_1394_.Character.HumanoidRootPart.Position;
							L_1405_.Position = Vector3.new(L_1407_.X, L_1406_.Y + 0.1, L_1407_.Z)
							L_1405_.Name = "btHead"
							L_1405_.Parent = L_1394_.Character;
							L_31_:AddItem(L_1405_, library_flags["backtrackLength"] / 1000)
						end
					else
						for L_1408_forvar0, L_1409_forvar1 in next, L_30_:GetPlayers() do
							if teamCheck(L_1409_forvar1, L_38_) and alive(L_1409_forvar1) then
								L_1405_ = L_117_:Clone()
								local L_1410_, L_1411_ = L_1409_forvar1.Character.Head.Position, L_1409_forvar1.Character.HumanoidRootPart.Position;
								L_1405_.Position = Vector3.new(L_1411_.X, L_1410_.Y + 0.1, L_1411_.Z)
								L_1405_.Name = "btHead"
								L_1405_.Parent = L_1409_forvar1.Character;
								L_31_:AddItem(L_1405_, library_flags["backtrackLength"] / 1000)
							end
						end
					end
				end
			end;
			for L_1412_forvar0, L_1413_forvar1 in next, L_47_ do
				L_47_[L_1412_forvar0]:Destroy()
				L_47_[L_1412_forvar0] = nil
			end
		end
	end
}):AddColor({
	color = Color3.new(1, 1, 1),
	flag = "backtrackColor",
	trans = 0.5,
	callback = updateBT,
	calltrans = updateBT
})
L_5_.options["Backtrack"]:AddSlider({
	min = 1,
	max = 500,
	flag = "backtrackLength"
})
miscMain:AddList({
	text = "Backtrack Mode",
	values = {
		"Parts",
		"Characters"
	},
	flag = "backtrackMode",
	callback = function(L_1414_arg0)
		for L_1415_forvar0, L_1416_forvar1 in next, L_30_:GetPlayers() do
			createPlr(L_1416_forvar1)
		end;
		if L_1414_arg0 == "Parts" then
			wait(0.2)
			for L_1417_forvar0, L_1418_forvar1 in next, L_47_ do
				L_47_[L_1417_forvar0]:Destroy()
				L_47_[L_1417_forvar0] = nil
			end
		end
	end
})
miscMain:AddToggle({
	text = "Gravity Changer",
	callback = function(L_1419_arg0)
		workspace.Gravity = L_1419_arg0 and library_flags["gravityValue"] or 80
	end
}):AddSlider({
	flag = "gravityValue",
	min = 0,
	max = 160,
	value = 80,
	callback = function(L_1420_arg0)
		workspace.Gravity = library_flags["Gravity Changer"] and L_1420_arg0 or 80
	end
})
miscOK = L_5_:AddWarning({
	type = "ok"
})
miscMain:AddButton({
	text = "Unlock Inventory",
	callback = function()
		if not getgenv().unlockInventory then
			getgenv().unlockInventory = true;
			L_36_.CurrentInventory = L_93_;
			local L_1421_, L_1422_ = L_32_.SkinFolder.TFolder:Clone(), L_32_.SkinFolder.CTFolder:Clone()
			L_32_.SkinFolder.TFolder:Destroy()
			L_32_.SkinFolder.CTFolder:Destroy()
			L_1421_.Parent = L_32_.SkinFolder;
			L_1422_.Parent = L_32_.SkinFolder;
			miscOK.text = "Unlocked all skins, knives and gloves."
			miscOK:Show()
		end
	end
})
miscMovement = miscColumn:AddSection"Movement"
miscMovement:AddToggle({
	text = "No Crouch Cooldown"
})
miscMovement:AddToggle({
	text = "Auto Strafe"
})
last = Vector3.new()
miscMovement:AddToggle({
	text = "Maintain Velocity"
})
miscMovement:AddToggle({
	text = "Bunny Hop",
	callback = function()
	end
})
miscMovement:AddSlider({
	text = "Bunny Hop Speed",
	min = 18,
	max = 500,
	flag = "Speed Value"
})
oldMove = hookfunction(L_45_.moveFunc, LPH_NO_UPVALUES(function(...)
	local L_1423_ = {
		...
	}
	if getgenv().hookWS then
		L_1423_[2] = L_1423_[2] * library_flags["slowwalkSpeed"] / 100
	end;
	return oldMove(unpack(L_1423_))
end))
miscMovement:AddToggle({
	text = "Slow Walk"
}):AddBind({
	key = Enum.KeyCode.LeftShift,
	mode = "hold",
	callback = function(L_1424_arg0)
		if library_flags["Slow Walk"] then
			if not L_1424_arg0 then
				getgenv().hookWS = true
			else
				getgenv().hookWS = false
			end
		else
			getgenv().hookWS = false
		end
	end
})
L_5_.options["Slow Walk"]:AddSlider({
	min = 1,
	max = 100,
	value = 100,
	flag = "slowwalkSpeed"
})
miscMovement:AddList({
	text = "Bunny Hop Method",
	values = {
		"Auto Hop",
		"Velocity",
		"CFrame"
	}
})
miscPlayers = miscColumn2:AddSection"Players"
changing = false;
AliveT = nil;
AgeT = nil;
TeamT = nil;
thirteenT = nil;
miscPlayers:AddList({
	text = "Player",
	flag = "Player List",
	skipflag = true,
	max = 6,
	values = {},
	callback = function(L_1425_arg0)
		changing = true;
		if L_52_[L_1425_arg0] and L_30_[L_1425_arg0] then
			local L_1426_ = L_30_[L_1425_arg0]
			local L_1427_ = "false"
			if L_1426_.Character and L_1426_.Character.PrimaryPart then
				L_1427_ = "true"
			end;
			thirteenT.main.Text = "<13: ..."
			TeamT.main.Text = "Team: " .. tostring(L_1426_.Team)
			AliveT.main.Text = "Alive: " .. L_1427_;
			AgeT.main.Text = "Account Age: " .. tostring(L_1426_.AccountAge)
			L_5_.options["Loop Kill"]:SetState(L_52_[L_1425_arg0].LoopKill)
			L_5_.options["Target ESP"]:SetState(L_52_[L_1425_arg0].TargetESP)
			L_5_.options["Ragebot Whitelist"]:SetState(L_52_[L_1425_arg0].rageWL)
			L_5_.options["Ragebot Priority"]:SetState(L_52_[L_1425_arg0].ragePL)
			L_5_.options["Prevent Votekick"]:SetState(L_52_[L_1425_arg0].novotekick)
			spawn(function()
				local L_1428_ = L_24_.Functions.Filter:InvokeServer("4", L_1426_)
				local L_1429_ = L_1428_ == "#" and "true" or "false"
				thirteenT.main.Text = "<13: " .. L_1429_
			end)
		end;
		changing = false
	end
})
miscPlayers:AddToggle({
	text = "Loop Kill",
	skipflag = true,
	callback = function(L_1430_arg0)
		local L_1431_ = library_flags["Player List"]
		if not changing and L_52_[L_1431_] then
			L_52_[L_1431_].LoopKill = L_1430_arg0
		end
	end
})
miscPlayers:AddToggle({
	text = "Target ESP",
	skipflag = true,
	callback = function(L_1432_arg0)
		local L_1433_ = library_flags["Player List"]
		if not changing and L_52_[L_1433_] then
			L_52_[L_1433_].TargetESP = L_1432_arg0;
			cbCHAMS()
		end
	end
})
miscPlayers:AddToggle({
	text = "Ragebot Whitelist",
	skipflag = true,
	callback = function(L_1434_arg0)
		local L_1435_ = library_flags["Player List"]
		if not changing and L_52_[L_1435_] then
			L_52_[L_1435_].rageWL = L_1434_arg0
		end
	end
})
miscPlayers:AddToggle({
	text = "Ragebot Priority",
	skipflag = true,
	callback = function(L_1436_arg0)
		local L_1437_ = library_flags["Player List"]
		if not changing and L_52_[L_1437_] then
			L_52_[L_1437_].ragePL = L_1436_arg0
		end
	end
})
miscPlayers:AddToggle({
	text = "Prevent Votekick",
	skipflag = true,
	callback = function(L_1438_arg0)
		local L_1439_ = library_flags["Player List"]
		if not changing and L_52_[L_1439_] then
			L_52_[L_1439_].novotekick = L_1438_arg0
		end
	end
})
miscPlayers:AddColor({
	text = "Target Box Color",
	color = Color3.new(0.8, 0.8, 0)
})
miscPlayers:AddColor({
	text = "Target Name Color",
	color = Color3.new(0.8, 0.8, 0.2)
})
miscPlayers:AddColor({
	text = "Target Weapon Color",
	color = Color3.new(0.8, 0.8, 0.2)
})
miscPlayers:AddColor({
	text = "Target Tracer Color",
	color = Color3.new(0.8, 0.8, 0.2)
})
miscPlayers:AddColor({
	text = "Target Health Bar Color",
	color = Color3.new(0.2, 0.35, 0.1)
})
miscPlayers:AddColor({
	text = "Target Chams Color",
	color = Color3.new(0.65, 0.65, 0.65),
	trans = 1,
	callback = L_5_.options["Chams"].callback,
	calltrans = L_5_.options["Chams"].callback
})
L_5_.options["Target Chams Color"]:AddColor({
	flag = "targetchams2",
	color = Color3.new(1, 1, 1),
	trans = 1,
	callback = L_5_.options["Chams"].callback,
	calltrans = L_5_.options["Chams"].callback
})
thirteenT = miscPlayers:AddLabel("<13:")
TeamT = miscPlayers:AddLabel("Team:")
AliveT = miscPlayers:AddLabel("Alive:")
AgeT = miscPlayers:AddLabel("Account Age:")
blindParts = {
	"FakeHead",
	"Gun",
	"UpperTorso",
	"LowerTorso",
	"LeftUpperArm",
	"RightUpperArm"
}
spawn(function()
	while wait(1) do
		cbCHAMS()
		for L_1440_forvar0, L_1441_forvar1 in next, L_5_.options["Player List"].values do
			if not L_30_:FindFirstChild(L_1441_forvar1) then
				L_5_.options["Player List"]:RemoveValue(L_1441_forvar1)
				if L_52_[L_1441_forvar1] then
					L_52_[L_1441_forvar1] = nil
				end
			end
		end;
		for L_1442_forvar0, L_1443_forvar1 in next, L_30_:GetPlayers() do
			if not table.find(L_5_.options["Player List"].values, L_1443_forvar1.Name) and L_1443_forvar1.Name ~= L_32_.Name then
				if L_1443_forvar1.Name == L_32_.Name then
					continue;
				end;
				L_52_[L_1443_forvar1.Name] = {
					name = plrName,
					LoopKill = false,
					TargetESP = false,
					rageWL = false,
					ragePL = false,
					novotekick = false
				}
				L_5_.options["Player List"]:AddValue(L_1443_forvar1.Name)
			end
		end;
		if library_flags["Anti Votekick"] then
			local L_1444_ = {}
			for L_1445_forvar0, L_1446_forvar1 in next, L_30_:GetPlayers() do
				if L_1446_forvar1 ~= L_32_ and not L_52_[L_1446_forvar1.Name].novotekick then
					table.insert(L_1444_, L_1446_forvar1)
				end
			end;
			if # L_1444_ > 1 then
				local L_1447_ = L_1444_[math.random(1, # L_1444_)]
				if L_1447_ then
					L_41_:FireServer(L_1447_.Name)
				end
			end
		end
	end
end)
local L_118_ = miscColumn2:AddSection"Other"
L_118_:AddToggle({
	text = "Remove Recoil"
})
L_118_:AddToggle({
	text = "Remove Spread",
	callback = function()
		if library_flags["Remove Spread"] then
			ApplyValue(true, "Spread", L_77_, 0)
		else
			ApplyValue(false, "Spread", L_77_, 0)
		end
	end
})
local L_119_ = {
	Standard = {
		"cipex! cipex! cipex! cipex! cipex! cipex! cipex! cipex! cipex! cipex! cipex!",
		"cipex.solutions", -- revival
		"$$$",
		"1 sit nn 1 sit nn 1 sit nn 1 sit nn 1 sit nn",
		"who? who? who? who? who? who? who? who? who? who? who?"
	},
	Emojis = {
		"ðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒ",
		"ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€",
		"ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­",
		"ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘",
		"ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼",
		"ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘",
		"ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡"
	}
}
L_118_:AddToggle({
	text = "Uncensor Chat"
})
L_118_:AddToggle({
	text = "Chat Spammer",
	callback = function()
		L_55_ = 0
	end
}):AddList({
	values = {
		"Standard",
		"Emojis",
		"Custom"
	},
	flag = "chatMode"
})
miscMeme = miscColumn:AddSection"Meme Features"
local L_120_ = L_34_.ViewportSize.Y - 50;
local L_121_ = L_120_;
local L_122_ = {}
local L_123_ = Drawing.new("Text")
L_123_.Center = true;
L_123_.Outline = true;
L_123_.Color = Color3.new(1, 1, 1)
L_123_.Font = 3;
L_123_.Size = 20;
L_123_.Visible = false;
oldWalk = L_36_.walkupdate;
oldSpeedUpdate = L_36_.speedupdate;
miscMeme:AddToggle({
	text = "Flashlight",
	callback = function()
		if not library_flags["Flashlight"] and L_57_.alive and L_32_.Character.Head.SpotLight.Enabled then
			game.ReplicatedStorage.Events.Flashlight:FireServer()
		end
	end
})
miscMeme:AddToggle({
	text = "Drawing Enabled",
	callback = function()
		while library_flags["Drawing Enabled"] do
			wait()
			L_123_.Position = Vector2.new(L_34_.ViewportSize.X / 2, L_34_.ViewportSize.Y - 40)
			L_120_ = L_34_.ViewportSize.Y - 50;
			local L_1448_ = 0;
			if L_57_.alive then
				L_1448_ = math.floor(math.clamp((L_32_.Character.HumanoidRootPart.Velocity * Vector3.new(1, 0, 1)).magnitude * 14.85, 0, 400))
			end;
			if library_flags["Velocity Indicator"] then
				L_123_.Visible = true;
				L_123_.Text = tostring(L_1448_)
			else
				L_123_.Visible = false
			end;
			if library_flags["Velocity Graph"] then
				local L_1449_ = Drawing.new("Line")
				table.insert(L_122_, L_1449_)
				L_1449_.From = Vector2.new(L_34_.ViewportSize.X / 2 + 110 - 2, L_121_)
				L_1449_.To = Vector2.new(L_34_.ViewportSize.X / 2 + 110, L_120_ - L_1448_ / 6.5)
				L_1449_.Thickness = 1;
				L_1449_.Transparency = 1;
				L_1449_.Color = library_flags["graphColor"]
				L_1449_.Visible = true;
				if # L_122_ > 1 then
					if # L_122_ > 110 then
						L_122_[1]:Remove()
						table.remove(L_122_, 1)
						for L_1451_forvar0 = 2, 8 do
							L_122_[L_1451_forvar0].Transparency = L_1451_forvar0 / 10
						end;
						local L_1450_ = 0;
						for L_1452_forvar0 = 110, 104, -1 do
							L_1450_ = L_1450_ + 1;
							L_122_[L_1452_forvar0].Transparency = L_1450_ / 10
						end;
						L_122_[103].Transparency = 1
					end;
					for L_1453_forvar0, L_1454_forvar1 in ipairs(L_122_) do
						L_1454_forvar1.To = L_1454_forvar1.To - Vector2.new(2, 0)
						L_1454_forvar1.From = L_1454_forvar1.From - Vector2.new(2, 0)
					end
				end;
				L_121_ = L_1449_.To.Y
			else
				for L_1455_forvar0, L_1456_forvar1 in ipairs(L_122_) do
					L_1456_forvar1:Remove()
					table.remove(L_122_, L_1455_forvar0)
				end
			end
		end;
		L_123_.Visible = false;
		for L_1457_forvar0, L_1458_forvar1 in ipairs(L_122_) do
			L_1458_forvar1:Remove()
			table.remove(L_122_, L_1457_forvar0)
		end
	end
})
spawn(function()
	while wait(0.2) do
		if not library_flags["Drawing Enabled"] or not library_flags["Velocity Graph"] then
			for L_1459_forvar0, L_1460_forvar1 in ipairs(L_122_) do
				L_1460_forvar1:Remove()
				table.remove(L_122_, L_1459_forvar0)
			end
		end
	end
end)
miscMeme:AddToggle({
	text = "Velocity Indicator"
})
miscMeme:AddToggle({
	text = "Velocity Graph"
}):AddColor({
	color = Color3.new(1, 1, 1),
	flag = "graphColor"
})
edgebugDebounce = false;
strafedir = Vector3.new()
miscMeme:AddToggle({
	text = "Edgebug"
}):AddBind({
	key = Enum.KeyCode.E,
	mode = "hold",
	callback = function(L_1461_arg0)
		if library_flags["Edgebug"] and not L_1461_arg0 then
			L_50_ = true;
			if not L_57_.alive then
				return
			end;
			local L_1462_ = L_32_.Character.HumanoidRootPart;
			if not edgebugDebounce and L_32_.Character.Humanoid:GetState() == Enum.HumanoidStateType.Landed then
				L_36_.walkupdate = oldWalk;
				L_36_.speedupdate = oldSpeedUpdate;
				edgebugDebounce = true;
				getgenv().hookJP = 0;
				wait()
				local L_1463_ = L_32_.Character.HumanoidRootPart.Velocity;
				L_32_.Character.HumanoidRootPart.Velocity = Vector3.new(L_1463_.X * 1.8, -7, L_1463_.Z * 1.8)
				local L_1464_ = L_32_.Character.HumanoidRootPart.Velocity;
				local L_1465_ = library_flags["Override Game Movement"] and (strafedir - L_32_.Character.HumanoidRootPart.Position).unit * L_32_.Character.Humanoid.WalkSpeed or Vector3.new()
				for L_1466_forvar0 = 1, 4 do
					wait()
					L_32_.Character.HumanoidRootPart.Velocity = L_1464_ + L_1465_ - Vector3.new(0, 2, 0)
				end;
				wait()
				L_32_.Character.HumanoidRootPart.Velocity = L_32_.Character.HumanoidRootPart.Velocity * Vector3.new(1.8, 1, 1.8)
				getgenv().hookJP = nil;
				delay(0.2, function()
					edgebugDebounce = false
				end)
			end
		else
			L_50_ = false;
			getgenv().hookJP = nil
		end
	end
})
local L_124_ = {
	CFrame.new(1, 0, 0),
	CFrame.new(-1, 0, 0)
}
local L_125_ = Instance.new("BodyVelocity")
function isTouchingWall()
	local L_1467_ = L_32_.Character.HumanoidRootPart;
	for L_1468_forvar0, L_1469_forvar1 in next, L_124_ do
		local L_1470_ = (L_1467_.CFrame * L_1469_forvar1).p;
		local L_1471_ = Ray.new(L_1467_.CFrame.p, (L_1470_ - L_1467_.CFrame.p).unit * 1.8)
		local L_1472_, L_1473_ = workspace:FindPartOnRayWithIgnoreList(L_1471_, {
			L_34_,
			L_32_.Character,
			workspace.Ray_Ignore,
			workspace.Map:WaitForChild("Clips"),
			workspace.Map:WaitForChild("SpawnPoints")
		})
		if L_1472_ then
			return true
		end
	end;
	return false
end;
miscMeme:AddToggle({
	text = "Pixelsurf"
}):AddBind({
	key = Enum.KeyCode.F,
	mode = "hold",
	callback = function(L_1474_arg0)
		if L_125_ == nil then
			L_125_ = Instance.new("BodyVelocity")
		end;
		if library_flags["Pixelsurf"] and not L_1474_arg0 then
			if not L_57_.alive then
				return
			end;
			local L_1475_ = L_32_.Character.HumanoidRootPart;
			surfing = true;
			if isTouchingWall() then
				L_125_.MaxForce = Vector3.new(1500, 1500, 1500)
				L_125_.Velocity = Vector3.new()
				L_125_.Parent = L_32_.Character.HumanoidRootPart
			else
				L_125_.MaxForce = Vector3.new(0, 0, 0)
				L_125_.Parent = nil
			end
		else
			surfing = false;
			L_125_.MaxForce = Vector3.new(0, 0, 0)
			L_125_.Parent = nil
		end
	end
})
miscMeme:AddToggle({
	text = "Jumpbug"
}):AddBind({
	key = Enum.UserInputType.MouseButton3,
	mode = "hold",
	callback = function(L_1476_arg0)
		if library_flags["Jumpbug"] and not L_1476_arg0 then
			getgenv().hookJP = L_5_.flags["jbheight"]
			jumpbugging = true
		else
			getgenv().hookJP = 2.5;
			jumpbugging = false
		end
	end
})
miscMeme:AddToggle({
	text = "Noclip"
}):AddBind({
	key = Enum.KeyCode.V,
	mode = "hold",
	callback = function(L_1477_arg0)
		if not L_57_.alive or not library_flags["Noclip"] then
			noclipping = false;
			return
		end;
		noclipping = not L_1477_arg0
	end
})
miscMeme:AddToggle({
	text = "Airstuck",
	callback = function()
		if L_5_.flags["Airstuck"] and L_57_.alive then
			L_32_.Character.HumanoidRootPart.Anchored = false
		end
	end
}):AddBind({
	key = Enum.KeyCode.C,
	mode = "hold",
	callback = function(L_1478_arg0)
		if L_5_.flags["Airstuck"] and L_57_.alive then
			L_32_.Character.HumanoidRootPart.Anchored = not L_1478_arg0;
			L_32_.Character.UpperTorso.Velocity = L_1478_arg0 and L_32_.Character.UpperTorso.Velocity or Vector3.new()
			L_32_.Character.HumanoidRootPart.Velocity = L_1478_arg0 and L_32_.Character.HumanoidRootPart.Velocity or Vector3.new()
		end
	end
})
miscMeme:AddSlider({
	text = "Jumpbug Height",
	min = 2.5,
	max = 4,
	float = 0.25,
	flag = "jbheight"
})
exploitTab = L_5_:AddTab"Exploits"
exploitColumn = exploitTab:AddColumn()
exploitMain = exploitColumn:AddSection"Main"
oldcash = L_32_.Cash.Value;
loadingCFG = false;
exploitMain:AddToggle({
	text = "Infinite Cash",
	callback = function()
		if library_flags["Infinite Cash"] then
			oldcash = L_32_.Cash.Value;
			while library_flags["Infinite Cash"] do
				wait()
				L_32_.Cash.Value = 16000
			end
		else
			if loadingCFG then
				return
			end;
			for L_1479_forvar0 = 1, 5 do
				wait()
				L_32_.Cash.Value = oldcash
			end
		end
	end
})
exploitMain:AddToggle({
	text = "Infinite Ammo",
	callback = function()
		pcall(function()
			if not library_flags["Infinite Ammo"] and L_36_ and L_36_.gun and L_36_.gun:FindFirstChild("Ammo") and L_36_.ammocount then
				if loadingCFG then
					return
				end;
				L_36_.ammocount = L_36_.gun.Ammo.Value;
				if L_36_.ammocount2 then
					L_36_.ammocount2 = 0
				end
			end
		end)
	end
})
exploitMain:AddToggle({
	text = "Instant Reload"
})
exploitMain:AddToggle({
	text = "Double Tap"
})
exploitMain:AddToggle({
	text = "Force Headshot"
})
exploitMain:AddToggle({
	text = "No Fall Damage"
})
exploitMain:AddToggle({
	text = "No Fire Damage"
})
exploitMain:AddToggle({
	text = "Evade Bullets"
})
exploitMain:AddToggle({
	text = "Ping Spoof"
})
exploitMain:AddToggle({
	text = "Anti Votekick"
})
exploitMain:AddToggle({
	text = "Fake Lag",
	callback = function()
		L_26_:SetOutgoingKBPSLimit(0)
		while library_flags["Fake Lag"] do
			wait(library_flags["fakelag"])
			fakeLagDebounce = not fakeLagDebounce;
			L_26_:SetOutgoingKBPSLimit(fakeLagDebounce and 1 or 0)
			if not fakeLagDebounce and library_flags["Third Person"] and library_flags["Fake Lag Chams"] then
				hitChams(L_32_, library_flags["fakelagColor"], 1 - L_5_.options["fakelagColor"].trans, library_flags["fakelag"] * 2)
			end
		end;
		L_26_:SetOutgoingKBPSLimit(0)
	end
}):AddSlider({
	min = 0.05,
	max = 1,
	float = 0.05,
	flag = "fakelag",
	value = 0.25
})
exploitMod = exploitColumn:AddSection"Gun mod"
exploitMod:AddToggle({
	text = "Damage Modifier",
	callback = function()
		if library_flags["Damage Modifier"] then
			getgenv().damagemod = library_flags["modvalue"]
		else
			getgenv().damagemod = 1
		end
	end
}):AddSlider({
	min = 1,
	max = 5,
	float = 0.01,
	flag = "modvalue",
	value = 1,
	callback = L_5_.options["Damage Modifier"].callback
})
exploitMod:AddToggle({
	text = "Minimum Damage"
}):AddSlider({
	min = 0,
	max = 1,
	float = 0.01,
	flag = "minDamage",
	value = 1
})
exploitMod:AddSlider({
	text = "Autowall Modifier",
	min = 1,
	max = 2,
	float = 0.1,
	flag = "awallMod",
	value = 1
})
local L_126_ = L_5_:AddTab("Settings", 100)
local L_127_ = L_126_:AddColumn()
local L_128_ = L_126_:AddColumn()
local L_129_ = L_127_:AddSection"Menu"
L_129_:AddBind({
	text = "Open / Close",
	flag = "UI Toggle",
	nomouse = true,
	key = "Delete",
	callback = function()
		L_5_:Close()
	end
})
L_129_:AddColor({
	text = "Accent Color",
	flag = "Menu Accent Color",
	color = Color3.fromRGB(30, 60, 150),
	callback = function(L_1480_arg0)
		L_83_.BorderColor3 = L_1480_arg0;
		L_116_.BorderColor3 = L_1480_arg0;
		L_87_.BorderColor3 = L_1480_arg0;
		if L_5_.currentTab then
			L_5_.currentTab.button.TextColor3 = L_1480_arg0
		end;
		for L_1481_forvar0, L_1482_forvar1 in next, L_5_.theme do
			L_1482_forvar1[L_1482_forvar1.ClassName == "TextLabel" and "TextColor3" or L_1482_forvar1.ClassName == "ImageLabel" and "ImageColor3" or "BackgroundColor3"] = L_1480_arg0
		end
	end
})
local L_130_ = {
	["Floral"] = 5553946656,
	["Flowers"] = 6071575925,
	["Circles"] = 6071579801,
	["Hearts"] = 6073763717
}
L_129_:AddList({
	text = "Background",
	flag = "UI Background",
	values = {
		"Floral",
		"Flowers",
		"Circles",
		"Hearts"
	},
	callback = function(L_1483_arg0)
		if L_130_[L_1483_arg0] then
			L_5_.main.Image = "rbxassetid://" .. L_130_[L_1483_arg0]
		end
	end
}):AddColor({
	flag = "Menu Background Color",
	color = Color3.new(),
	callback = function(L_1484_arg0)
		L_5_.main.ImageColor3 = L_1484_arg0
	end,
	trans = 1,
	calltrans = function(L_1485_arg0)
		L_5_.main.ImageTransparency = 1 - L_1485_arg0
	end
})
L_129_:AddSlider({
	text = "Tile Size",
	value = 90,
	min = 50,
	max = 500,
	callback = function(L_1486_arg0)
		L_5_.main.TileSize = UDim2.new(0, L_1486_arg0, 0, L_1486_arg0)
	end
})
local L_131_ = L_127_:AddSection"Debug"
L_131_:AddToggle({
	text = "Only Backtrack Nearest"
})
L_131_:AddToggle({
	text = "Show Prediction Position"
})
L_131_:AddToggle({
	text = "Slower Ragebot"
})
local L_132_ = L_128_:AddSection"Configs"
L_132_:AddBox({
	text = "Config Name",
	skipflag = true
})
local L_133_ = L_5_:AddWarning({
	type = "confirm"
})
L_132_:AddList({
	text = "Configs",
	skipflag = true,
	value = "",
	flag = "Config List",
	values = L_5_:GetConfigs()
})
L_132_:AddButton({
	text = "Create",
	callback = function()
		L_5_:GetConfigs()
		writefile(L_5_.foldername .. "/" .. library_flags["Config Name"] .. L_5_.fileext, "{}")
		L_5_.options["Config List"]:AddValue(library_flags["Config Name"])
	end
})
L_132_:AddButton({
	text = "Save",
	callback = function()
		local L_1487_, L_1488_, L_1489_ = L_5_.round(library_flags["Menu Accent Color"])
		L_133_.text = "Are you sure you want to save the current settings to config <font color='rgb(" .. L_1487_ .. "," .. L_1488_ .. "," .. L_1489_ .. ")'>" .. library_flags["Config List"] .. "</font>?"
		if L_133_:Show() then
			L_5_:SaveConfig(library_flags["Config List"])
		end
	end
})
L_132_:AddButton({
	text = "Load",
	callback = function()
		local L_1490_, L_1491_, L_1492_ = L_5_.round(library_flags["Menu Accent Color"])
		L_133_.text = "Are you sure you want to load config <font color='rgb(" .. L_1490_ .. "," .. L_1491_ .. "," .. L_1492_ .. ")'>" .. library_flags["Config List"] .. "</font>?"
		if L_133_:Show() then
			L_5_.options["Loop Kill"]:SetState(false)
			L_5_.options["Target ESP"]:SetState(false)
			L_5_.options["Ragebot Whitelist"]:SetState(false)
			L_5_.options["Ragebot Priority"]:SetState(false)
			L_5_:LoadConfig(library_flags["Config List"])
		end
	end
})
L_132_:AddButton({
	text = "Delete",
	callback = function()
		local L_1493_, L_1494_, L_1495_ = L_5_.round(library_flags["Menu Accent Color"])
		L_133_.text = "Are you sure you want to delete config <font color='rgb(" .. L_1493_ .. "," .. L_1494_ .. "," .. L_1495_ .. ")'>" .. library_flags["Config List"] .. "</font>?"
		if L_133_:Show() then
			local L_1496_ = library_flags["Config List"]
			if table.find(L_5_:GetConfigs(), L_1496_) and isfile(L_5_.foldername .. "/" .. L_1496_ .. L_5_.fileext) then
				L_5_.options["Config List"]:RemoveValue(L_1496_)
				delfile(L_5_.foldername .. "/" .. L_1496_ .. L_5_.fileext)
			end
		end
	end
})
for L_1497_forvar0, L_1498_forvar1 in next, L_24_.Viewmodels:GetDescendants() do
	if L_1498_forvar1.Name == "HumanoidRootPart" and L_1498_forvar1:IsA("BasePart") then
		L_1498_forvar1.Transparency = 1
	end
end;
local L_134_ = L_127_:AddSection"Skin"
local L_135_ = L_24_.Viewmodels:Clone()
L_135_.Name = "Viewmodel_Save"
L_135_.Parent = L_24_;
local L_136_, L_137_ = {}, {}
if not isfile("cipex_configs/custommodels.txt") then
	writefile("cipex_configs/custommodels.txt", [[
[
{"modelid":"rbxassetid://6476897690","weaponname":"Karambit","modelname":"Old Karambit"},
{"modelid":"rbxassetid://6422093888","weaponname":"Butterfly Knife","modelname":"Old Butterfly Knife"},
{"modelid":"rbxassetid://6477596645","weaponname":"Gut Knife","modelname":"Old Gut Knife"},
{"modelid":"rbxassetid://6421375318","weaponname":"defaultknife","modelname":"Flip Knife"},
{"modelid":"rbxassetid://6476945399","weaponname":"defaultknife","modelname":"Sword"},
{"modelid":"rbxassetid://6477297801","weaponname":"defaultknife","modelname":"Energy Blade"},
{"modelid":"rbxassetid://6478215819","weaponname":"defaultknife","modelname":"Pickaxe"},
{"modelid":"rbxassetid://6477284418","weaponname":"AWP","modelname":"Railgun"},
{"modelid":"rbxassetid://6476965169","weaponname":"AWP","modelname":"Pulse Musket"},
{"modelid":"rbxassetid://6477308219","weaponname":"AWP","modelname":"Barett"},
{"modelid":"rbxassetid://6477587469","weaponname":"Scout","modelname":"M1 Garand"},
{"modelid":"rbxassetid://6477313539","weaponname":"Glock","modelname":"Soul Pistol"},
{"modelid":"rbxassetid://6481976224","weaponname":"USP","modelname":"Silenced Pistol"}
]
	]])
end;
local L_138_, L_139_ = pcall(function()
	local L_1499_ = readfile("cipex_configs/custommodels.txt")
	L_136_ = game:service("HttpService"):JSONDecode(L_1499_)
	L_137_ = {}
	for L_1500_forvar0, L_1501_forvar1 in next, L_136_ do
		table.insert(L_137_, L_1501_forvar1.modelname)
	end
end)
if not L_138_ then
	warn("[cipex] could not load custom models! reason: " .. L_139_)
end;
function equipCustomModel(L_1502_arg0)
	for L_1503_forvar0, L_1504_forvar1 in next, L_136_ do
		if L_1504_forvar1.modelname == L_1502_arg0 then
			if L_1504_forvar1.weaponname == "defaultknife" then
				for L_1505_forvar0 = 1, 2 do
					local L_1506_ = L_1505_forvar0 == 1 and "T" or "CT"
					local L_1507_ = game:GetObjects(L_1504_forvar1.modelid)[1]
					L_1507_.Name = "v_" .. L_1506_ .. " Knife"
					L_24_.Viewmodels["v_" .. L_1506_ .. " Knife"]:Destroy()
					L_1507_.Parent = L_24_.Viewmodels;
					L_1507_.HumanoidRootPart.Transparency = 1;
					if not L_1507_:FindFirstChild("stab") then
						local L_1508_ = L_1507_.fire:Clone()
						L_1508_.Parent = L_1507_;
						L_1508_.Name = "stab"
					end;
					if L_1507_:FindFirstChild("AIM") then
						L_1507_.AIM:Destroy()
					end;
					table.insert(L_91_, L_1506_ .. " Knife")
				end
			else
				local L_1509_ = game:GetObjects(L_1504_forvar1.modelid)[1]
				L_1509_.Name = "v_" .. L_1504_forvar1.weaponname;
				L_24_.Viewmodels["v_" .. L_1504_forvar1.weaponname]:Destroy()
				L_1509_.Parent = L_24_.Viewmodels;
				L_1509_.HumanoidRootPart.Transparency = 1;
				table.insert(L_91_, L_1504_forvar1.weaponname)
			end;
			table.insert(L_92_, L_1502_arg0)
		end
	end
end;
custommodeltextthingy = nil;
L_134_:AddList({
	text = "Custom Models",
	values = L_137_,
	max = 8,
	callback = function(L_1510_arg0)
		custommodeltextthingy.main.TextSize = 14;
		for L_1511_forvar0, L_1512_forvar1 in next, L_136_ do
			if L_1512_forvar1.modelname == L_1510_arg0 then
				custommodeltextthingy.main.Text = "Custom model for: " .. L_1512_forvar1.weaponname
			end
		end
	end
})
L_134_:AddButton({
	text = "Apply Custom Model",
	callback = function()
		equipCustomModel(library_flags["Custom Models"])
	end
})
L_134_:AddButton({
	text = "Revert All Custom Models",
	callback = function()
		L_24_.Viewmodels:Destroy()
		local L_1513_ = L_135_:Clone()
		L_1513_.Name = "Viewmodels"
		L_1513_.Parent = L_24_;
		L_91_ = {}
		L_92_ = {}
	end
})
L_134_:AddButton({
	text = "Refresh Custom Models",
	callback = function()
		local L_1514_ = readfile("cipex_configs/custommodels.txt")
		L_136_ = game:service("HttpService"):JSONDecode(L_1514_)
		L_137_ = {}
		for L_1515_forvar0, L_1516_forvar1 in next, L_136_ do
			table.insert(L_137_, L_1516_forvar1.modelname)
		end;
		for L_1517_forvar0, L_1518_forvar1 in next, L_137_ do
			if not table.find(L_5_.options["Custom Models"].values, L_1518_forvar1) then
				L_5_.options["Custom Models"]:AddValue(L_1518_forvar1)
			end
		end;
		for L_1519_forvar0, L_1520_forvar1 in next, L_5_.options["Custom Models"].values do
			if not table.find(L_137_, L_1520_forvar1) then
				L_5_.options["Custom Models"]:RemoveValue(L_1520_forvar1)
			end
		end
	end
})
custommodeltextthingy = L_134_:AddLabel("Custom model for: ---")
L_134_:AddButton({
	text = "Save Equipped Skins",
	callback = function()
		L_133_.text = "Are you sure you want to save your current skins?"
		if L_133_:Show() then
			if isfile("cipex_configs/skins.txt") then
				local L_1522_ = game:GetService"HttpService":JSONDecode(readfile("cipex_configs/skins.txt"))
				if L_1522_.Knife and getgenv().lastKnife == "" and L_1522_.Knife ~= "" then
					getgenv().lastKnife = L_1522_.Knife
				end;
				if L_1522_.Glove and getgenv().lastGlove == "" and L_1522_.Glove ~= "" then
					getgenv().lastGlove = L_1522_.Glove
				end
			end;
			local L_1521_ = {
				["CTFolder"] = {},
				["TFolder"] = {},
				["Knife"] = tostring(getgenv().lastKnife),
				["Glove"] = tostring(getgenv().lastGlove),
				["Models"] = game:GetService"HttpService":JSONEncode(L_92_)
			}
			for L_1523_forvar0, L_1524_forvar1 in next, L_32_.SkinFolder.CTFolder:GetChildren() do
				L_1521_.CTFolder[L_1524_forvar1.Name] = L_1524_forvar1.Value
			end;
			for L_1525_forvar0, L_1526_forvar1 in next, L_32_.SkinFolder.TFolder:GetChildren() do
				L_1521_.TFolder[L_1526_forvar1.Name] = L_1526_forvar1.Value
			end;
			print(game:GetService"HttpService":JSONEncode(L_1521_))
			writefile("cipex_configs/skins.txt", game:GetService"HttpService":JSONEncode(L_1521_))
		end
	end
})
L_134_:AddButton({
	text = "Load Saved Skins",
	callback = function()
		L_133_.text = "Are you sure you want to load your saved skins?"
		if L_133_:Show() then
			if isfile("cipex_configs/skins.txt") then
				local L_1527_ = game:GetService"HttpService":JSONDecode(readfile("cipex_configs/skins.txt"))
				for L_1528_forvar0, L_1529_forvar1 in next, L_1527_.TFolder do
					local L_1530_ = {
						[1] = "EquipItem",
						[2] = "T",
						[3] = L_1528_forvar0,
						[4] = {
							[1] = L_1528_forvar0 .. "_" .. L_1529_forvar1
						}
					}
					L_23_:FireServer(L_1530_)
				end;
				for L_1531_forvar0, L_1532_forvar1 in next, L_1527_.CTFolder do
					local L_1533_ = {
						[1] = "EquipItem",
						[2] = "CT",
						[3] = L_1531_forvar0,
						[4] = {
							[1] = L_1531_forvar0 .. "_" .. L_1532_forvar1
						}
					}
					L_23_:FireServer(L_1533_)
				end;
				for L_1534_forvar0, L_1535_forvar1 in pairs(L_36_.CurrentInventory) do
					pcall(function()
						local L_1536_ = L_36_.CurrentInventory;
						local L_1537_ = L_1536_[L_1534_forvar0]
						local L_1538_ = L_1537_[1]
						if L_1537_ and L_1538_ then
							local L_1539_ = string.split(L_1538_, "_")
							local L_1540_ = L_1539_[1]
							if L_1538_ == L_1527_.Glove or L_1538_ == L_1527_.Knife then
								L_36_.equipitem(L_1534_forvar0, "Both")
							end
						end
					end)
				end;
				if L_1527_.Models then
					L_24_.Viewmodels:Destroy()
					local L_1541_ = L_135_:Clone()
					L_1541_.Name = "Viewmodels"
					L_1541_.Parent = L_24_;
					L_91_ = {}
					L_92_ = {}
					local L_1542_ = game:GetService"HttpService":JSONDecode(L_1527_.Models)
					for L_1543_forvar0, L_1544_forvar1 in next, L_1542_ do
						equipCustomModel(L_1544_forvar1)
					end
				end
			end
		end
	end
})
ConfigSectionOther = L_128_:AddSection"Other"
ConfigSectionOther:AddButton({
	text = "Copy To Clipboard",
	callback = function()
		L_5_:SaveConfig("", true)
	end
})
ConfigSectionOther:AddButton({
	text = "Load From Clipboard",
	callback = function()
		L_133_.text = "Are you sure you want to load config from clipboard?"
		if L_133_:Show() then
			local L_1545_ = Instance.new("ScreenGui", game.CoreGui)
			local L_1546_ = Instance.new("TextBox", L_1545_)
			L_1546_.Size = UDim2.new(1, 0, 1, 0)
			L_1546_.Text = ""
			L_1546_.BackgroundTransparency = 0.99;
			L_1546_.TextTransparency = 1;
			wait()
			mouse1click()
			wait()
			keypress(17)
			keypress(86)
			wait()
			keyrelease(17)
			keyrelease(86)
			wait()
			local L_1547_ = L_1546_.Text;
			L_1545_:Destroy()
			L_5_.options["Loop Kill"]:SetState(false)
			L_5_.options["Target ESP"]:SetState(false)
			L_5_.options["Ragebot Whitelist"]:SetState(false)
			L_5_.options["Ragebot Priority"]:SetState(false)
			local L_1548_ = L_5_:LoadConfig("", L_1547_)
			if L_1548_ then
				local L_1549_ = Drawing.new("Text")
				L_1549_.Size = 45;
				L_1549_.Center = false;
				L_1549_.Position = Vector2.new(20, 20)
				L_1549_.Visible = true;
				L_1549_.Color = Color3.fromRGB(255, 100, 100)
				L_1549_.Outline = true;
				L_1549_.Text = "Invalid config!"
				CreateThread(function()
					wait(2)
					L_1549_:Remove()
				end)
			end
		end
	end
})
function roundNumber(L_1550_arg0, L_1551_arg1)
	return tonumber(string.format("%." .. (L_1551_arg1 or 0) .. "f", L_1550_arg0))
end;
if L_1_ then
	local L_1552_ = game:GetService("Players")
	local L_1553_ = L_1552_.LocalPlayer;
	local L_1554_ = workspace.KillFeed;
	local L_1555_ = {}
	local L_1556_ = Instance.new("IntValue")
	L_1556_.Name = "jig"
	local L_1557_ = {
		"FakeHead",
		"UpperTorso",
		"LowerTorso",
		"LeftFoot",
		"LeftHand",
		"LeftLowerArm",
		"LeftLowerLeg",
		"LeftUpperArm",
		"LeftUpperLeg",
		"RightFoot",
		"RightHand",
		"RightLowerArm",
		"RightLowerLeg",
		"RightUpperArm",
		"RightUpperLeg"
	}
	local L_1558_ = {
		["HE Grenade"] = "rbxassetid://2473861397",
		["Smoke Grenade"] = "rbxassetid://2465359739",
		["Incendiary Grenade"] = "rbxassetid://2465356425",
		["Molotov"] = "rbxassetid://2465357373",
		["Flashbang"] = "rbxassetid://2472169712",
		["Decoy Grenade"] = "rbxassetid://454821354"
	}
	function addTick()
		local L_1565_ = tick()
		local L_1566_ = {}
		for L_1567_forvar0, L_1568_forvar1 in next, L_1552_:GetPlayers() do
			local L_1569_ = {
				name = L_1568_forvar1.Name,
				alive = alive(L_1568_forvar1),
				gunState = "None"
			}
			if L_1569_.alive then
				L_1569_.armsModel = (L_1553_.Status.Team.Value == "CT" and workspace.Map.CeeT.Value or workspace.Map.Tee.Value) .. "Arms"
				L_1569_.gunName = L_1568_forvar1.Character.EquippedTool.Value;
				L_1569_.health = L_1568_forvar1.Character.Humanoid.Health;
				L_1569_.localplayer = L_1568_forvar1 == L_1553_;
				L_1569_.userid = L_1568_forvar1.UserId;
				L_1569_.kevlar = L_1568_forvar1:FindFirstChild("Kevlar") and L_1568_forvar1.Kevlar.Value or 0;
				L_1569_.plrModel = L_1568_forvar1.Ragdoll.Appearance.Value;
				L_1569_.scoped = L_1568_forvar1.Character:FindFirstChild("AIMING") and true or false;
				L_1569_.team = tostring(L_1568_forvar1.Team)
				L_1569_.skinName = "Stock"
				L_1569_.partCF = {}
				L_1569_.gunCF = {}
				L_1569_.hatCF = {}
				L_1569_.camCF = "0 0 0 0 0 0"
				L_1569_.forcefield = L_1568_forvar1.Character:FindFirstChild("ForceField") and true or false;
				local L_1570_ = L_1568_forvar1.Character.UpperTorso.Velocity;
				L_1569_.velocity = {
					L_1570_.X,
					L_1570_.Y,
					L_1570_.Z
				}
				if L_1569_.localplayer then
					L_1569_.ammo = tonumber(L_1553_.PlayerGui.GUI.AmmoGUI.AmmoClip.Text)
					L_1569_.ammoreserve = tonumber(L_1553_.PlayerGui.GUI.AmmoGUI.AmmoReserve.Text)
				end;
				if L_1568_forvar1:FindFirstChild("CameraCF") then
					local L_1571_, L_1572_;
					if L_1568_forvar1 == L_1553_ then
						L_1571_ = L_34_.CFrame.p;
						L_1572_ = L_1571_ + L_34_.CFrame.LookVector
					else
						L_1571_ = L_1568_forvar1.CameraCF.Value.p;
						L_1572_ = L_1571_ + L_1568_forvar1.CameraCF.Value.LookVector
					end;
					L_1569_.camCF = roundNumber(L_1571_.X, 3) .. " " .. roundNumber(L_1571_.Y, 3) .. " " .. roundNumber(L_1571_.Z, 3) .. " " .. roundNumber(L_1572_.X, 3) .. " " .. roundNumber(L_1572_.Y, 3) .. " " .. roundNumber(L_1572_.Z, 3)
				end;
				for L_1573_forvar0, L_1574_forvar1 in next, L_1568_forvar1.Character:GetChildren() do
					if table.find(L_1557_, L_1574_forvar1.Name) then
						local L_1575_ = tostring(L_1574_forvar1.CFrame):split(", ")
						L_1569_.partCF[L_1574_forvar1.Name] = roundNumber(L_1575_[1], 3) .. " " .. roundNumber(L_1575_[2], 3) .. " " .. roundNumber(L_1575_[3], 3) .. " " .. roundNumber(L_1575_[4], 3) .. " " .. roundNumber(L_1575_[5], 3) .. " " .. roundNumber(L_1575_[6], 3) .. " " .. roundNumber(L_1575_[7], 3) .. " " .. roundNumber(L_1575_[8], 3) .. " " .. roundNumber(L_1575_[9], 3) .. " " .. roundNumber(L_1575_[10], 3) .. " " .. roundNumber(L_1575_[11], 3) .. " " .. roundNumber(L_1575_[12], 3)
					elseif L_1574_forvar1.Name == "Gun" then
						if L_1574_forvar1:FindFirstChild("AnimateValue") then
							local L_1576_ = L_1574_forvar1.AnimateValue:GetChildren()
							if # L_1576_ > 0 then
								local L_1577_ = L_1576_[# L_1576_]
								if not L_1577_:FindFirstChild("jig") then
									local L_1578_ = L_1556_:Clone()
									L_1578_.Parent = L_1577_;
									L_1569_.gunState = L_1577_.Name
								end
							end
						end;
						for L_1579_forvar0, L_1580_forvar1 in next, L_1574_forvar1:GetChildren() do
							if L_1580_forvar1.ClassName == "MeshPart" then
								local L_1581_ = tostring(L_1580_forvar1.CFrame):split(", ")
								L_1569_.gunCF[L_1580_forvar1.Name] = roundNumber(L_1581_[1], 3) .. " " .. roundNumber(L_1581_[2], 3) .. " " .. roundNumber(L_1581_[3], 3) .. " " .. roundNumber(L_1581_[4], 3) .. " " .. roundNumber(L_1581_[5], 3) .. " " .. roundNumber(L_1581_[6], 3) .. " " .. roundNumber(L_1581_[7], 3) .. " " .. roundNumber(L_1581_[8], 3) .. " " .. roundNumber(L_1581_[9], 3) .. " " .. roundNumber(L_1581_[10], 3) .. " " .. roundNumber(L_1581_[11], 3) .. " " .. roundNumber(L_1581_[12], 3)
								if L_1569_.localplayer then
									local L_1582_ = L_1569_.team == "Terrorists" and L_1553_.SkinFolder.TFolder or L_1553_.SkinFolder.CTFolder;
									if L_1582_:FindFirstChild(L_1569_.gunName) then
										L_1569_.skinName = L_1582_[L_1569_.gunName].Value
									end
								else
									if L_24_.Skins:FindFirstChild(L_1569_.gunName) then
										if L_1580_forvar1.Name == "Handle" or L_1580_forvar1.Name == "Handle2" then
											for L_1583_forvar0, L_1584_forvar1 in next, L_24_.Skins[L_1569_.gunName]:GetChildren() do
												local L_1585_ = L_1584_forvar1:FindFirstChild("Handle") or L_1584_forvar1:FindFirstChild("Handle2")
												if L_1585_ and L_1585_.Value == L_1574_forvar1[L_1580_forvar1.Name].TextureID then
													L_1569_.skinName = L_1584_forvar1.Name
												end
											end
										end
									end
								end
							end
						end
					end;
					if L_1574_forvar1.ClassName == "Accessory" and L_1574_forvar1:FindFirstChild("Handle") and (L_1574_forvar1.Handle:FindFirstChild("Mesh") or L_1574_forvar1.Handle.ClassName == "MeshPart") then
						if L_1574_forvar1.Handle.ClassName == "UnionOperation" then
							continue;
						end;
						local L_1586_ = L_1574_forvar1.Handle.ClassName == "Part" and L_1574_forvar1.Handle.Mesh.MeshId or L_1574_forvar1.Handle.ClassName == "MeshPart" and L_1574_forvar1.Handle.MeshId or ""
						local L_1587_ = tostring(L_1574_forvar1.Handle.CFrame):split(", ")
						L_1569_.hatCF[L_1586_] = roundNumber(L_1587_[1], 3) .. " " .. roundNumber(L_1587_[2], 3) .. " " .. roundNumber(L_1587_[3], 3) .. " " .. roundNumber(L_1587_[4], 3) .. " " .. roundNumber(L_1587_[5], 3) .. " " .. roundNumber(L_1587_[6], 3) .. " " .. roundNumber(L_1587_[7], 3) .. " " .. roundNumber(L_1587_[8], 3) .. " " .. roundNumber(L_1587_[9], 3) .. " " .. roundNumber(L_1587_[10], 3) .. " " .. roundNumber(L_1587_[11], 3) .. " " .. roundNumber(L_1587_[12], 3)
					end
				end
			else
				L_1569_.ragdoll = {
					found = false,
					positions = {},
					hatPos = {}
				}
				if workspace.Debris:FindFirstChild(L_1569_.name) then
					L_1569_.ragdoll.found = true;
					for L_1588_forvar0, L_1589_forvar1 in next, workspace.Debris[L_1569_.name]:GetChildren() do
						if L_1589_forvar1:IsA("BasePart") then
							local L_1590_ = tostring(L_1589_forvar1.CFrame):split(", ")
							L_1569_.ragdoll.positions[L_1589_forvar1.Name] = roundNumber(L_1590_[1], 3) .. " " .. roundNumber(L_1590_[2], 3) .. " " .. roundNumber(L_1590_[3], 3) .. " " .. roundNumber(L_1590_[4], 3) .. " " .. roundNumber(L_1590_[5], 3) .. " " .. roundNumber(L_1590_[6], 3) .. " " .. roundNumber(L_1590_[7], 3) .. " " .. roundNumber(L_1590_[8], 3) .. " " .. roundNumber(L_1590_[9], 3) .. " " .. roundNumber(L_1590_[10], 3) .. " " .. roundNumber(L_1590_[11], 3) .. " " .. roundNumber(L_1590_[12], 3)
						end;
						if L_1589_forvar1.ClassName == "Accessory" then
							local L_1591_ = L_1589_forvar1.Handle.ClassName == "Part" and L_1589_forvar1.Handle.Mesh.MeshId or L_1589_forvar1.Handle.ClassName == "MeshPart" and L_1589_forvar1.Handle.MeshId or ""
							local L_1592_ = tostring(L_1589_forvar1.Handle.CFrame):split(", ")
							L_1569_.ragdoll.hatPos[L_1591_] = roundNumber(L_1592_[1], 3) .. " " .. roundNumber(L_1592_[2], 3) .. " " .. roundNumber(L_1592_[3], 3) .. " " .. roundNumber(L_1592_[4], 3) .. " " .. roundNumber(L_1592_[5], 3) .. " " .. roundNumber(L_1592_[6], 3) .. " " .. roundNumber(L_1592_[7], 3) .. " " .. roundNumber(L_1592_[8], 3) .. " " .. roundNumber(L_1592_[9], 3) .. " " .. roundNumber(L_1592_[10], 3) .. " " .. roundNumber(L_1592_[11], 3) .. " " .. roundNumber(L_1592_[12], 3)
						end
					end
				end
			end;
			L_1566_[L_1568_forvar1.Name] = L_1569_
		end;
		L_1566_.nades = {}
		L_1566_.nadePos = {}
		L_1566_.droppedWeapons = {}
		L_1566_.bombPlanted = workspace:FindFirstChild("C4") and true or false;
		L_1566_.roundInfo = {
			round = workspace.Status.Rounds.Value,
			T = workspace.Status.TWins.Value,
			CT = workspace.Status.CTWins.Value,
			time = L_1553_.PlayerGui.GUI.UpperInfo.Timer.Text,
			TWin = {
				vis = L_1553_.PlayerGui.GUI.TWin.Visible,
				mvpimage = L_1553_.PlayerGui.GUI.TWin.MVPPlayer.Image,
				mvptext = L_1553_.PlayerGui.GUI.TWin.TextLabel.Text,
				infotext = L_1553_.PlayerGui.GUI.TWin.Info.TextLabel.Text
			},
			CTWin = {
				vis = L_1553_.PlayerGui.GUI.CTWin.Visible,
				mvpimage = L_1553_.PlayerGui.GUI.CTWin.MVPPlayer.Image,
				mvptext = L_1553_.PlayerGui.GUI.CTWin.TextLabel.Text,
				infotext = L_1553_.PlayerGui.GUI.CTWin.Info.TextLabel.Text
			}
		}
		L_1566_.regen = {
			props = {},
			glasses = {},
			doors = {}
		}
		if L_1566_.bombPlanted then
			local L_1593_ = workspace.C4:GetModelCFrame()
			L_1566_.bombPos = roundNumber(L_1593_.X, 3) .. " " .. roundNumber(L_1593_.Y, 3) .. " " .. roundNumber(L_1593_.Z, 3)
		else
			L_1566_.bombPos = "0 -100 0"
		end;
		if workspace.Map.Regen:FindFirstChild("Props") then
			for L_1594_forvar0, L_1595_forvar1 in next, workspace.Map.Regen.Props:GetChildren() do
				local L_1596_ = L_1595_forvar1.Position;
				table.insert(L_1566_.regen.props, roundNumber(L_1596_.X, 3) .. " " .. roundNumber(L_1596_.Y, 3) .. " " .. roundNumber(L_1596_.Z, 3))
			end
		end;
		if workspace.Map.Regen:FindFirstChild("Glasses") then
			for L_1597_forvar0, L_1598_forvar1 in next, workspace.Map.Regen.Glasses:GetChildren() do
				local L_1599_ = L_1598_forvar1.Position;
				table.insert(L_1566_.regen.glasses, roundNumber(L_1599_.X, 3) .. " " .. roundNumber(L_1599_.Y, 3) .. " " .. roundNumber(L_1599_.Z, 3))
			end
		end;
		if workspace.Map.Regen:FindFirstChild("Doors") then
			for L_1600_forvar0, L_1601_forvar1 in pairs(workspace.Map.Regen.Doors:GetChildren()) do
				local L_1602_ = L_1601_forvar1.HumanoidRootPart.Position;
				local L_1603_ = L_1601_forvar1.HumanoidRootPart.Orientation;
				table.insert(L_1566_.regen.doors, roundNumber(L_1602_.X, 3) .. " " .. roundNumber(L_1602_.Y, 3) .. " " .. roundNumber(L_1602_.Z, 3) .. " " .. roundNumber(L_1603_.X, 3) .. " " .. roundNumber(L_1603_.Y, 3) .. " " .. roundNumber(L_1603_.Z, 3))
			end
		end;
		for L_1604_forvar0, L_1605_forvar1 in next, workspace.Debris:GetChildren() do
			pcall(function()
				if L_1605_forvar1.ClassName == "MeshPart" then
					for L_1606_forvar0, L_1607_forvar1 in next, L_1558_ do
						if L_1607_forvar1 == L_1605_forvar1.TextureID and L_1605_forvar1.Model.Handle2.Transparency ~= 1 then
							local L_1608_ = L_1605_forvar1.Position;
							local L_1609_ = L_1605_forvar1.Orientation;
							table.insert(L_1566_.nades, {
								nade = L_1606_forvar0,
								pos = roundNumber(L_1608_.X, 3) .. " " .. roundNumber(L_1608_.Y, 3) .. " " .. roundNumber(L_1608_.Z, 3) .. " " .. roundNumber(L_1609_.X, 3) .. " " .. roundNumber(L_1609_.Y, 3) .. " " .. roundNumber(L_1609_.Z, 3)
							})
						else
							continue;
						end
					end
				end
			end)
			if L_24_.Viewmodels:FindFirstChild("v_" .. L_1605_forvar1.Name) then
				local L_1610_ = {}
				for L_1611_forvar0, L_1612_forvar1 in next, L_1605_forvar1:GetChildren() do
					if L_1612_forvar1.ClassName == "MeshPart" then
						local L_1613_ = L_1612_forvar1.Position;
						local L_1614_ = L_1612_forvar1.Orientation;
						L_1610_[L_1612_forvar1.Name] = roundNumber(L_1613_.X, 3) .. " " .. roundNumber(L_1613_.Y, 3) .. " " .. roundNumber(L_1613_.Z, 3) .. " " .. roundNumber(L_1614_.X, 3) .. " " .. roundNumber(L_1614_.Y, 3) .. " " .. roundNumber(L_1614_.Z, 3)
					else
						continue;
					end
				end;
				table.insert(L_1566_.droppedWeapons, {
					name = L_1605_forvar1.Name,
					positions = L_1610_
				})
			end
		end;
		for L_1615_forvar0, L_1616_forvar1 in next, workspace["Ray_Ignore"]:GetDescendants() do
			if L_1616_forvar1:IsA("BasePart") and (L_1616_forvar1.Parent.Name == "Fires" or L_1616_forvar1.Parent.Name == "Smokes") then
				local L_1617_ = L_1616_forvar1.Position;
				local L_1618_ = L_1616_forvar1.Orientation;
				table.insert(L_1566_.nadePos, {
					type = L_1616_forvar1.Name,
					pos = roundNumber(L_1617_.X, 3) .. " " .. roundNumber(L_1617_.Y, 3) .. " " .. roundNumber(L_1617_.Z, 3) .. " " .. roundNumber(L_1618_.X, 3) .. " " .. roundNumber(L_1618_.Y, 3) .. " " .. roundNumber(L_1618_.Z, 3)
				})
			else
				continue;
			end
		end;
		L_1566_.killfeed = {}
		for L_1619_forvar0 = 1, 10 do
			local L_1620_ = L_1554_[L_1619_forvar0]
			if L_1620_:FindFirstChild("Weapon") and L_1620_:FindFirstChild("Assist") and L_1620_:FindFirstChild("Killer") and L_1620_:FindFirstChild("Weapon") and L_1620_:FindFirstChild("Victim") then
				if 10 > workspace.DistributedTime.Value - L_1620_.time.Value and L_1620_.Active.Value then
					local L_1621_ = {}
					local L_1622_ = L_1620_.Assist.TeamColor.Value;
					local L_1623_ = L_1620_.Killer.TeamColor.Value;
					local L_1624_ = L_1620_.Victim.TeamColor.Value;
					L_1621_.weapon = L_1620_.Weapon.Value;
					L_1621_.assist = L_1620_.Assist.Value;
					L_1621_.assistcolor = {
						L_1622_.R,
						L_1622_.G,
						L_1622_.B
					}
					L_1621_.killer = L_1620_.Killer.Value;
					L_1621_.killercolor = {
						L_1623_.R,
						L_1623_.G,
						L_1623_.B
					}
					L_1621_.victim = L_1620_.Victim.Value;
					L_1621_.victimcolor = {
						L_1624_.R,
						L_1624_.G,
						L_1624_.B
					}
					L_1621_.headshot = L_1620_.Weapon.Headshot.Value == "true"
					L_1621_.wallbang = L_1620_.Weapon.Wallbang.Value == "true"
					table.insert(L_1566_.killfeed, L_1621_)
				end
			end
		end;
		L_1566_["delay"] = tick() - L_1565_;
		wait()
		table.insert(L_1555_, L_1566_)
	end;
	local L_1559_ = nil;
	local L_1560_ = false;
	local L_1561_ = workspace.Map.Origin;
	local L_1562_ = ""
	local L_1563_ = ""
	local L_1564_ = L_128_:AddSection"Demo Recorder"
	L_1564_:AddBox({
		text = "Demo Name",
		flag = "demoName",
		skipflag = true
	})
	L_1564_:AddButton({
		text = "Toggle Recording",
		callback = function()
			if library_flags["demoName"] == "" and not L_1560_ then
				return
			end;
			L_1560_ = not L_1560_;
			if L_1560_ then
				L_1562_ = workspace.Map.Origin.Value;
				L_1559_.main.Text = "Status: Recording...."
				L_1555_ = {}
				L_1563_ = library_flags["demoName"]
				while L_1560_ do
					addTick()
				end
			else
				if isfolder("cipex_configs/demos/" .. L_1563_) then
					delfolder("cipex_configs/demos/" .. L_1563_)
					makefolder("cipex_configs/demos/" .. L_1563_)
				else
					makefolder("cipex_configs/demos/" .. L_1563_)
				end;
				for L_1627_forvar0, L_1628_forvar1 in next, L_1555_ do
					if L_1627_forvar0 % 50 == 0 then
						wait()
					end;
					local L_1629_ = game:service("HttpService"):JSONEncode(L_1628_forvar1)
					writefile("cipex_configs/demos/" .. L_1563_ .. "/" .. tostring(L_1627_forvar0) .. ".tick", L_1629_)
					L_1559_.main.Text = "Status: Creating " .. tostring(L_1627_forvar0) .. ".tick"
				end;
				midpos = Vector3.new(0, 0, 0)
				count = 0;
				for L_1630_forvar0, L_1631_forvar1 in next, workspace.Map:GetDescendants() do
					pcall(function()
						if not L_1631_forvar1:IsDescendantOf(workspace.Map.Regen) then
							midpos = midpos + L_1631_forvar1.Position;
							count = count + 1
						end
					end)
				end;
				midpos = midpos / count;
				local L_1625_ = {
					mapName = L_1562_,
					sky = false,
					sides = {}
				}
				local L_1626_ = game:GetService("Lighting"):FindFirstChildOfClass("Sky")
				if L_1626_ then
					L_1625_.sky = true;
					L_1625_.sides["SkyboxBk"] = L_1626_.SkyboxBk;
					L_1625_.sides["SkyboxDn"] = L_1626_.SkyboxDn;
					L_1625_.sides["SkyboxFt"] = L_1626_.SkyboxFt;
					L_1625_.sides["SkyboxLf"] = L_1626_.SkyboxLf;
					L_1625_.sides["SkyboxRt"] = L_1626_.SkyboxRt;
					L_1625_.sides["SkyboxUp"] = L_1626_.SkyboxUp
				end;
				writefile("cipex_configs/demos/" .. L_1563_ .. "/ver.tick", "1")
				writefile("cipex_configs/demos/" .. L_1563_ .. "/map.tick", game:service("HttpService"):JSONEncode(L_1625_))
			end;
			L_1559_.main.Text = "Status: Not recording"
		end
	})
	L_1564_:AddButton({
		text = "Copy Demo Viewer Link",
		callback = function()
			setclipboard("https://roblox.com/games/8065776277/")
		end
	})
	L_1559_ = L_1564_:AddLabel("Status: Not recording")
	L_1561_:GetPropertyChangedSignal("Value"):connect(function(L_1632_arg0)
		if L_1632_arg0 ~= workspace.Map.Origin.Value then
			L_1560_ = false
		end
	end)
end;
ScriptTab = L_5_:AddTab("Scripts")
ScriptColumn = ScriptTab:AddColumn()
ScriptColumn1 = ScriptTab:AddColumn()
local L_140_ = {}
ScriptSection = ScriptColumn:AddSection"Scripts"
ScriptSection:AddList({
	text = "Script",
	flag = "scriptlist",
	skipflag = true,
	value = "",
	values = {
		"script"
	}
})
ScriptSection:AddButton({
	text = "Run Script",
	callback = function()
		for L_1633_forvar0, L_1634_forvar1 in next, listfiles("cipex_configs/scripts") do
			if not table.find(L_140_, L_1634_forvar1) and L_1634_forvar1:split(".")[1] == "cipex_configs/scripts\\" .. library_flags["scriptlist"] then
				if string.find(L_1634_forvar1:split(".")[2], "lua") then
					table.insert(L_140_, L_1634_forvar1)
					loadstring(readfile(L_1634_forvar1))()
				end
			end
		end
	end
})
L_4_.mainFrame.topname.TextButton.MouseButton1Click:connect(function()
	L_4_.mainFrame.Visible = false
end)
L_5_:Init()
spawn(function()
	wait(5)
	if not isfolder("cipex_configs/autoexec") then
		makefolder("cipex_configs/autoexec")
	end;
	for L_1635_forvar0, L_1636_forvar1 in next, listfiles("cipex_configs/autoexec") do
		if string.find(L_1636_forvar1:split(".")[2], "lua") then
			pcall(function()
				spawn(function()
					loadstring(readfile(L_1636_forvar1))()
				end)
			end)
		end
	end
end)
corehusband = Instance.new("ScreenGui", game:service("CoreGui"))
logholder = game:GetObjects("rbxassetid://6502006065")[1]
logholder.log.main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
logholder.log.main.text.TextColor3 = Color3.new(0.8, 0.8, 0.8)
logholder.Parent = corehusband;
logcount = 0;
logDebounce = false;
function hitlog(L_1637_arg0, L_1638_arg1, L_1639_arg2)
	L_1638_arg1 = string.find(L_1638_arg1, "Head") and "Head" or L_1638_arg1;
	if logDebounce then
		return
	end;
	logDebounce = true;
	spawn(function()
		wait()
		logDebounce = false
	end)
	logcount = logcount + 1;
	if logcount >= 7 then
		for L_1643_forvar0, L_1644_forvar1 in next, logholder:GetChildren() do
			if L_1644_forvar1.Name == "logged" then
				L_1644_forvar1:Destroy()
				logcount = logcount - 1;
				break
			end
		end
	end;
	local L_1640_ = logholder.log:Clone()
	L_1640_.Parent = logholder;
	L_1640_.Visible = true;
	L_1640_.Name = "logged"
	L_1640_.BackgroundColor3 = library_flags["Menu Accent Color"]
	L_1640_.main.text.Text = "Hit " .. L_1637_arg0.Name .. " in the " .. tostring(L_1638_arg1) .. " with a " .. tostring(L_1639_arg2)
	local L_1641_ = game:service("TweenService"):Create(L_1640_.main, TweenInfo.new(0.75), {
		Size = UDim2.new(0, L_1640_.main.text.TextBounds.X + 7, 0, 25)
	})
	L_1641_:Play()
	L_1641_.Completed:Wait()
	wait(2)
	local L_1642_ = game:service("TweenService"):Create(L_1640_.main, TweenInfo.new(1), {
		Size = UDim2.new(0, 0, 0, 25)
	})
	L_1642_:Play()
	L_1642_.Completed:Wait()
	L_1640_:Destroy()
	logcount = logcount - 1
end;
getgenv().hitlog = hitlog;
L_5_.main.Modal = true;
auto.main.Visible = true;
scout.main.Visible = false;
awp.main.Visible = false;
rifles.main.Visible = false;
heavyp.main.Visible = false;
pistols.main.Visible = false;
other.main.Visible = false;
if not isfile("cipex_configs/chatspam.txt") then
	writefile("cipex_configs/chatspam.txt", "Message1\nMessage2\nMessage3\nMessage4\nMessage5")
end;
for L_1645_forvar0, L_1646_forvar1 in next, L_30_:GetPlayers() do
	L_5_:AddConnection(L_1646_forvar1.CharacterAdded, function(L_1647_arg0)
		wait(0.25)
		if L_1646_forvar1 == L_32_ then
			if library_flags["autoBuyEnabled"] then
				wait(0.5)
				local L_1648_, L_1649_, L_1650_, L_1651_, L_1652_, L_1653_ = false, false, false, false, false, false;
				if not L_32_.PlayerGui.GUI.Inventory.Item1.Visible then
					buyWeapon(library_flags["Primary Weapon"])
					L_1653_ = true
				end;
				if string.find(string.lower(L_32_.PlayerGui.GUI.Inventory.Item2.ToolName.Text), "glock") or string.find(string.lower(L_32_.PlayerGui.GUI.Inventory.Item2.ToolName.Text), "usp") or string.find(string.lower(L_32_.PlayerGui.GUI.Inventory.Item2.ToolName.Text), "px") then
					buyWeapon(library_flags["Secondary Weapon"])
					L_1653_ = true
				end;
				if L_32_:FindFirstChild("Kevlar") and L_1646_forvar1.Kevlar.Value < 100 then
					buyWeapon(library_flags["Armor"])
					L_1653_ = true
				end;
				local L_1654_ = 0;
				for L_1655_forvar0 = 4, 6 do
					local L_1656_ = L_32_.PlayerGui.GUI.Inventory["Item" .. tostring(L_1655_forvar0)]
					local L_1657_ = L_1656_.ToolName.Text;
					if L_1656_.Visible and L_1657_ == "Molotov" or L_1656_.Visible and L_1657_ == "Incendiary Grenade" then
						L_1650_ = true;
						L_1654_ = L_1654_ + 1
					elseif L_1656_.Visible and L_1657_ == "HE Grenade" then
						L_1649_ = true;
						L_1654_ = L_1654_ + 1
					elseif L_1656_.Visible and L_1657_ == "Decoy Grenade" then
						L_1652_ = true;
						L_1654_ = L_1654_ + 1
					elseif L_1656_.Visible and L_1657_ == "Smoke Grenade" then
						L_1651_ = true;
						L_1654_ = L_1654_ + 1
					elseif L_1656_.Visible and L_1657_ == "Flashbang" then
						L_1648_ = true;
						L_1654_ = L_1654_ + 1
					end
				end;
				for L_1658_forvar0, L_1659_forvar1 in next, library_flags["Grenades"] do
					if L_1659_forvar1 and L_1654_ < 3 then
						if L_1658_forvar0 == "Fire Grenade" and not L_1650_ or L_1658_forvar0 == "HE Grenade" and not L_1649_ or L_1658_forvar0 == "Decoy Grenade" and not L_1652_ or L_1658_forvar0 == "Smoke Grenade" and not L_1651_ or L_1658_forvar0 == "Flashbang" and not L_1648_ then
							buyWeapon(L_1658_forvar0)
							L_1654_ = L_1654_ + 1;
							L_1653_ = true
						end
					end
				end;
				wait()
				if L_1653_ then
					L_36_.Back()
				end
			end
		end;
		wait(0.75)
		L_49_ = true;
		L_5_.options["Self Chams"].callback()
		if library_flags["Backtrack"] and L_1646_forvar1 ~= L_32_ then
			createPlr(L_1646_forvar1)
		end;
		if library_flags["Chams"] and L_1646_forvar1 ~= L_32_ then
			chamsPlr(L_1646_forvar1)
			cbCHAMS()
		end
	end)
end;
L_5_:AddConnection(L_30_.PlayerAdded, function(L_1660_arg0)
	L_5_:AddConnection(L_1660_arg0.CharacterAdded, function(L_1661_arg0)
		wait(1)
		L_49_ = true;
		if library_flags["Backtrack"] and L_1660_arg0 ~= L_32_ then
			createPlr(L_1660_arg0)
		end;
		if library_flags["Chams"] and L_1660_arg0 ~= L_32_ then
			chamsPlr(L_1660_arg0)
			cbCHAMS()
		end
	end)
end)
local L_141_, L_142_ = 0, 90;
local L_143_ = L_36_.firebullet;
L_36_.firebullet = function(L_1662_arg0, ...)
	if not L_5_.open or getgenv().target then
		local L_1663_ = false;
		if getgenv().target and not L_57_.melee then
			L_143_(L_1662_arg0, ...)
			L_1663_ = true
		elseif not getgenv().target and not L_1663_ then
			L_143_(L_1662_arg0, ...)
			L_1663_ = true
		end;
		if library_flags["Third Person"] then
			if L_57_.alive and not L_57_.melee and L_57_.ammo > 0 and L_57_.name ~= "M4A1" and L_57_.Name ~= "Scout" then
				playAudio(L_57_.name)
			end
		end
	end
end;
L_5_:AddConnection(L_34_.ChildAdded, function(L_1664_arg0)
	updateViewModelVisuals()
end)
L_5_:AddConnection(workspace.Debris.ChildAdded, function(L_1665_arg0)
	local L_1666_ = false;
	if L_24_.Weapons:FindFirstChild(L_1665_arg0.Name) and not L_1665_arg0:FindFirstChild("Folder") then
		f = Instance.new("Folder", L_1665_arg0)
		createEsp("weapon", L_1665_arg0)
	end;
	for L_1667_forvar0 = 1, 10 do
		wait()
		if L_1665_arg0:FindFirstChild("ball") then
			L_1666_ = true
		end
	end;
	if L_1666_ and library_flags["Grenade Area"] then
		local L_1668_ = Instance.new("Part", L_1665_arg0)
		L_1668_.Color = library_flags["areaColor"]
		L_1668_.Size = Vector3.new(12, 12, 12)
		L_1668_.Shape = "Ball"
		L_1668_.Material = "ForceField"
		L_1668_.CanCollide = false;
		L_1668_.Anchored = true;
		repeat
			L_28_.RenderStepped:Wait()
			if L_1668_ and L_1665_arg0 and L_1665_arg0:FindFirstChild("Handle2") then
				L_1668_.Position = L_1665_arg0.Handle2.Position
			else
				break
			end
		until L_1665_arg0:FindFirstChild("Explode1Playing")
		L_1668_:Destroy()
	end
end)
for L_1669_forvar0, L_1670_forvar1 in next, game.Teams:GetChildren() do
	L_1670_forvar1.PlayerAdded:connect(function(L_1671_arg0)
		if L_1671_arg0 == L_32_ then
			wait(0.5)
			for L_1672_forvar0, L_1673_forvar1 in next, L_30_:GetPlayers() do
				if L_1673_forvar1.Character then
					for L_1674_forvar0, L_1675_forvar1 in next, L_1673_forvar1.Character:GetDescendants() do
						if L_1675_forvar1:IsA"CylinderHandleAdornment" or L_1675_forvar1:IsA"BoxHandleAdornment" then
							L_1675_forvar1:Destroy()
						end
					end
				end
			end;
			wait(1)
			for L_1676_forvar0, L_1677_forvar1 in next, L_30_:GetPlayers() do
				if L_1677_forvar1.Character then
					chamsPlr(L_1677_forvar1)
				end
			end
		end
	end)
end;
L_32_.Status.Kills.Changed:Connect(function(L_1678_arg0)
	if L_1678_arg0 ~= 0 then
		onKill:Fire()
	end
end)
draggable(L_83_)
draggable(L_87_)
draggable(L_116_)
draggable(L_4_.mainFrame)
spawn(function()
	while wait(3.5) do
		updateSkybox()
	end
end)
if isfile("cipex_configs/temp.tmp") then
	L_5_:LoadConfig(readfile("cipex_configs/temp.tmp"))
	delfile("cipex_configs/temp.tmp")
end;
L_32_.OnTeleport:Connect(function(L_1679_arg0)
end)
L_30_.PlayerRemoving:Connect(function(L_1680_arg0)
	if L_1680_arg0 == L_32_ then
		for L_1681_forvar0, L_1682_forvar1 in next, listfiles("cipex_configs/tempimages") do
			delfile(L_1682_forvar1)
		end
	end
end)
knifeDebounce = false;
invissed = false;
chatspamDebounce = 0;
textbounded = false;
tpdebounce = false;
reloading = false;
reloaddebounce = false;
strafing = false;
oldLook = Vector3.new()
oldAmbient = L_29_.Ambient;
oldOutdoorAmbient = L_29_.OutdoorAmbient;
testpart = Instance.new("Part", workspace)
testpart.Anchored = true;
testpart.Size = Vector3.new(1, 1, 1)
testpart.CanCollide = false;
L_25_.InputChanged:Connect(function(L_1683_arg0)
	if not library_flags["Override Game Movement"] then
		return
	end;
	if not L_57_.alive then
		return
	end;
	if L_1683_arg0.UserInputType == Enum.UserInputType.MouseMovement then
		local L_1684_ = L_32_.Character.Humanoid:GetState()
		if L_1684_ == Enum.HumanoidStateType.Freefall or L_1684_ == Enum.HumanoidStateType.Jumping then
		else
			return
		end;
		strafing = true;
		if not L_25_:IsKeyDown(Enum.KeyCode.W) and not L_25_:IsKeyDown(Enum.KeyCode.S) then
			if L_1683_arg0.Delta.X < 0 then
				if L_1683_arg0.Delta.X > -11 and L_25_:IsKeyDown(Enum.KeyCode.A) then
					local L_1685_ = math.abs(L_1683_arg0.Delta.X) / 25 * library_flags["Air Acceleration"]
					L_32_.Character.Humanoid.WalkSpeed = L_32_.Character.Humanoid.WalkSpeed + L_1685_
				elseif L_25_:IsKeyDown(Enum.KeyCode.A) then
					local L_1686_ = - (math.abs(L_1683_arg0.Delta.X) / 7.5)
					L_32_.Character.Humanoid.WalkSpeed = L_32_.Character.Humanoid.WalkSpeed + L_1686_
				end
			elseif L_1683_arg0.Delta.X > 0 then
				if L_1683_arg0.Delta.X < 11 and L_25_:IsKeyDown(Enum.KeyCode.D) then
					local L_1687_ = math.abs(L_1683_arg0.Delta.X) / 25 * library_flags["Air Acceleration"]
					L_32_.Character.Humanoid.WalkSpeed = L_32_.Character.Humanoid.WalkSpeed + L_1687_
				elseif L_25_:IsKeyDown(Enum.KeyCode.D) then
					local L_1688_ = - (math.abs(L_1683_arg0.Delta.X) / 7.5)
					L_32_.Character.Humanoid.WalkSpeed = L_32_.Character.Humanoid.WalkSpeed + L_1688_
				end
			end
		end;
		L_32_.Character.Humanoid.WalkSpeed = math.clamp(L_32_.Character.Humanoid.WalkSpeed, 0, 120)
		spawn(function()
			strafing = false
		end)
	end
end)
L_28_.Stepped:Connect(function()
	if alive() then
		local L_1689_, L_1690_ = L_32_.Character, not noclipping;
		L_1689_.Head.CanCollide = L_1690_;
		L_1689_.UpperTorso.CanCollide = L_1690_;
		L_1689_.LowerTorso.CanCollide = L_1690_;
		L_1689_.HumanoidRootPart.CanCollide = L_1690_
	end
end)
pcall(function()
	L_5_.base.TextLabel.Visible = false
end)
pingIntance = game.Stats.PerformanceStats.Ping;
noscroll = false;
oldmovedown = L_36_.moveDown;
oldmoveup = L_36_.moveUp;
oldmakevisible = L_36_.makeVisible;
L_28_.RenderStepped:Connect(function(L_1691_arg0)
	L_59_ = L_1691_arg0;
	L_58_ = pingIntance:GetValue()
	if # L_30_:GetPlayers() ~= countESP() then
		for L_1692_forvar0, L_1693_forvar1 in next, L_30_:GetPlayers() do
			if not L_56_[L_1693_forvar1.Name] then
				createEsp("plr", L_1693_forvar1)
			end
		end
	end;
	if L_5_.open and not noscroll then
		noscroll = true;
		L_36_.moveDown = function()
		end;
		L_36_.moveUp = function()
		end
	elseif not L_5_.open and noscroll then
		noscroll = false;
		L_36_.moveDown = oldmovedown;
		L_36_.moveUp = oldmoveup
	end;
	if library_flags["espEnabled"] then
		invissed = false;
		for L_1694_forvar0, L_1695_forvar1 in next, L_56_ do
			local L_1696_ = L_1695_forvar1.type == "plr"
			if L_1696_ and not L_30_:FindFirstChild(L_1694_forvar0) or not L_1696_ and L_1695_forvar1.object == nil then
				L_1695_forvar1.invis()
				L_1695_forvar1.remove()
				L_56_[L_1694_forvar0] = nil;
				continue;
			end;
			if L_1695_forvar1.type == "weapon" and not library_flags["Dropped Weapon ESP"] then
				L_1695_forvar1.text.Visible = false;
				continue;
			end;
			if L_1696_ and teamCheck(L_30_[L_1694_forvar0], L_39_) and L_30_[L_1694_forvar0].Character and L_30_[L_1694_forvar0].Character:FindFirstChild("Humanoid") and L_30_[L_1694_forvar0].Character:FindFirstChild("HumanoidRootPart") and L_30_[L_1694_forvar0].Character:FindFirstChild("Head") or not L_1696_ and L_1695_forvar1.object then
				if not alive() or L_1696_ and math.abs(L_30_[L_1694_forvar0].Character.Head.Position.Y - L_32_.Character.Head.Position.Y) >= 30 then
					L_1695_forvar1.invis()
					continue;
				end;
				local L_1697_;
				local L_1698_ = L_48_;
				local L_1699_ = L_48_;
				local L_1700_;
				if L_1696_ then
					L_1697_ = L_30_[L_1694_forvar0]
					local L_1712_ = L_1697_.Character.HumanoidRootPart.Position;
					L_1698_ = Vector3.new(L_1712_.x, L_1712_.y + 2.45, L_1712_.z)
					L_1699_ = Vector3.new(L_1712_.x, L_1712_.y - 3.1, L_1712_.z)
					L_1700_ = math.clamp(L_1697_.Character.Humanoid.Health, 0, 100)
				elseif L_1695_forvar1.type == "weapon" and L_1695_forvar1.object and L_1695_forvar1.object then
					L_1698_ = L_1695_forvar1.object.Position;
					L_1699_ = L_1695_forvar1.object.Position
				end;
				local L_1701_, L_1702_ = L_34_:WorldToViewportPoint(L_1698_)
				local L_1703_, L_1704_ = L_34_:WorldToViewportPoint(L_1699_)
				if L_1702_ or L_1704_ then
				else
					L_1695_forvar1.invis()
					continue;
				end;
				local L_1705_ = (L_1703_.y - L_1701_.y) / 2;
				local L_1706_ = true;
				if library_flags["Visible Only ESP"] and L_32_.Character or not L_1696_ and L_1695_forvar1.object then
					L_1706_ = false;
					local L_1713_ = L_1696_ and L_1697_.Character.Head.Position or L_1695_forvar1.object.Position;
					local L_1714_ = Ray.new(L_34_.CFrame.p, (L_1713_ - L_34_.CFrame.p).unit * 500)
					local L_1715_, L_1716_ = workspace:FindPartOnRayWithIgnoreList(L_1714_, {
						L_34_,
						L_32_.Character,
						workspace.Ray_Ignore,
						workspace.Map:WaitForChild("Clips"),
						workspace.Map:WaitForChild("SpawnPoints")
					})
					if L_1696_ and L_1697_.Character then
						L_1706_ = L_1715_:IsDescendantOf(L_1697_.Character)
					elseif L_1715_ then
						L_1706_ = L_1715_ == L_1695_forvar1.object
					end
				end;
				if L_57_.alive and L_1697_ then
					if math.abs(L_1697_.Character.HumanoidRootPart.Position.Y - L_32_.Character.HumanoidRootPart.Position.Y) > 45 then
						L_1706_ = false
					end
				end;
				if not L_1706_ then
					L_1695_forvar1.invis()
					continue;
				end;
				local L_1707_ = library_flags["Font"]
				local L_1708_ = ""
				if L_1696_ then
					if L_1697_.Character:FindFirstChild("EquippedTool") then
						L_1708_ = tostring(L_1697_.Character.EquippedTool.Value)
					end;
					local L_1717_ = library_flags["Box ESP"]
					local L_1718_ = library_flags["Health Bar"]
					L_1695_forvar1.text.Visible = library_flags["Name ESP"]
					L_1695_forvar1.weapon.Text = L_1708_;
					L_1695_forvar1.weapon.Visible = library_flags["Weapon ESP"]
					L_1695_forvar1.tracer.Visible = library_flags["Tracers"]
					L_1695_forvar1.boxoutline.Visible = L_1717_ and library_flags["Outline"] and true or false;
					L_1695_forvar1.box.Visible = L_1717_;
					L_1695_forvar1.healthb.Visible = L_1718_;
					L_1695_forvar1.healthbo.Visible = L_1718_;
					L_1695_forvar1.tracer.To = L_5_.round(Vector2.new(L_1703_.X, L_1703_.Y))
					if L_1718_ then
						L_1695_forvar1.healthb.Position = L_5_.round(Vector2.new(L_1701_.X - L_1705_ / 2 - 4, L_1703_.Y - 1))
						L_1695_forvar1.healthb.Size = L_5_.round(Vector2.new(2, - L_1700_ / 100 * (L_1703_.Y - L_1701_.Y) + 2))
						L_1695_forvar1.healthbo.Position = L_5_.round(Vector2.new(L_1701_.X - L_1705_ / 2 - 4, L_1703_.Y - 1))
						L_1695_forvar1.healthbo.Size = L_5_.round(Vector2.new(2, - (L_1703_.Y - L_1701_.Y) + 2))
					end;
					if L_1717_ then
						L_1695_forvar1.boxoutline.Size = L_5_.round(Vector2.new(L_1705_, L_1703_.y - L_1701_.Y))
						L_1695_forvar1.boxoutline.Position = L_5_.round(Vector2.new(L_1701_.X - L_1705_ / 2, L_1701_.Y))
						L_1695_forvar1.box.Position = L_5_.round(Vector2.new(L_1701_.X - L_1705_ / 2, L_1701_.Y))
						L_1695_forvar1.box.Size = L_5_.round(Vector2.new(L_1705_, L_1703_.y - L_1701_.Y))
					end;
					if L_52_[L_1697_.Name] and L_52_[L_1697_.Name].TargetESP then
						L_1695_forvar1.box.Color = library_flags["Target Box Color"]
						L_1695_forvar1.text.Color = library_flags["Target Name Color"]
						L_1695_forvar1.weapon.Color = library_flags["Target Weapon Color"]
						L_1695_forvar1.tracer.Color = library_flags["Target Tracer Color"]
						L_1695_forvar1.healthb.Color = library_flags["Target Health Bar Color"]
					else
						L_1695_forvar1.box.Color = library_flags["boxESPcolor"]
						L_1695_forvar1.text.Color = library_flags["nameESPcolor"]
						L_1695_forvar1.weapon.Color = library_flags["weaponESPcolor"]
						L_1695_forvar1.tracer.Color = library_flags["tracersColor"]
						L_1695_forvar1.healthb.Color = library_flags["healthBar"]
					end
				else
					L_1695_forvar1.text.Visible = library_flags["Dropped Weapon ESP"]
					L_1695_forvar1.text.Color = library_flags["dropESPcolor"]
				end;
				local L_1709_ = L_1696_ and L_1694_forvar0 or L_1695_forvar1.object.Name;
				local L_1710_ = library_flags["Outline"]
				L_1695_forvar1.text.Position = Vector2.new(L_1701_.X, L_1701_.Y - 15)
				L_1695_forvar1.text.Font = fonts[L_1707_]
				L_1695_forvar1.text.Outline = L_1710_;
				L_1695_forvar1.weapon.Position = L_5_.round(Vector2.new(L_1701_.X, L_1703_.Y + 3))
				L_1695_forvar1.weapon.Outline = L_1710_;
				L_1695_forvar1.weapon.Font = fonts[L_1707_]
				local L_1711_ = library_flags["Text Mode"]
				if L_1711_ == "Upper" then
					L_1695_forvar1.text.Text = string.upper(L_1709_)
					L_1695_forvar1.weapon.Text = string.upper(L_1708_)
				end;
				if L_1711_ == "Lower" then
					L_1695_forvar1.text.Text = string.lower(L_1709_)
					L_1695_forvar1.weapon.Text = string.lower(L_1708_)
				end;
				if L_1711_ == "Normal" then
					L_1695_forvar1.text.Text = L_1709_
				end
			else
				L_1695_forvar1.invis()
			end
		end
	else
		if not invissed then
			invissed = true;
			for L_1719_forvar0, L_1720_forvar1 in next, L_56_ do
				L_1720_forvar1.invis()
			end
		end
	end;
	if library_flags["Chat Spammer"] then
		chatspamDebounce = chatspamDebounce + 1;
		if chatspamDebounce == 175 then
			chatspamDebounce = 0;
			local L_1721_ = library_flags["chatMode"]
			if L_1721_ == "Custom" and isfile("cipex_configs/chatspam.txt") then
				local L_1722_ = readfile("cipex_configs/chatspam.txt")
				local L_1723_ = string.split(L_1722_, "\n")
				if # L_1723_ >= 1 then
					L_55_ = L_55_ + 1;
					L_55_ = L_55_ >= # L_1723_ + 1 and 1 or L_55_;
					chat(L_1723_[L_55_])
				end
			else
				L_55_ = L_55_ + 1;
				L_55_ = L_55_ >= # L_119_[L_1721_] + 1 and 1 or L_55_;
				chat(L_119_[L_1721_][L_55_])
			end
		end
	end;
	for L_1724_forvar0, L_1725_forvar1 in next, L_30_:GetPlayers() do
		if alive(L_1725_forvar1) then
			getgenv().oldPositions[L_1725_forvar1.Name] = L_1725_forvar1.Character.HumanoidRootPart.Position
		end;
		if library_flags["Kill All"] or L_52_[L_1725_forvar1.Name] and L_52_[L_1725_forvar1.Name].LoopKill then
			if teamCheck(L_1725_forvar1, L_37_) and L_1725_forvar1.Character and L_1725_forvar1.Character:FindFirstChild("Head") and L_32_.Character and L_32_.Character:FindFirstChild("EquippedTool") then
				if L_1725_forvar1.Character:FindFirstChild("Humanoid") and L_1725_forvar1.Character.Humanoid.Health > 0 then
					fireHitpart(L_1725_forvar1.Character.Head, 5, false, true)
				end
			end
		end;
		if library_flags["Resolve Angles"] then
			if teamCheck(L_1725_forvar1, L_37_) and L_1725_forvar1.Character and L_1725_forvar1.Character:FindFirstChild("UpperTorso") and L_1725_forvar1.Character.UpperTorso:FindFirstChild("Waist") then
				L_1725_forvar1.Character.UpperTorso.Waist.C0 = CFrame.Angles(0, 0, 0)
			end
		end
	end;
	if library_flags["Grenade Area"] and workspace["Ray_Ignore"]:FindFirstChild("Fires") then
		for L_1726_forvar0, L_1727_forvar1 in next, workspace["Ray_Ignore"].Fires:GetChildren() do
			if not L_1727_forvar1:FindFirstChild("Part") then
				local L_1728_ = library_flags["areaColor"]
				local L_1729_ = Instance.new("Part", L_1727_forvar1)
				L_1729_.Position = L_1727_forvar1.Position;
				L_1729_.Color = Color3.fromRGB(L_1728_.R / 4, L_1728_.G / 4, L_1728_.B / 4)
				L_1729_.Size = Vector3.new(0.15, 1, 1)
				L_1729_.Shape = "Cylinder"
				L_1729_.Material = "Neon"
				L_1729_.Transparency = 0.5;
				L_1729_.Orientation = Vector3.new(0, 0, 90)
				L_1729_.CanCollide = false;
				L_1729_.Anchored = true;
				local L_1730_ = L_27_:Create(L_1729_, TweenInfo.new(1.5), {
					Size = Vector3.new(0.15, 24, 24),
					Color = L_1728_
				})
				L_1730_:Play()
			end
		end
	end;
	L_57_ = getWeaponInfo()
	if library_flags["Bunny Hop"] and L_57_.alive and not L_54_ then
		local L_1731_ = L_32_.Character and L_32_.Character:FindFirstChild("HumanoidRootPart")
		local L_1732_ = L_48_;
		local L_1733_;
		local L_1734_;
		if L_1731_ then
			L_1733_ = library_flags["Anti Aim"] and L_34_.CFrame.LookVector or L_32_.Character.HumanoidRootPart.CFrame.LookVector;
			L_1734_ = library_flags["Anti Aim"] and L_34_.CFrame.p or L_1731_.Position
		end;
		if library_flags["Override Game Movement"] and not edgebugDebounce then
			return
		end;
		if not L_25_:GetFocusedTextBox() and L_1731_ and L_25_:IsKeyDown(Enum.KeyCode.Space) and L_32_.Character:FindFirstChild("Humanoid") then
			L_53_ = true;
			if library_flags["Bunny Hop Method"] == "CFrame" or library_flags["Bunny Hop Method"] == "Velocity" then
				L_1732_ = L_25_:IsKeyDown(Enum.KeyCode.W) and L_1732_ + L_1733_ or L_1732_;
				L_1732_ = L_25_:IsKeyDown(Enum.KeyCode.S) and L_1732_ - L_1733_ or L_1732_;
				L_1732_ = L_25_:IsKeyDown(Enum.KeyCode.D) and L_1732_ + Vector3.new(- L_1733_.Z, 0, L_1733_.X) or L_1732_;
				L_1732_ = L_25_:IsKeyDown(Enum.KeyCode.A) and L_1732_ + Vector3.new(L_1733_.Z, 0, - L_1733_.X) or L_1732_;
				local L_1735_ = library_flags["Speed Value"]
				if library_flags["Bunny Hop Method"] == "CFrame" and L_1732_ ~= L_48_ then
					L_1735_ = L_1735_ / 300;
					L_1732_ = L_1732_.Unit;
					L_32_.Character.HumanoidRootPart.CFrame = L_32_.Character.HumanoidRootPart.CFrame + Vector3.new(L_1732_.X * L_1735_, 0, L_1732_.Z * L_1735_)
					L_32_.Character.Humanoid.Jump = true;
					return
				end;
				local L_1736_ = L_25_:IsKeyDown(Enum.KeyCode.S) or L_25_:IsKeyDown(Enum.KeyCode.D) or L_25_:IsKeyDown(Enum.KeyCode.A)
				if L_1732_.Unit.X == L_1732_.Unit.X and not library_flags["Auto Strafe"] or L_1732_.Unit.X == L_1732_.Unit.X and library_flags["Auto Strafe"] and L_1736_ then
					L_1732_ = L_1732_.Unit;
					L_1731_.Velocity = Vector3.new(L_1732_.X * L_1735_, L_1731_.Velocity.Y, L_1732_.Z * L_1735_)
				elseif library_flags["Auto Strafe"] and not L_25_:IsKeyDown(Enum.KeyCode.S) and not L_25_:IsKeyDown(Enum.KeyCode.D) and not L_25_:IsKeyDown(Enum.KeyCode.A) then
					L_1732_ = L_1732_ + L_1733_;
					L_1732_ = L_1732_.Unit;
					L_1731_.Velocity = Vector3.new(L_1732_.X * L_1735_, L_1731_.Velocity.Y, L_1732_.Z * L_1735_)
					L_32_.Character.Humanoid:MoveTo(L_1734_ + L_1733_)
				end;
				last = L_1731_.Velocity
			end;
			L_32_.Character.Humanoid.Jump = true
		else
			if L_53_ and library_flags["Maintain Velocity"] then
				local L_1737_ = 0;
				L_54_ = true;
				repeat
					wait()
					L_1737_ = L_1737_ + 1;
					local L_1738_ = L_32_.Character and L_32_.Character:FindFirstChild("HumanoidRootPart")
					if L_1738_ then
						L_1738_.Velocity = Vector3.new(last.X, L_1738_.Velocity.Y, last.Z)
					end
				until not L_57_.alive or L_25_:IsKeyDown(Enum.KeyCode.Space) or L_32_.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall or L_32_.Character.Humanoid:GetState() == Enum.HumanoidStateType.Landed or L_1737_ == 15;
				last = Vector3.new()
				L_54_ = false
			end;
			L_53_ = false
		end
	end;
	if L_57_.alive then
		L_32_.Character.Humanoid.JumpHeight = getgenv().hookJP and getgenv().hookJP or 2.5
	end;
	if L_57_.alive and library_flags["Old Gun Sounds"] then
		replaceAudio(L_57_.name)
	end;
	if library_flags["Flashlight"] and L_57_.alive and not L_32_.Character.Head.SpotLight.Enabled then
		game.ReplicatedStorage.Events.Flashlight:FireServer()
	end;
	if table.find(L_91_, L_57_.name) and L_34_:FindFirstChild("Arms") and L_34_.Arms:FindFirstChild("Guy") and not reloading and not reloaddebounce then
		local L_1739_ = workspace.Camera.Arms.Guy:GetPlayingAnimationTracks()
		for L_1740_forvar0, L_1741_forvar1 in next, L_1739_ do
			if tostring(L_1741_forvar1) == "reload" then
				reloading = true;
				wait(library_flags["Instant Reload"] and 0 or L_24_.Weapons[L_57_.name].ReloadTime.Value * 0.8)
				local L_1742_ = getWeaponInfo()
				if L_1742_.name == L_57_.name then
					if L_57_.type == "main" then
						setupvalue(L_36_.countammo, 6, L_24_.Weapons[L_57_.name].Ammo.Value)
					elseif L_57_.type == "secondary" then
						setupvalue(L_36_.countammo, 5, L_24_.Weapons[L_57_.name].Ammo.Value)
					end;
					L_36_.countammo()
					reloaddebounce = true;
					spawn(function()
						wait(L_24_.Weapons[L_57_.name].ReloadTime.Value * 0.5)
						reloaddebounce = false
					end)
				end;
				reloading = false
			end
		end
	end;
	if not L_57_.alive then
		quickpeeking = false;
		qpPart.Position = Vector3.new()
		qpPartpos = nil
	end;
	getgenv().silentAimEnabled = library_flags["aimbotEnabled"] and L_57_.alive and L_57_.silentAim;
	if L_25_:IsMouseButtonPressed(0) and L_57_.alive and L_57_.silentAim then
		local L_1743_, L_1744_ = getNearest(L_57_.silentFOV * 3, L_38_, library_flags["legitVisOnly"])
		a = L_1744_ > L_57_.deadzone * 2.3;
		b = L_1744_ > L_57_.silentFOV * 3;
		if L_1743_ and a and not b then
			getgenv().target = L_57_.baim and L_1743_.Character.PrimaryPart or L_1743_.Character.Head
		end
	elseif not library_flags["Ragebot"] then
		getgenv().target = nil
	end;
	if library_flags["Infinite Ammo"] then
		pcall(function()
			setupvalue(L_36_.countammo, 5, 387420489)
			setupvalue(L_36_.countammo, 6, 387420489)
		end)
	else
		if L_57_.type == "main" then
			if getupvalue(L_36_.countammo, 6) > L_24_.Weapons[L_57_.name].Ammo.Value then
				setupvalue(L_36_.countammo, 6, L_24_.Weapons[L_57_.name].Ammo.Value)
				L_36_.countammo()
			end
		elseif L_57_.type == "secondary" then
			if getupvalue(L_36_.countammo, 5) > L_24_.Weapons[L_57_.name].Ammo.Value then
				setupvalue(L_36_.countammo, 5, L_24_.Weapons[L_57_.name].Ammo.Value)
				L_36_.countammo()
			end
		end
	end;
	if L_57_.alive and L_24_.Weapons:FindFirstChild(L_32_.Character.EquippedTool.Value) then
		local L_1745_ = L_24_.Weapons:FindFirstChild(L_32_.Character.EquippedTool.Value)
		if L_1745_:FindFirstChild("Melee") then
			L_104_ = true
		elseif L_104_ and not knifeDebounce then
			knifeDebounce = true;
			CreateThread(function()
				wait(0.05)
				L_104_ = false;
				knifeDebounce = false
			end)
		end
	end;
	getgenv().holdE = not L_25_:GetFocusedTextBox() and L_25_:IsKeyDown(Enum.KeyCode.E)
	if library_flags["No Crouch Cooldown"] then
		L_36_.crouchcooldown = 0
	end;
	if library_flags["Remove Radio Commands"] then
		L_32_.PlayerGui.GUI.SuitZoom.Visible = false
	end;
	if library_flags["Remove Recoil"] then
		L_36_.RecoilX = 0;
		L_36_.RecoilY = 0
	end;
	if library_flags["Gradient"] then
		L_29_.Ambient = library_flags["gradientColor"]
		L_29_.OutdoorAmbient = library_flags["gradientColor2"]
	else
		L_29_.Ambient = oldAmbient;
		L_29_.OutdoorAmbient = oldOutdoorAmbient
	end;
	L_44_.Saturation = library_flags["Saturation"] and library_flags["saturationValue"] / 50 or 0;
	L_29_.TimeOfDay = library_flags["Time Changer"] and library_flags["time"] / 2 or 14;
	if library_flags["Anti Aim"] and L_32_.Character and L_32_.Character.PrimaryPart and L_32_.Character:FindFirstChild("Humanoid") then
		L_141_ = L_141_ + 15;
		L_142_ = L_142_ == 90 and -90 or 90;
		L_32_.Character.Humanoid.AutoRotate = false;
		local L_1746_ = true;
		if library_flags["Pitch"] == "Down" or library_flags["Pitch"] == "None" then
			L_1746_ = false
		end;
		if library_flags["Yaw"] == "None" then
			setYaw(L_1746_ and 180 or 0)
		elseif library_flags["Yaw"] == "Backwards" then
			setYaw(L_1746_ and 0 or 180)
		elseif library_flags["Yaw"] == "Manual" then
			if library_flags["Manual Indicators"] then
				local L_1748_, L_1749_ = L_111_ or L_109_, L_111_ or L_110_;
				indicatorHolder.Enabled = true;
				leftIndicator.TextColor3 = L_1748_ and Color3.new(1, 1, 1) or library_flags["Menu Accent Color"]
				rightIndicator.TextColor3 = L_1749_ and Color3.new(1, 1, 1) or library_flags["Menu Accent Color"]
			end;
			local L_1747_ = nil;
			if L_111_ then
				setYaw(L_1746_ and 0 or 180)
			end;
			if library_flags["Pitch"] == "Down" or library_flags["Pitch"] == "None" then
				if L_109_ then
					L_1747_ = -90 + library_flags["Manual Yaw Offset"]
				elseif L_110_ then
					L_1747_ = 90 - library_flags["Manual Yaw Offset"]
				elseif L_111_ then
					L_1747_ = 180
				end
			else
				if L_109_ then
					L_1747_ = 90 + library_flags["Manual Yaw Offset"]
				elseif L_110_ then
					L_1747_ = -90 - library_flags["Manual Yaw Offset"]
				elseif L_111_ then
					L_1747_ = 0
				end
			end;
			setYaw(L_1747_, L_1747_ + 180)
		elseif library_flags["Yaw"] == "Spin" then
			setYaw(L_141_, L_141_ + 180)
		elseif library_flags["Yaw"] == "Random" then
			local L_1750_ = math.random(0, 360)
			setYaw(L_1750_, L_1750_ + 180)
		elseif library_flags["Yaw"] == "Jitter" then
			setYaw(L_142_, - L_142_)
		end
	else
		if L_57_.alive then
			L_32_.Character.Humanoid.AutoRotate = true;
			L_32_.Character.Humanoid.HipHeight = 2
		end
	end;
	if L_57_.alive then
		local L_1751_ = L_32_.Character.Head;
		local L_1752_ = getgenv().target or L_1751_;
		local L_1753_ = library_flags["Roll"] ~= "None" and library_flags["Anti Aim"]
		getgenv().antiAimCFrame = CFrame.new(L_1751_.Position, L_1752_.Position + L_1752_.CFrame.LookVector) * CFrame.Angles(0, 0, L_1753_ and math.rad(180) or 0)
	end;
	if library_flags["Watermark"] then
		local L_1754_, L_1755_, L_1756_ = returntime("sec"), returntime("min"), returntime("hour")
		local L_1757_ = string.len(L_1754_) == 2 and L_1754_ or "0" .. L_1754_;
		local L_1758_ = string.len(L_1755_) == 2 and L_1755_ or "0" .. L_1755_;
		local L_1759_ = string.len(L_1756_) == 2 and L_1756_ or "0" .. L_1756_;
		L_116_.Text = " cipex | " .. L_1759_ .. ":" .. L_1758_ .. ":" .. L_1757_ .. " | " .. L_32_.Name;
		if L_116_.TextBounds.X > 210 then
			L_116_.TextSize = L_116_.TextSize - 1
		end
	end;
	if L_57_.alive then
		local L_1760_ = not L_57_.melee and library_flags["FOV Circle"] and library_flags["aimbotEnabled"]
		L_113_.Radius = L_57_.FOV * 3;
		L_113_.Position = L_1760_ and library_flags["aimbotEnabled"] and Vector2.new(L_34_.ViewportSize.X / 2, L_34_.ViewportSize.Y / 2) or Vector2.new(-2000, -2000)
		L_114_.Radius = L_57_.silentFOV * 3;
		L_114_.Position = L_1760_ and L_57_.silentAim and Vector2.new(L_34_.ViewportSize.X / 2, L_34_.ViewportSize.Y / 2) or Vector2.new(-2000, -2000)
	end
end)
else
    --discord.gg/boronide, code generated using luamin.js™




local L_1_ = true;
if game.PlaceId == 8065776277 and L_1_ then
	repeat
		wait()
	until game:IsLoaded()
	setfpscap(144)
	local L_145_ = game:GetService("ReplicatedStorage")
	local L_146_ = game:GetService("HttpService")
	local L_147_ = game:GetService("UserInputService")
	local L_148_ = game:GetService("ContentProvider")
	local L_149_ = game:GetService("Lighting")
	local L_150_ = game:GetService("TweenService")
	local L_151_ = game:GetService("Players")
	local L_152_ = workspace.settings;
	local L_153_ = L_151_.LocalPlayer;
	local L_154_ = workspace.CurrentCamera;
	local L_155_ = L_153_:GetMouse()
	local L_156_ = {}
	local L_157_ = {
		4,
		2,
		1,
		20,
		40
	}
	local L_158_ = {
		0.25,
		0.5,
		1,
		2,
		4
	}
	local L_159_ = {
		4,
		2,
		1,
		0.5,
		0.25
	}
	local L_160_ = {
		"1/4",
		"1/2",
		"1",
		"2",
		"4"
	}
	local L_161_ = false;
	local L_162_ = false;
	local L_163_ = false;
	local L_164_ = ""
	local L_165_ = "freecam"
	local L_166_ = nil;
	local L_167_ = 3;
	local L_168_ = 0;
	local L_169_ = 0;
	local L_170_;
	local L_171_ = game:GetService("RunService")
	local L_172_ = L_153_:GetMouse()
	local L_173_ = L_149_.Ambient;
	local L_174_ = L_149_.OutdoorAmbient;
	local L_175_ = Instance.new("ColorCorrectionEffect", L_149_)
	repeat
		wait()
	until L_153_.PlayerGui:FindFirstChild("main")
	local L_176_ = L_153_.PlayerGui.main;
	local L_177_ = L_176_;
	local L_178_ = L_177_.settings.outline.main.group;
	L_177_.settings.Position = UDim2.new(0.5, - L_177_.settings.Size.X.Offset / 2, 0.5, - L_177_.settings.Size.Y.Offset / 2)
	local L_179_ = {
		colorpicking = false,
		tabbuttons = {},
		tabs = {},
		options = {},
		flags = {},
		scrolling = false,
		playing = false,
		multiZindex = 100,
		toInvis = {},
		libColor = Color3.fromRGB(100, 60, 80),
		blacklisted = {
			Enum.KeyCode.W,
			Enum.KeyCode.A,
			Enum.KeyCode.S,
			Enum.KeyCode.D,
			Enum.UserInputType.MouseMovement
		}
	}
	local L_180_;
	L_176_.wait.TextLabel.Text = "Loading UI..."
	wait()
	local L_181_ = Instance.new("IntValue")
	L_181_.Name = "jig"
	function tickToSec(L_224_arg0)
		local L_225_ = tostring(math.floor(math.floor(L_224_arg0 / 32) / 60))
		local L_226_ = tostring(math.floor(L_224_arg0 / 32) - L_225_ * 60)
		L_226_ = # tostring(L_226_) == 1 and "0" .. L_226_ or L_226_;
		return L_225_ .. ":" .. L_226_
	end;
	function extractNumber(L_227_arg0)
		if not L_227_arg0 then
			return 0
		end;
		local L_228_ = ""
		for L_229_forvar0 = 1, string.len(L_227_arg0) do
			local L_230_ = string.sub(L_227_arg0, L_229_forvar0, L_229_forvar0)
			if tonumber(L_230_) then
				L_228_ = L_228_ .. L_230_
			end
		end;
		return tonumber(L_228_)
	end;
	function playAudio(L_231_arg0, L_232_arg1)
		if L_179_.flags["hide_character_models"] then
			return
		end;
		if ignoreSound then
			return
		end;
		local L_233_ = L_231_arg0:Clone()
		L_233_.Volume = 0.15;
		L_233_.PlaybackSpeed = L_158_[L_167_]
		L_233_.Parent = L_232_arg1;
		L_233_:Play()
		L_233_.Ended:Connect(function()
			if L_233_ then
				L_233_:Destroy()
			end
		end)
	end;
	function hasProperty(L_234_arg0, L_235_arg1)
		return pcall(function()
			_ = L_234_arg0[L_235_arg1]
		end)
	end;
	local L_182_ = {}
	local L_183_ = {}
	local L_184_ = {}
	local L_185_ = {}
	local L_186_ = {}
	local L_187_ = {}
	local L_188_ = 0;
	local L_189_ = false;
	local L_190_ = {
		AWP = {
			magout = 1.5
		}
	}
	local L_191_ = {}
	local L_192_ = require(workspace.Bezier)
	local L_193_ = false;
	local L_194_ = false;
	function count(L_236_arg0)
		a = 0;
		for L_237_forvar0, L_238_forvar1 in next, L_236_arg0 do
			a = a + 1
		end;
		return a
	end;
	function updateKeyframes()
		workspace.camParts:ClearAllChildren()
		if count(L_191_) < 1 or not L_152_.showkeyframes.Value then
			return
		end;
		for L_239_forvar0, L_240_forvar1 in pairs(L_191_) do
			if L_239_forvar0 ~= count(L_191_) then
				local L_241_ = L_240_forvar1.cf.p;
				local L_242_ = L_191_[L_239_forvar0 + 1].cf;
				local L_243_ = L_241_.X > L_242_.p.X and L_241_.X or L_242_.p.X;
				local L_244_ = (L_241_.Y + L_242_.p.Y) / 2;
				local L_245_ = L_241_.Z > L_242_.p.Z and L_241_.Z or L_242_.p.Z;
				local L_246_ = L_192_.new(L_241_, Vector3.new(L_243_, L_244_, L_245_), L_242_.p):GetPath(0.15)
				for L_247_forvar0, L_248_forvar1 in pairs(L_246_) do
					local L_249_ = Instance.new("Part")
					L_249_.Anchored = true;
					L_249_.Size = Vector3.new(0.3, 0.3, 0.3)
					L_249_.Material = "SmoothPlastic"
					L_249_.Color = Color3.new(0.5, 0.2, 0.7)
					L_249_.CFrame = CFrame.new(L_248_forvar1, L_248_forvar1 + L_242_.LookVector)
					L_249_.Transparency = 0.65;
					L_249_.Parent = workspace.camParts;
					local L_250_ = Instance.new("Part")
					L_250_.Shape = "Cylinder"
					L_250_.Anchored = true;
					L_250_.Size = Vector3.new(0.1, 0.2, 0.1)
					L_250_.Material = "SmoothPlastic"
					L_250_.Color = Color3.new(1, 1, 1)
					L_250_.Position = L_249_.Position + L_249_.CFrame.LookVector / 3.5;
					L_250_.Transparency = 0.75;
					L_250_.Orientation = L_249_.Orientation + Vector3.new(0, 90, 0)
					L_250_.Parent = L_249_
				end
			end;
			wait()
		end
	end;
	local L_195_ = tick()
	local L_196_ = CFrame.new(0, 0, 0)
	local L_197_ = CFrame.Angles(0, 0, 0)
	mgn = 0;
	local L_198_ = {
		0,
		0
	}
	local L_199_ = 0;
	local L_200_ = 0;
	waveScale = 0;
	local L_201_ = {
		aim_amp = 0.5,
		aim_max_change = 4,
		aim_retract = 15,
		aim_max_deg = 20
	}
	local L_202_ = Vector3.new()
	Camera = workspace.CurrentCamera;
	local L_203_ = Drawing.new("Text")
	L_203_.Visible = true;
	L_203_.Position = Vector2.new(100, 100)
	L_203_.Size = 30;
	L_203_.Font = 2;
	L_203_.Text = "tps:"
	L_203_.Color = Color3.new(1, 1, 1)
	L_203_.Visible = false;
	local L_204_ = 0;
	spawn(function()
		while wait(1) do
			L_203_.Text = "tps: " .. tostring(L_204_)
			L_204_ = 0
		end
	end)
	function playTick(L_251_arg0)
		if not L_251_arg0 then
			L_251_arg0 = L_169_
		end;
		if L_152_.keyframing.Value and L_165_ == "freecam" and L_152_.playing.Value then
			if count(L_191_) > 1 then
				if not L_193_ then
					local L_253_, L_254_ = 387420489, nil;
					for L_255_forvar0, L_256_forvar1 in next, L_191_ do
						if L_256_forvar1.tick > L_251_arg0 and L_256_forvar1.tick < L_253_ then
							L_253_, L_254_ = L_256_forvar1.tick, L_256_forvar1.cf
						end
					end;
					if L_254_ then
						L_193_ = true;
						local L_257_ = math.abs(L_251_arg0 - L_253_)
						local L_258_ = L_154_.CFrame.p;
						local L_259_ = L_258_.X > L_254_.p.X and L_258_.X or L_254_.p.X;
						local L_260_ = (L_258_.Y + L_254_.p.Y) / 2;
						local L_261_ = L_258_.Z > L_254_.p.Z and L_258_.Z or L_254_.p.Z;
						local L_262_ = L_192_.new(L_258_, Vector3.new(L_259_, L_260_, L_261_), L_254_.p):GetPath(0.15)
						local L_263_ = 30 * L_158_[L_167_]
						spawn(function()
							warn(L_251_arg0, L_253_)
							warn(L_257_, L_257_ / L_263_, L_257_ / L_263_ / (# L_262_ - 1))
							for L_264_forvar0, L_265_forvar1 in pairs(L_262_) do
								if L_264_forvar0 > 1 then
									local L_266_ = TweenInfo.new(L_257_ / L_263_ / (# L_262_ - 1), Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
									local L_267_ = L_150_:Create(L_154_, L_266_, {
										CFrame = CFrame.new(L_265_forvar1, L_265_forvar1 + L_254_.LookVector * 10000)
									})
									L_267_:Play()
									if L_264_forvar0 ~= # L_262_ - 1 then
										wait(L_257_ / L_263_ / (# L_262_ - 1))
									end
								end
							end;
							L_193_ = false
						end)
					end
				end
			end
		end;
		workspace.demoModels.nades:ClearAllChildren()
		local L_252_ = L_156_[L_251_arg0]
		if type(L_252_) == "table" then
			for L_269_forvar0, L_270_forvar1 in next, L_252_ do
				if type(L_270_forvar1) ~= "table" or not L_270_forvar1.name then
					continue;
				end;
				if L_270_forvar1.alive then
					local L_271_ = workspace.demoModels:FindFirstChild(L_269_forvar0)
					local L_272_ = workspace.demoModels.weapons:FindFirstChild(L_269_forvar0 .. "_" .. L_270_forvar1.gunName)
					local L_273_ = false;
					local L_274_ = false;
					if not L_271_ then
						L_271_ = L_145_.CharacterModels[L_270_forvar1.plrModel]:Clone()
						L_271_.Name = L_269_forvar0;
						L_271_.Parent = workspace.demoModels;
						L_182_[L_270_forvar1.name] = L_270_forvar1.plrModel;
						L_274_ = true
					end;
					if not L_272_ then
						for L_277_forvar0, L_278_forvar1 in next, workspace.demoModels.weapons:GetChildren() do
							if L_278_forvar1.Name:find(L_269_forvar0) then
								L_278_forvar1:Destroy()
								break
							end
						end;
						if L_145_.Weapons:FindFirstChild(L_270_forvar1.gunName) then
							L_272_ = L_145_.Weapons[L_270_forvar1.gunName].Model:Clone()
							L_272_.Name = L_269_forvar0 .. "_" .. L_270_forvar1.gunName;
							L_272_.Parent = workspace.demoModels.weapons;
							for L_279_forvar0, L_280_forvar1 in next, L_272_:GetDescendants() do
								if L_280_forvar1:IsA("BasePart") then
									L_280_forvar1.Anchored = true;
									if L_145_.Weapons[L_270_forvar1.gunName]:FindFirstChild("Grenade") then
										L_280_forvar1.Transparency = 0
									end
								end
							end
						end;
						L_273_ = true
					end;
					local L_275_ = L_269_forvar0 == L_164_ and L_165_ == "follow" and L_161_ or L_179_.flags["hide_character_models"]
					if (not L_187_[L_269_forvar0] and L_270_forvar1.scoped or L_187_[L_269_forvar0] and not L_270_forvar1.scoped) and L_272_:FindFirstChild("Zoom") then
						playAudio(L_272_.Zoom, L_166_ and L_275_ and workspace or L_272_:FindFirstChild("Handle") or L_272_:FindFirstChild("Handle2") or nil)
					end;
					if L_165_ == "follow" then
						if L_269_forvar0 == L_164_ then
							if L_270_forvar1.alive then
								L_176_.Scope.Visible = not L_179_.flags["hide_scope"] and L_270_forvar1.scoped and (L_269_forvar0 == L_164_ and L_161_)
								L_154_.FieldOfView = L_176_.Scope.Visible and 35 or 80;
								L_176_.crosshair.Visible = L_270_forvar1.gunName ~= "AWP" and L_270_forvar1.gunName ~= "Scout" and L_270_forvar1.gunName ~= "G3SG1" and (L_161_ and L_165_ == "follow") and not L_270_forvar1.scoped;
								if L_270_forvar1.localplayer and L_161_ then
									L_176_.hud.Vitals.Visible = true;
									L_176_.hud.AmmoGUI.Visible = true;
									L_176_.hud.Spectate.Visible = false;
									L_176_.hud.Vitals.Health.Text = math.floor(tonumber(L_270_forvar1.health))
									L_176_.hud.Vitals.Armor.Text = math.floor(tonumber(L_270_forvar1.kevlar))
									L_176_.hud.Vitals.HealthB.Fill.Size = UDim2.new(L_270_forvar1.health / 100, 0, 1, 0)
									L_176_.hud.Vitals.ArmorB.Fill.Size = UDim2.new(L_270_forvar1.kevlar / 100, 0, 1, 0)
									L_176_.hud.AmmoGUI.AmmoClip.Text = L_270_forvar1.ammo;
									L_176_.hud.AmmoGUI.AmmoReserve.Text = L_270_forvar1.ammoreserve
								else
									L_176_.hud.Vitals.Visible = false;
									L_176_.hud.AmmoGUI.Visible = false;
									L_176_.hud.Spectate.Visible = true;
									L_176_.hud.Spectate.PlayerBox.BackgroundColor3 = L_270_forvar1.team == "Terrorists" and Color3.fromRGB(245, 205, 48) or Color3.fromRGB(13, 105, 172)
									L_176_.hud.Spectate.PlayerBox.PlayerName.TextColor3 = L_270_forvar1.team == "Terrorists" and Color3.fromRGB(245, 205, 48) or Color3.fromRGB(13, 105, 172)
									L_176_.hud.Spectate.PlayerBox.PlayerName.Text = L_270_forvar1.name;
									L_176_.hud.Spectate.PlayerBox.PlayerIcon.Plr.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. tostring(L_270_forvar1.userid) .. "&width=420&height=420&format=png"
									L_176_.hud.Spectate.PlayerBox.GreyPart.PHealth.Text = math.floor(tonumber(L_270_forvar1.health))
									L_176_.hud.Spectate.PlayerBox.GreyPart.WeaponName.Text = L_270_forvar1.gunName
								end
							else
								L_176_.hud.Spectate.Visible = false;
								L_176_.hud.Vitals.Visible = false;
								L_176_.hud.AmmoGUI.Visible = false;
								L_176_.crosshair.Visible = false
							end
						end
					else
						L_176_.hud.Spectate.Visible = false;
						L_176_.hud.Vitals.Visible = false;
						L_176_.hud.AmmoGUI.Visible = false;
						L_176_.crosshair.Visible = false
					end;
					if not L_179_.flags["show_hud"] then
						L_176_.hud.Spectate.Visible = false;
						L_176_.hud.Vitals.Visible = false;
						L_176_.hud.AmmoGUI.Visible = false
					end;
					if L_179_.flags["hide_crosshair"] then
						L_176_.crosshair.Visible = false
					end;
					L_189_ = L_176_.Scope.Visible or L_179_.flags["hide_viewmodel"]
					for L_281_forvar0, L_282_forvar1 in next, L_271_:GetChildren() do
						local L_283_ = nil;
						local L_284_ = nil;
						local L_285_ = nil;
						local L_286_ = nil;
						for L_287_forvar0, L_288_forvar1 in next, L_270_forvar1.partCF do
							L_283_ = L_287_forvar0 == L_282_forvar1.Name and L_282_forvar1 or nil;
							L_284_ = L_283_ and L_288_forvar1 or nil;
							if L_283_ then
								break
							end
						end;
						if L_282_forvar1.ClassName == "Accessory" then
							for L_289_forvar0, L_290_forvar1 in next, L_270_forvar1.hatCF do
								local L_291_ = L_282_forvar1.Handle.ClassName == "Part" and L_282_forvar1.Handle.Mesh.MeshId or L_282_forvar1.Handle.ClassName == "MeshPart" and L_282_forvar1.Handle.MeshId or ""
								L_285_ = L_289_forvar0 == L_291_ and L_282_forvar1 or nil;
								L_286_ = L_285_ and L_290_forvar1 or nil;
								if L_285_ then
									break
								end
							end
						end;
						if L_283_ then
							local L_292_ = L_275_ and "0 0 0 0 0 0 0 0 0 0 0 0" or L_284_:split(" ")
							local L_293_ = TweenInfo.new(L_274_ and 0 or workspace.settings.playertween.Value, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
							local L_294_ = L_150_:Create(L_283_, L_293_, {
								CFrame = CFrame.new(L_292_[1], L_292_[2], L_292_[3], L_292_[4], L_292_[5], L_292_[6], L_292_[7], L_292_[8], L_292_[9], L_292_[10], L_292_[11], L_292_[12])
							})
							L_294_:Play()
							L_283_.Anchored = true
						end;
						if L_285_ then
							local L_295_ = L_275_ and "0 0 0 0 0 0 0 0 0 0 0 0" or L_286_:split(" ")
							local L_296_ = TweenInfo.new(L_274_ and 0 or workspace.settings.playertween.Value, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
							local L_297_ = L_150_:Create(L_285_.Handle, L_296_, {
								CFrame = CFrame.new(L_295_[1], L_295_[2], L_295_[3], L_295_[4], L_295_[5], L_295_[6], L_295_[7], L_295_[8], L_295_[9], L_295_[10], L_295_[11], L_295_[12])
							})
							L_297_:Play()
							L_285_.Handle.Anchored = true
						end
					end;
					if L_272_ and L_145_.Skins:FindFirstChild(L_270_forvar1.gunName) then
						for L_298_forvar0, L_299_forvar1 in next, L_270_forvar1.gunCF do
							local L_300_ = L_272_:FindFirstChild(L_298_forvar0)
							local L_301_ = L_145_.Skins[L_270_forvar1.gunName]:FindFirstChild(L_270_forvar1.skinName) and L_145_.Skins[L_270_forvar1.gunName][L_270_forvar1.skinName]:FindFirstChild(L_298_forvar0, true) or nil;
							if L_300_ then
								local L_302_ = L_275_ and "0 0 0 0 0 0 0 0 0 0 0 0" or L_299_forvar1:split(" ")
								local L_303_ = TweenInfo.new(L_273_ and 0 or workspace.settings.playertween.Value, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
								local L_304_ = L_150_:Create(L_300_, L_303_, {
									CFrame = CFrame.new(L_302_[1], L_302_[2], L_302_[3], L_302_[4], L_302_[5], L_302_[6], L_302_[7], L_302_[8], L_302_[9], L_302_[10], L_302_[11], L_302_[12])
								})
								L_304_:Play()
								if L_301_ then
									L_300_.TextureID = L_301_.Value
								end
							end
						end
					end;
					local L_276_ = L_270_forvar1.gunState;
					if L_276_ ~= "None" then
						local L_305_, L_306_;
						L_306_ = L_166_ and (L_269_forvar0 == L_164_ and L_165_ == "follow" and L_161_) and workspace or L_272_:FindFirstChild("Handle") or L_272_:FindFirstChild("Handle2") or nil;
						if string.find(L_276_, "Fire") or L_276_ == "Stab" then
							L_305_ = L_272_:FindFirstChild("Shoot") or L_272_:FindFirstChild("Shoot1")
							if L_164_ == L_269_forvar0 and L_166_ then
								if L_276_ ~= "Stab" then
									L_202_ = Vector3.new(0, 0.5, 0)
								end;
								local L_307_ = L_166_.Guy:LoadAnimation(L_166_[L_276_:lower()])
								L_307_:Play()
								L_307_:AdjustSpeed(L_158_[L_167_])
							end
						elseif L_276_ == "Reload" then
							if L_164_ == L_269_forvar0 and L_166_ then
								local L_310_ = L_166_.Guy:LoadAnimation(L_166_.reload)
								L_310_:Play()
								L_310_:AdjustSpeed(L_158_[L_167_])
							end;
							local L_308_ = L_272_;
							local L_309_ = L_272_.Name:split("_")[2]
							spawn(function()
								if L_145_.Weapons:FindFirstChild(L_309_) then
									local L_311_ = L_145_.Weapons[L_309_].Model:FindFirstChild("magout")
									local L_312_ = L_145_.Weapons[L_309_].Model:FindFirstChild("magin")
									local L_313_ = L_145_.Weapons[L_309_].Model:FindFirstChild("bolt") or L_145_.Weapons[L_309_].Model:FindFirstChild("slide")
									local L_314_ = L_145_.Weapons[L_309_].Model:FindFirstChild("boltin") or L_145_.Weapons[L_309_].Model:FindFirstChild("slidein")
									if L_311_ and L_312_ and L_313_ and L_314_ then
										playAudio(L_311_, L_306_)
										wait((L_190_[L_309_] and L_190_[L_309_].magout or L_311_.TimeLength * 0.85) * L_159_[L_167_])
										if not L_308_ then
											return
										end;
										playAudio(L_312_, L_306_)
										wait(L_312_.TimeLength * 0.95 * L_159_[L_167_])
										if not L_308_ then
											return
										end;
										playAudio(L_313_, L_306_)
										wait(L_313_.TimeLength * 0.75 * L_159_[L_167_])
										if not L_308_ then
											return
										end;
										playAudio(L_314_, L_306_)
									else
										warn(L_270_forvar1.gunName, "does not have all needed sounds!")
									end
								else
									warn(L_309_, "does not exist [?]", L_272_.Name)
								end
							end)
						elseif L_276_ == "Inspect" then
							if L_164_ == L_269_forvar0 and L_166_ then
								local L_315_ = L_166_.Guy:LoadAnimation(L_166_.inspect)
								L_315_:Play()
								L_315_:AdjustSpeed(L_158_[L_167_])
							end
						end;
						if L_305_ and L_306_ then
							playAudio(L_305_, L_306_)
						end
					end;
					L_202_ = Vector3.new(0, L_202_.Y - 0.075 < 0 and 0 or L_202_.Y - 0.075, 0)
					if L_273_ and L_145_.Weapons:FindFirstChild(L_270_forvar1.gunName) then
						if L_145_.Weapons[L_270_forvar1.gunName].Model:FindFirstChild("Equip") then
							local L_316_ = L_166_ and (L_269_forvar0 == L_164_ and L_165_ == "follow" and L_161_) and L_166_.HumanoidRootPart or L_272_:FindFirstChild("Handle") or L_272_:FindFirstChild("Handle2")
							playAudio(L_145_.Weapons[L_270_forvar1.gunName].Model.Equip, L_316_)
						else
							local L_317_ = L_166_ and (L_269_forvar0 == L_164_ and L_165_ == "follow" and L_161_) and L_166_.HumanoidRootPart or L_272_:FindFirstChild("Handle") or L_272_:FindFirstChild("Handle2")
							local L_318_ = L_145_.Weapons[L_270_forvar1.gunName].Model:FindFirstChild("bolt") or L_145_.Weapons[L_270_forvar1.gunName].Model:FindFirstChild("slide")
							local L_319_ = L_145_.Weapons[L_270_forvar1.gunName].Model:FindFirstChild("boltin") or L_145_.Weapons[L_270_forvar1.gunName].Model:FindFirstChild("slidein")
							if L_318_ and L_319_ then
								spawn(function()
									wait(0.1)
									playAudio(L_318_, L_317_)
									wait(L_318_.TimeLength * 0.75 * L_159_[L_167_])
									playAudio(L_319_, L_317_)
								end)
							end
						end
					end;
					if workspace.demoModels.ragdoll:FindFirstChild(L_269_forvar0) then
						workspace.demoModels.ragdoll[L_269_forvar0]:Destroy()
					end;
					if L_270_forvar1.forcefield and not L_271_:FindFirstChild("ForceField") then
						local L_320_ = Instance.new("ForceField", L_271_)
					elseif L_271_:FindFirstChild("ForceField") and not L_270_forvar1.forcefield then
						L_271_.ForceField:Destroy()
					end;
					if L_270_forvar1.velocity and L_161_ and L_269_forvar0 == L_164_ then
						local L_321_ = tick() - L_195_ > 0.12 and 0.12 or tick() - L_195_;
						L_195_ = tick()
						local L_322_ = L_154_.CFrame.LookVector.magnitude == 0 and 1.0E-4 or L_154_.CFrame.lookVector.magnitude;
						local L_323_ = L_154_.CFrame.LookVector.y;
						local L_324_;
						if L_323_ ~= 0 then
							L_324_ = math.deg(math.asin(math.abs(L_323_) / L_322_)) * math.abs(L_323_) / L_323_
						else
							L_324_ = 0
						end;
						local L_325_ = L_154_.CFrame;
						local L_326_ = L_325_ * CFrame.new(0, 0, -100)
						local L_327_ = math.deg(math.atan2(L_325_.p.x - L_326_.p.x, L_325_.p.z - L_326_.p.z)) + 180;
						local L_328_, L_329_;
						local L_330_, L_331_ = 0, 0;
						L_328_ = math.abs(L_324_ - L_199_)
						if L_328_ ~= 0 then
							L_330_ = (L_324_ - L_199_) / L_328_
						end;
						local L_332_ = {
							math.abs(L_327_ - L_200_),
							360 - math.abs(L_327_ - L_200_)
						}
						if L_327_ == L_200_ then
							L_331_ = 0;
							L_329_ = 0
						elseif L_332_[1] < L_332_[2] then
							L_329_ = L_332_[1]
							L_331_ = (L_327_ - L_200_) / L_332_[1]
						else
							L_329_ = L_332_[2]
							if L_327_ < L_200_ then
								L_331_ = 1
							else
								L_331_ = -1
							end
						end;
						L_199_ = L_324_;
						L_200_ = L_327_;
						L_198_[1] = L_198_[1] / (1 + L_321_ * 15)
						L_198_[2] = L_198_[2] / (1 + L_321_ * 15)
						local L_333_ = L_328_ * L_330_ * 0.5;
						if L_333_ ~= 0 then
							L_198_[1] = L_198_[1] + math.min(4, math.abs(L_333_)) * L_333_ / math.abs(L_333_)
						end;
						local L_334_ = L_329_ * L_331_ * 0.5;
						if L_334_ ~= 0 then
							L_198_[2] = L_198_[2] + math.min(4, math.abs(L_334_)) * L_334_ / math.abs(L_334_)
						end;
						if L_198_[1] ~= 0 then
							L_198_[1] = math.min(20, math.abs(L_198_[1])) * math.abs(L_198_[1]) / L_198_[1]
						end;
						if L_198_[2] ~= 0 then
							L_198_[2] = math.min(20, math.abs(L_198_[2])) * math.abs(L_198_[2]) / L_198_[2]
						end;
						local L_335_ = math.cos(tick() * math.pi * 2.5)
						local L_336_ = 0.05;
						local L_337_ = Vector3.new(L_270_forvar1.velocity[1], L_270_forvar1.velocity[2], L_270_forvar1.velocity[3]).magnitude;
						waveScale = 0.75 * 0.5;
						if mgn < L_337_ then
							mgn = math.min(L_337_, mgn + 1)
						end;
						if mgn > L_337_ then
							mgn = math.max(L_337_, mgn - 1.5)
						end;
						local L_338_ = mgn / 18.35;
						L_196_ = getgenv().fart and CFrame.new() or CFrame.new((0.25 * L_338_ + L_335_ / 10 * L_338_) * waveScale, (0.25 * L_338_ + math.abs(L_335_ / 10) * L_338_) * - waveScale, math.abs(0.25 * L_338_) * waveScale)
						L_197_ = CFrame.Angles(- L_198_[1] / 150, - L_198_[2] / 150, 0)
					end;
					L_183_[L_269_forvar0] = L_270_forvar1.camCF;
					L_185_[L_269_forvar0] = L_270_forvar1.gunName;
					L_184_[L_269_forvar0] = L_270_forvar1.armsModel;
					L_186_[L_269_forvar0] = L_270_forvar1.skinName;
					L_187_[L_269_forvar0] = L_270_forvar1.scoped
				else
					if L_165_ == "follow" and L_269_forvar0 == L_164_ then
						L_176_.hud.Spectate.Visible = false;
						L_176_.hud.Vitals.Visible = false;
						L_176_.hud.AmmoGUI.Visible = false;
						L_176_.crosshair.Visible = false
					end;
					if L_270_forvar1.ragdoll.found and L_182_[L_269_forvar0] then
						local L_339_ = workspace.demoModels.ragdoll:FindFirstChild(L_269_forvar0)
						local L_340_ = false;
						if not L_339_ then
							L_339_ = L_145_.CharacterModels[L_182_[L_269_forvar0]]:Clone()
							L_339_.Name = L_270_forvar1.name;
							L_339_.Parent = workspace.demoModels.ragdoll;
							for L_341_forvar0, L_342_forvar1 in next, L_339_:GetDescendants() do
								if L_342_forvar1:IsA("BasePart") then
									L_342_forvar1.Anchored = true
								end
							end;
							L_340_ = true
						end;
						for L_343_forvar0, L_344_forvar1 in next, L_339_:GetChildren() do
							local L_345_ = L_270_forvar1.ragdoll.positions[L_344_forvar1.Name == "FakeHead" and "Head" or L_344_forvar1.Name]
							if L_345_ then
								L_345_ = L_179_.flags["hide_ragdolls"] and "0 0 0 0 0 0 0 0 0 0 0 0" or L_345_;
								local L_346_ = L_345_:split(" ")
								if L_340_ then
									L_344_forvar1.CFrame = CFrame.new(L_346_[1], L_346_[2], L_346_[3], L_346_[4], L_346_[5], L_346_[6], L_346_[7], L_346_[8], L_346_[9], L_346_[10], L_346_[11], L_346_[12])
								else
									local L_347_ = TweenInfo.new(workspace.settings.playertween.Value, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
									local L_348_ = L_150_:Create(L_344_forvar1, L_347_, {
										CFrame = CFrame.new(L_346_[1], L_346_[2], L_346_[3], L_346_[4], L_346_[5], L_346_[6], L_346_[7], L_346_[8], L_346_[9], L_346_[10], L_346_[11], L_346_[12])
									})
									L_348_:Play()
								end
							end;
							if L_344_forvar1.ClassName == "Accessory" then
								for L_349_forvar0, L_350_forvar1 in next, L_270_forvar1.ragdoll.hatPos do
									local L_351_ = L_344_forvar1.Handle.ClassName == "Part" and L_344_forvar1.Handle.Mesh.MeshId or L_344_forvar1.Handle.ClassName == "MeshPart" and L_344_forvar1.Handle.MeshId or ""
									if L_351_ == L_349_forvar0 then
										L_350_forvar1 = L_179_.flags["hide_ragdolls"] and "0 0 0 0 0 0 0 0 0 0 0 0" or L_350_forvar1;
										local L_352_ = L_350_forvar1:split(" ")
										if L_340_ then
											L_344_forvar1.Handle.CFrame = CFrame.new(L_352_[1], L_352_[2], L_352_[3], L_352_[4], L_352_[5], L_352_[6], L_352_[7], L_352_[8], L_352_[9], L_352_[10], L_352_[11], L_352_[12])
										else
											local L_353_ = TweenInfo.new(workspace.settings.playertween.Value, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
											local L_354_ = L_150_:Create(L_344_forvar1.Handle, L_353_, {
												CFrame = CFrame.new(L_352_[1], L_352_[2], L_352_[3], L_352_[4], L_352_[5], L_352_[6], L_352_[7], L_352_[8], L_352_[9], L_352_[10], L_352_[11], L_352_[12])
											})
											L_354_:Play()
										end
									end
								end
							end
						end;
						if workspace.demoModels:FindFirstChild(L_269_forvar0) then
							workspace.demoModels[L_269_forvar0]:Destroy()
						end
					elseif workspace.demoModels.ragdoll:FindFirstChild(L_269_forvar0) then
						workspace.demoModels.ragdoll[L_269_forvar0]:Destroy()
					end;
					for L_355_forvar0, L_356_forvar1 in next, workspace.demoModels.weapons:GetChildren() do
						if L_356_forvar1.Name:find(L_269_forvar0) then
							L_356_forvar1:Destroy()
							break
						end
					end;
					L_183_[L_269_forvar0] = nil;
					L_185_[L_269_forvar0] = nil;
					L_184_[L_269_forvar0] = nil;
					L_186_[L_269_forvar0] = nil;
					L_187_[L_269_forvar0] = nil
				end
			end;
			for L_357_forvar0, L_358_forvar1 in next, L_252_.nades do
				local L_359_ = L_145_.Weapons[L_358_forvar1.nade].Model:Clone()
				L_359_.Parent = workspace.demoModels.nades;
				L_359_.Anchored = true;
				L_359_.Transparency = 0;
				local L_360_ = L_358_forvar1.pos:split(" ")
				L_359_.Position = Vector3.new(L_360_[1], L_360_[2], L_360_[3])
				L_359_.Orientation = Vector3.new(L_360_[4], L_360_[5], L_360_[6])
			end;
			if L_168_ ~= L_252_.roundInfo.round then
				for L_361_forvar0, L_362_forvar1 in next, L_170_.Regen.Props:GetChildren() do
					L_362_forvar1.Transparency = 0
				end;
				if L_170_.Regen:FindFirstChild("Glasses") then
					for L_363_forvar0, L_364_forvar1 in next, L_170_.Regen.Glasses:GetChildren() do
						L_364_forvar1.Transparency = 0.5
					end
				end
			end;
			for L_365_forvar0, L_366_forvar1 in next, L_170_.Regen.Props:GetChildren() do
				local L_367_ = false;
				for L_368_forvar0, L_369_forvar1 in next, L_252_.regen.props do
					local L_370_ = L_369_forvar1:split(" ")
					L_367_ = (Vector3.new(L_370_[1], L_370_[2], L_370_[3]) - L_366_forvar1.Position).magnitude < 3 and true or L_367_
				end;
				L_366_forvar1.Transparency = L_367_ and 0 or 1
			end;
			if L_170_.Regen:FindFirstChild("Glasses") then
				for L_371_forvar0, L_372_forvar1 in next, L_170_.Regen.Glasses:GetChildren() do
					local L_373_ = false;
					for L_374_forvar0, L_375_forvar1 in next, L_252_.regen.glasses do
						local L_376_ = L_375_forvar1:split(" ")
						L_373_ = (Vector3.new(L_376_[1], L_376_[2], L_376_[3]) - L_372_forvar1.Position).magnitude < 1 and true or L_373_
					end;
					L_372_forvar1.Transparency = L_373_ and 0.5 or 1
				end
			end;
			for L_377_forvar0, L_378_forvar1 in pairs(L_170_.Regen.Doors:GetChildren()) do
				pcall(function()
					local L_379_ = L_252_.regen.doors[L_377_forvar0]:split(" ")
					L_378_forvar1.HumanoidRootPart.Anchored = true;
					L_378_forvar1.HumanoidRootPart.Position = Vector3.new(L_379_[1], L_379_[2], L_379_[3])
					L_378_forvar1.HumanoidRootPart.Orientation = Vector3.new(L_379_[4], L_379_[5], L_379_[6])
				end)
			end;
			for L_380_forvar0, L_381_forvar1 in next, L_252_.nadePos do
				local L_382_ = L_381_forvar1.pos:split(" ")
				local L_383_ = Vector3.new(L_382_[1], L_382_[2], L_382_[3])
				local L_384_ = false;
				for L_385_forvar0, L_386_forvar1 in next, workspace.demoModels.nadePos:GetChildren() do
					local L_387_ = (L_386_forvar1.Position - L_383_).magnitude;
					if L_387_ <= 0.25 then
						L_384_ = true
					end
				end;
				if not L_384_ then
					local L_388_ = L_145_[L_381_forvar1.type]:Clone()
					L_388_.Parent = workspace.demoModels.nadePos;
					L_388_.Position = L_383_
				end
			end;
			for L_389_forvar0, L_390_forvar1 in next, workspace.demoModels.nadePos:GetChildren() do
				local L_391_ = false;
				for L_392_forvar0, L_393_forvar1 in next, L_252_.nadePos do
					local L_394_ = L_393_forvar1.pos:split(" ")
					local L_395_ = (L_390_forvar1.Position - Vector3.new(L_394_[1], L_394_[2], L_394_[3])).magnitude;
					if L_395_ <= 1 then
						L_391_ = true
					end
				end;
				if not L_391_ then
					L_390_forvar1:Destroy()
				end
			end;
			workspace.demoModels.droppedWeapons:ClearAllChildren()
			for L_396_forvar0, L_397_forvar1 in next, L_252_.droppedWeapons do
				local L_398_ = L_145_.Weapons[L_397_forvar1.name].Model:Clone()
				L_398_.Parent = workspace.demoModels.droppedWeapons;
				for L_399_forvar0, L_400_forvar1 in next, L_397_forvar1.positions do
					L_400_forvar1 = L_179_.flags["hide_dropped_weapons"] and "0 0 0 0 0 0" or L_400_forvar1;
					local L_401_ = L_400_forvar1:split(" ")
					L_398_[L_399_forvar0].Position = Vector3.new(L_401_[1], L_401_[2], L_401_[3])
					L_398_[L_399_forvar0].Orientation = Vector3.new(L_401_[4], L_401_[5], L_401_[6])
				end
			end;
			L_176_.hud.TWin.Visible = L_252_.roundInfo.TWin.vis;
			L_176_.hud.TWin.MVPPlayer.Image = L_252_.roundInfo.TWin.mvpimage;
			L_176_.hud.TWin.TextLabel.Text = L_252_.roundInfo.TWin.mvptext;
			L_176_.hud.TWin.Info.TextLabel.Text = L_252_.roundInfo.TWin.infotext;
			L_176_.hud.CTWin.Visible = L_252_.roundInfo.CTWin.vis;
			L_176_.hud.CTWin.MVPPlayer.Image = L_252_.roundInfo.CTWin.mvpimage;
			L_176_.hud.CTWin.TextLabel.Text = L_252_.roundInfo.CTWin.mvptext;
			L_176_.hud.CTWin.Info.TextLabel.Text = L_252_.roundInfo.CTWin.infotext;
			local L_268_ = L_252_.bombPos:split(" ")
			workspace.C4Normal:SetPrimaryPartCFrame(CFrame.new(L_268_[1], L_268_[2] - 1, L_268_[3]) * CFrame.Angles(math.rad(90), 0, 0))
			L_168_ = L_252_.roundInfo.round;
			for L_402_forvar0, L_403_forvar1 in next, L_176_.killfeed:GetChildren() do
				if L_403_forvar1.Name ~= "example" and L_403_forvar1.Name ~= "UIListLayout" then
					L_403_forvar1:Destroy()
				end
			end;
			if L_252_.killfeed then
				for L_404_forvar0, L_405_forvar1 in pairs(L_252_.killfeed) do
					local L_406_ = L_176_.killfeed.example:Clone()
					x = 0;
					L_406_.Killer.Text = L_405_forvar1.killer;
					L_406_.Killer.TextColor3 = Color3.new(L_405_forvar1.killercolor[1], L_405_forvar1.killercolor[2], L_405_forvar1.killercolor[3])
					L_406_.Victim.Text = L_405_forvar1.victim;
					L_406_.Victim.TextColor3 = Color3.new(L_405_forvar1.victimcolor[1], L_405_forvar1.victimcolor[2], L_405_forvar1.victimcolor[3])
					L_406_.Outline.Visible = L_165_ == "follow" and (L_405_forvar1.killer == L_164_ or L_405_forvar1.victim == L_164_)
					L_406_.Pic.Image = L_405_forvar1.weapon;
					if L_405_forvar1.headshot and L_405_forvar1.wallbang then
						L_406_.Pic.Wallbang.Visible = true;
						L_406_.Pic.Wallbang.Headshot.Visible = true
					elseif L_405_forvar1.headshot then
						L_406_.Pic.Headshot.Visible = true
					end;
					L_406_.Pic.Headshot.Position = L_405_forvar1.headshot and L_405_forvar1.wallbang and UDim2.new(0, 102, 0, 2) or L_406_.Pic.Headshot.Position;
					L_406_.Name = tostring(L_404_forvar0)
					L_406_.Visible = L_179_.flags["show_killfeed"]
					L_406_.Parent = L_176_.killfeed;
					L_406_.Pic.Position = UDim2.new(0, L_406_.Killer.TextBounds.X + 3, 0, 0)
					L_406_.Size = UDim2.new(0, L_406_.Killer.TextBounds.X + L_406_.Victim.TextBounds.X + L_406_.Pic.Size.Width.Offset + (L_405_forvar1.headshot and 30 or 0) + (L_405_forvar1.wallbang and 30 or 0) + 28, 0, 25)
				end
			end;
			L_176_.hud.UpperInfo.Visible = not L_176_.Scope.Visible and L_179_.flags["show_hud"]
			if L_179_.flags["show_hud"] then
				L_176_.hud.UpperInfo.Timer.Text = L_252_.roundInfo.time;
				L_176_.hud.UpperInfo.TScore.Text = L_252_.roundInfo.T;
				L_176_.hud.UpperInfo.CTScore.Text = L_252_.roundInfo.CT
			end;
			L_176_.player.pauseresume.Image = L_152_.playing.Value and "rbxassetid://4458862490" or "rbxassetid://4458863290"
			L_176_.player.tickcount.Text = tickToSec(L_251_arg0) .. " / " .. tickToSec(L_188_)
			L_176_.player.tickslider.volumesize.Size = UDim2.new(100 / L_188_ * L_251_arg0 / 100, 0, 1, 0)
			ignoreSound = false
		end;
		L_204_ = L_204_ + 1
	end;
	local L_205_ = ""
	local L_206_ = false;
	function createMap(L_407_arg0)
		workspace.Terrain:Clear()
		if workspace:FindFirstChild("Map") then
			workspace.Map:Destroy()
		end;
		workspace.createmap.mapevent:FireServer(L_407_arg0)
	end;
	local L_207_ = {
		newKills = {},
		newRounds = {},
		newBombPlants = {}
	}
	function checkDifferences(L_408_arg0, L_409_arg1)
		local L_410_ = L_409_arg1[L_408_arg0 - 1]
		local L_411_ = L_409_arg1[L_408_arg0]
		for L_412_forvar0, L_413_forvar1 in next, L_411_.killfeed do
			local L_414_ = false;
			for L_415_forvar0, L_416_forvar1 in next, L_410_.killfeed do
				if L_416_forvar1.victim == L_413_forvar1.victim and L_413_forvar1.killer == L_416_forvar1.killer then
					L_414_ = true;
					break
				end
			end;
			if not L_414_ then
				table.insert(L_207_.newKills, {
					victim = L_413_forvar1.victim,
					killer = L_413_forvar1.killer,
					killercolor = L_413_forvar1.killercolor,
					victimcolor = L_413_forvar1.victimcolor,
					tickNumber = L_408_arg0
				})
			end
		end;
		if L_411_.roundInfo.round > L_410_.roundInfo.round then
			table.insert(L_207_.newRounds, {
				round = L_411_.roundInfo.round,
				tickNumber = L_408_arg0
			})
		end;
		if L_411_.bombPlanted and not L_410_.bombPlanted then
			table.insert(L_207_.newBombPlants, {
				round = L_411_.roundInfo.round,
				tickNumber = L_408_arg0
			})
		end
	end;
	function CreateThread(L_417_arg0)
		local L_418_ = coroutine.create(L_417_arg0)
		coroutine.resume(L_418_)
		return L_418_
	end;
	function playDemo(L_419_arg0, L_420_arg1)
		L_176_.playing.Visible = true;
		if L_206_ then
			return
		end;
		if L_166_ then
			L_166_:Destroy()
			L_166_ = nil
		end;
		if L_179_.flags["depth_of_field_map"] then
			L_179_.options["depth_of_field_map"].changeState(false)
		end;
		if L_179_.flags["greenscreen_map"] then
			L_179_.options["greenscreen_map"].changeState(false)
		end;
		L_164_ = ""
		L_165_ = "freecam"
		L_161_ = false;
		L_205_ = L_419_arg0;
		L_176_.demolist.Visible = false;
		L_152_.playing.Value = false;
		local L_421_ = L_145_.Demos:FindFirstChild(L_419_arg0)
		if L_421_ then
			local L_422_ = L_146_:JSONDecode(L_421_.map.Value)
			if L_422_.sky then
				if not L_149_:FindFirstChild("Sky") then
					local L_424_ = Instance.new("Sky", L_149_)
					L_424_.Name = "Sky"
				end;
				L_149_.Sky.SkyboxBk = L_422_.sides["SkyboxBk"]
				L_149_.Sky.SkyboxDn = L_422_.sides["SkyboxDn"]
				L_149_.Sky.SkyboxFt = L_422_.sides["SkyboxFt"]
				L_149_.Sky.SkyboxLf = L_422_.sides["SkyboxLf"]
				L_149_.Sky.SkyboxRt = L_422_.sides["SkyboxRt"]
				L_149_.Sky.SkyboxUp = L_422_.sides["SkyboxUp"]
			end;
			local L_423_ = workspace:FindFirstChild("Map")
			if L_145_.Maps:FindFirstChild(L_422_.mapName) or L_423_ then
				if not L_423_ then
					createMap(L_420_arg1 or L_145_.Maps[L_422_.mapName].Value)
				end;
				repeat
					wait()
				until workspace:FindFirstChild("Map")
				L_170_ = workspace.Map:GetChildren()[1]
				repeat
					wait()
				until L_170_:FindFirstChild("TSpawns") and L_170_:FindFirstChild("Clips") and L_170_:FindFirstChild("Regen") and L_170_.Regen:FindFirstChild("Props") or L_423_;
				if not L_423_ then
					L_170_.Clips:Destroy()
					L_154_.CFrame = L_170_.TSpawns:GetChildren()[1].CFrame + Vector3.new(0, 5, 0)
				else
					L_152_.playing.Value = false
				end;
				L_162_ = true;
				L_207_ = {
					newKills = {},
					newRounds = {},
					newBombPlants = {}
				}
				L_156_ = {}
				for L_429_forvar0 = 1, # L_421_:GetChildren() - 1 do
					if L_421_:FindFirstChild(tostring(L_429_forvar0)) then
						table.insert(L_156_, L_146_:JSONDecode(L_421_[tostring(L_429_forvar0)].Value))
					end
				end;
				for L_430_forvar0, L_431_forvar1 in next, L_156_ do
					L_431_forvar1.delay = L_431_forvar1.delay + 0.01
				end;
				for L_432_forvar0 = 2, # L_156_, 1 do
					checkDifferences(L_432_forvar0, L_156_)
				end;
				for L_433_forvar0, L_434_forvar1 in next, L_180_:GetChildren() do
					if L_434_forvar1.Name == "kill" or L_434_forvar1.Name == "newRound" or L_434_forvar1.name == "bombPlant" then
						L_434_forvar1:Destroy()
					end
				end;
				warn("kills:")
				local L_425_ = 5;
				if # L_207_.newKills > 0 then
					for L_435_forvar0, L_436_forvar1 in next, L_207_.newKills do
						local L_437_ = L_145_.events.kill:Clone()
						L_437_.killer.Text = L_436_forvar1.killer;
						L_437_.killer.TextColor3 = Color3.new(L_436_forvar1.killercolor[1], L_436_forvar1.killercolor[2], L_436_forvar1.killercolor[3])
						L_437_.victim.Text = L_436_forvar1.victim;
						L_437_.victim.TextColor3 = Color3.new(L_436_forvar1.victimcolor[1], L_436_forvar1.victimcolor[2], L_436_forvar1.victimcolor[3])
						L_437_.time.Text = tickToSec(L_436_forvar1.tickNumber)
						L_437_.Parent = L_180_;
						L_437_.Position = UDim2.new(0, 30, 0, L_425_)
						L_437_.killtext.Position = L_437_.killer.Position + UDim2.new(0, L_437_.killer.TextBounds.X + 5, 0, 0)
						L_437_.victim.Position = L_437_.killtext.Position + UDim2.new(0, L_437_.killtext.TextBounds.X + 5, 0, 0)
						L_425_ = L_425_ + 35;
						L_437_.move.MouseButton1Click:Connect(function()
							L_169_ = math.clamp(L_436_forvar1.tickNumber - 15, 1, 387420489)
							playTick(L_169_)
						end)
						print(L_436_forvar1.killer, "killed", L_436_forvar1.victim, "tick:", L_436_forvar1.tickNumber)
					end
				else
					print("No kills found!")
				end;
				warn("rounds:")
				if # L_207_.newRounds > 0 then
					for L_438_forvar0, L_439_forvar1 in next, L_207_.newRounds do
						local L_440_ = L_145_.events.newRound:Clone()
						L_440_.text.Text = "Round " .. tostring(L_439_forvar1.round) .. " start"
						L_440_.time.Text = tickToSec(L_439_forvar1.tickNumber)
						L_440_.Parent = L_180_;
						L_440_.Position = UDim2.new(0, 30, 0, L_425_)
						L_425_ = L_425_ + 35;
						L_440_.move.MouseButton1Click:Connect(function()
							L_169_ = L_439_forvar1.tickNumber;
							playTick(L_439_forvar1.tickNumber)
						end)
						print("Round", L_439_forvar1.round, "started tick:", L_439_forvar1.tickNumber)
					end
				else
					print("No new rounds found!")
				end;
				warn("bombplants:")
				if # L_207_.newBombPlants > 0 then
					for L_441_forvar0, L_442_forvar1 in next, L_207_.newBombPlants do
						local L_443_ = L_145_.events.bombPlant:Clone()
						L_443_.time.Text = tickToSec(L_442_forvar1.tickNumber)
						L_443_.Parent = L_180_;
						L_443_.Position = UDim2.new(0, 30, 0, L_425_)
						L_425_ = L_425_ + 35;
						L_443_.move.MouseButton1Click:Connect(function()
							L_169_ = L_442_forvar1.tickNumber;
							playTick(L_442_forvar1.tickNumber)
						end)
						print("Bomb planted on round", L_442_forvar1.round, "tick:", L_442_forvar1.tickNumber)
					end
				else
					print("No bomb plants found!")
				end;
				local L_426_ = L_180_.size.ScrollingFrame;
				L_426_.CanvasSize = UDim2.new(0, 0, 0, 5 + (# L_426_:GetChildren() - 1) * 35)
				L_168_ = 0;
				for L_444_forvar0, L_445_forvar1 in next, L_170_.Regen.Props:GetChildren() do
					L_445_forvar1.Transparency = 0
				end;
				if L_170_.Regen:FindFirstChild("Glasses") then
					for L_446_forvar0, L_447_forvar1 in next, L_170_.Regen.Glasses:GetChildren() do
						L_447_forvar1.Transparency = 0.5
					end
				end;
				L_169_ = 0;
				local L_427_ = 0;
				L_188_ = # L_156_;
				local L_428_ = game:GetService("RunService")
				while L_169_ < # L_156_ do
					L_206_ = true;
					local L_448_ = L_152_.reverse.Value and -1 or 1;
					L_169_ = math.clamp(L_169_ + L_448_, 1, # L_156_)
					local L_449_, L_450_ = 387420489, nil;
					if L_152_.keyframing.Value and L_165_ == "freecam" and L_152_.playing.Value then
						if # L_191_ > 1 then
							for L_451_forvar0, L_452_forvar1 in next, L_191_ do
								if L_452_forvar1.tick < L_449_ then
									L_449_, L_450_ = L_452_forvar1.tick, L_452_forvar1.cf
								end
							end;
							if L_449_ > L_169_ then
								L_169_ = L_449_;
								L_154_.CFrame = L_450_
							end
						end
					end;
					CreateThread(function()
						playTick(L_169_)
					end)
					if L_152_.speed.Value >= 1 and L_152_.speed.Value < 20 then
						for L_453_forvar0 = 1, L_152_.speed.Value do
							wait(0.03)
						end
					else
						L_427_ = L_427_ + 1;
						if L_427_ == L_152_.speed.Value / 10 then
							wait(0.03)
							L_427_ = 0
						end
					end;
					L_176_.playing.Visible = false;
					if not L_152_.playing.Value then
						L_176_.playing.Visible = true;
						repeat
							wait()
						until L_152_.playing.Value or L_152_.stop.Value
					end;
					if L_152_.stop.Value then
						break
					end
				end
			end
		end;
		L_206_ = false;
		L_176_.player.pauseresume.Image = "rbxassetid://4458863290"
		if L_152_.stop.Value then
			L_191_ = {}
			if L_179_.flags["depth_of_field_map"] then
				L_179_.options["depth_of_field_map"].changeState(false)
			end;
			if L_179_.flags["greenscreen_map"] then
				L_179_.options["greenscreen_map"].changeState(false)
			end;
			for L_454_forvar0, L_455_forvar1 in next, L_180_:GetChildren() do
				if L_455_forvar1.Name == "kill" or L_455_forvar1.Name == "newRound" or L_455_forvar1.name == "bombPlant" then
					L_455_forvar1:Destroy()
				end
			end;
			L_162_ = false;
			L_149_.Blur.Enabled = true;
			L_176_.demolist.Visible = true;
			L_176_.player.Visible = false;
			L_176_.settings.Visible = false;
			L_176_.playing.Visible = false;
			L_176_.hud.Spectate.Visible = false;
			L_176_.hud.Vitals.Visible = false;
			L_176_.hud.AmmoGUI.Visible = false;
			L_176_.crosshair.Visible = false;
			if L_149_:FindFirstChild("Sky") then
				L_149_.Sky:Destroy()
			end;
			updateKeyframes()
			if workspace:FindFirstChild("Map") then
				workspace.Map:Destroy()
			end;
			for L_456_forvar0, L_457_forvar1 in next, workspace.demoModels:GetDescendants() do
				if not L_457_forvar1:IsA("Folder") then
					L_457_forvar1:Destroy()
				end
			end
		end
	end;
	workspace.start.Event:Connect(playDemo)
	workspace.changeAmount.Event:Connect(function(L_458_arg0)
		L_169_ = L_169_ + L_458_arg0;
		if not L_152_.playing.Value then
			playTick(L_169_)
		end
	end)
	workspace.changeTick.Event:Connect(function(L_459_arg0)
		if L_206_ then
			L_169_ = math.clamp(math.floor(L_188_ / 100 * L_459_arg0), 1, L_188_) - 1;
			ignoreSound = true;
			playTick(L_169_)
		end
	end)
	L_176_.player.pauseresume.MouseButton1Click:Connect(function()
		if not L_206_ then
			for L_460_forvar0, L_461_forvar1 in next, workspace.demoModels:GetDescendants() do
				if not L_461_forvar1:IsA("Folder") then
					L_461_forvar1:Destroy()
				end
			end;
			playDemo(L_205_)
		end
	end)
	L_176_.player.stop.MouseButton1Click:Connect(function()
		if not L_206_ then
			if not L_152_.playing.Value then
				L_162_ = false;
				L_149_.Blur.Enabled = true;
				L_176_.demolist.Visible = true;
				L_176_.player.Visible = false;
				L_176_.settings.Visible = false;
				L_149_.Sky.SkyboxBk = ""
				L_149_.Sky.SkyboxDn = ""
				L_149_.Sky.SkyboxFt = ""
				L_149_.Sky.SkyboxLf = ""
				L_149_.Sky.SkyboxRt = ""
				L_149_.Sky.SkyboxUp = ""
				workspace.Map:Destroy()
				for L_462_forvar0, L_463_forvar1 in next, workspace.demoModels:GetDescendants() do
					if not L_463_forvar1:IsA("Folder") then
						L_463_forvar1:Destroy()
					end
				end
			end
		end
	end)
	L_176_.player.reverse.MouseButton1Click:Connect(function()
		L_152_.reverse.Value = not L_152_.reverse.Value;
		L_176_.player.reverse.Text = "Reverse: " .. tostring(L_152_.reverse.Value)
	end)
	local L_208_ = 5;
	local L_209_ = Vector2.new(0, math.rad(-60))
	local L_210_ = {
		math.rad(-81),
		math.rad(20)
	}
	game:GetService("RunService").RenderStepped:Connect(function()
		if L_165_ == "follow" then
			if workspace.demoModels:FindFirstChild(L_164_) then
				if L_161_ and L_183_[L_164_] and L_185_[L_164_] ~= "" then
					L_154_.CameraType = "Scriptable"
					L_154_.CameraSubject = nil;
					local L_464_ = L_183_[L_164_]:split(" ")
					local L_465_ = TweenInfo.new(workspace.settings.tween.Value, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
					local L_466_ = L_150_:Create(L_154_, L_465_, {
						CFrame = CFrame.new(Vector3.new(L_464_[1], L_464_[2], L_464_[3]), Vector3.new(L_464_[4], L_464_[5], L_464_[6])) + L_202_
					})
					L_466_:Play()
					if L_166_ and (L_185_[L_164_] ~= L_166_.Name or not L_161_) then
						L_166_:Destroy()
						L_166_ = nil
					end;
					if not L_166_ then
						L_166_ = L_145_.Viewmodels["v_" .. L_185_[L_164_]]:Clone()
						L_166_.Name = L_185_[L_164_]
						L_166_.Parent = workspace.demoModels;
						L_166_["Right Arm"].Transparency = 1;
						local L_467_ = L_145_.Viewmodels[L_184_[L_164_]]:Clone()
						local L_468_ = Instance.new("Weld", L_467_["Right Arm"])
						L_468_.C0 = CFrame.Angles(math.rad(90), math.rad(0), math.rad(-90))
						L_468_.Part0 = L_467_["Right Arm"]
						L_468_.Part1 = L_166_["Right Arm"]
						if L_166_:FindFirstChild("Left Arm") then
							local L_471_ = Instance.new("Weld", L_467_["Left Arm"])
							L_471_.C0 = CFrame.Angles(math.rad(90), math.rad(0), math.rad(-90))
							L_166_["Left Arm"].Transparency = 1;
							L_471_.Part0 = L_467_["Left Arm"]
							L_471_.Part1 = L_166_["Left Arm"]
						else
							L_467_["Left Arm"]:Destroy()
						end;
						L_467_.Name = "arms"
						L_467_.Parent = L_166_;
						local L_469_ = L_145_.Skins:FindFirstChild(L_185_[L_164_]) and L_145_.Skins[L_185_[L_164_]]:FindFirstChild(L_186_[L_164_]) or nil;
						if L_469_ then
							for L_472_forvar0, L_473_forvar1 in next, L_166_:GetChildren() do
								if L_473_forvar1.ClassName == "MeshPart" then
									local L_474_ = L_469_:FindFirstChild(L_473_forvar1.Name, true)
									if L_474_ then
										L_473_forvar1.TextureID = L_474_.Value
									end
								end
							end
						end;
						local L_470_ = L_166_.Guy:LoadAnimation(L_166_.equip)
						if L_145_.Weapons:FindFirstChild(L_185_[L_164_]) then
							if L_145_.Weapons[L_185_[L_164_]].Model:FindFirstChild("Equip") then
								playAudio(L_145_.Weapons[L_185_[L_164_]].Model.Equip, workspace)
							else
								local L_475_ = L_145_.Weapons[L_185_[L_164_]].Model:FindFirstChild("bolt") or L_145_.Weapons[L_185_[L_164_]].Model:FindFirstChild("slide")
								local L_476_ = L_145_.Weapons[L_185_[L_164_]].Model:FindFirstChild("boltin") or L_145_.Weapons[L_185_[L_164_]].Model:FindFirstChild("slidein")
								if L_475_ and L_476_ then
									spawn(function()
										wait(0.1)
										playAudio(L_475_, workspace)
										wait(L_475_.TimeLength * 0.75 * L_159_[L_167_])
										playAudio(L_476_, workspace)
									end)
								end
							end
						end;
						L_470_:Play()
						L_470_:AdjustSpeed(L_158_[L_167_])
					end;
					L_166_:SetPrimaryPartCFrame((L_189_ and CFrame.new() or L_154_.CFrame * L_196_ * L_197_) * CFrame.new((L_179_.flags["viewmodel_x"] - 20) / 10, (L_179_.flags["viewmodel_y"] - 20) / 10, (L_179_.flags["viewmodel_z"] - 20) / 10))
				else
					L_154_.CameraType = "Follow"
					L_154_.CameraSubject = workspace.demoModels[L_164_].LowerTorso
				end
			end
		elseif L_165_ == "freecam" then
			L_154_.CameraType = "Scriptable"
			L_154_.CameraSubject = nil;
			if not (L_152_.keyframing.Value and L_152_.playing.Value) then
				local L_477_ = L_154_.CFrame.LookVector / 50 * L_179_.flags["camera_speed"]
				local L_478_ = Vector3.new()
				L_478_ = L_147_:IsKeyDown(Enum.KeyCode.W) and L_478_ + L_477_ or L_478_;
				L_478_ = L_147_:IsKeyDown(Enum.KeyCode.S) and L_478_ - L_477_ or L_478_;
				L_478_ = L_147_:IsKeyDown(Enum.KeyCode.D) and L_478_ + Vector3.new(- L_477_.Z, 0, L_477_.X) or L_478_;
				L_478_ = L_147_:IsKeyDown(Enum.KeyCode.A) and L_478_ - Vector3.new(- L_477_.Z, 0, L_477_.X) or L_478_;
				L_478_ = L_147_:IsKeyDown(Enum.KeyCode.Q) and L_478_ + Vector3.new(0, L_477_.Y, 0) or L_478_;
				L_478_ = L_147_:IsKeyDown(Enum.KeyCode.E) and L_478_ - Vector3.new(0, L_477_.Y, 0) or L_478_;
				L_478_ = L_478_ * 1.25;
				local L_479_ = L_147_:GetMouseDelta() / 30;
				L_209_ = L_209_ + L_479_ * math.rad(15)
				local L_480_ = CFrame.Angles(0, - L_209_.X, 0) * CFrame.Angles(- L_209_.Y, 0, 0)
				L_154_.CFrame = L_480_ + L_154_.CFrame.p + L_478_ + L_480_ * Vector3.new(0, 0, 0)
			end;
			if L_166_ then
				L_166_:Destroy()
				L_166_ = nil
			end
		end;
		L_175_.Saturation = L_179_.flags["world_saturation"] and L_179_.flags["saturation_value"] / 50 or 0;
		if L_179_.flags["world_gradient"] then
			L_149_.Ambient = L_179_.flags["gradient_color"]
			L_149_.OutdoorAmbient = L_179_.flags["outdoor_gradient_color"]
		else
			L_149_.Ambient = L_173_;
			L_149_.OutdoorAmbient = L_174_
		end;
		L_147_.MouseBehavior = L_162_ and not L_176_.player.Visible and Enum.MouseBehavior.LockCenter or Enum.MouseBehavior.Default;
		L_147_.MouseIconEnabled = L_176_.demolist.Visible or L_176_.player.Visible;
		game.StarterGui:SetCoreGuiEnabled("PlayerList", false)
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
		game.CoreGui.ThemeProvider.Enabled = false;
		game.CoreGui.TopBarApp.Enabled = false
	end)
	game:GetService("RunService").Stepped:Connect(function()
		for L_481_forvar0, L_482_forvar1 in next, workspace.demoModels:GetChildren() do
			if L_482_forvar1:IsA("Model") then
				for L_483_forvar0, L_484_forvar1 in next, L_482_forvar1:GetChildren() do
					if L_484_forvar1:IsA("BasePart") then
						L_484_forvar1.CanCollide = false
					end
				end
			end
		end
	end)
	game:GetService("UserInputService").InputBegan:Connect(function(L_485_arg0)
		if L_485_arg0.UserInputType == Enum.UserInputType.MouseButton1 then
			if L_172_.Target and L_172_.Target.Parent.Parent == workspace.demoModels and L_172_.Target.Parent:FindFirstChild("FakeHead") then
				L_164_ = L_172_.Target.Parent.Name;
				L_165_ = "follow"
				if not L_152_.playing.Value then
					playTick(L_169_)
				end
			end
		elseif L_485_arg0.KeyCode == L_179_.flags["toggle_ui"] and L_162_ then
			L_176_.player.Visible = not L_176_.player.Visible;
			L_176_.settings.Visible = L_176_.player.Visible;
			L_179_.scrolling = false;
			L_179_.colorpicking = false;
			for L_486_forvar0, L_487_forvar1 in next, L_179_.toInvis do
				L_487_forvar1.Visible = false
			end
		elseif L_485_arg0.KeyCode == L_179_.flags["toggle_spec_mode"] then
			L_165_ = L_165_ == "follow" and "freecam" or L_165_;
			if not L_152_.playing.Value then
				playTick(L_169_)
			end
		elseif L_485_arg0.KeyCode == L_179_.flags["pause_resume"] then
			if not L_206_ and L_162_ then
				for L_488_forvar0, L_489_forvar1 in next, workspace.demoModels:GetDescendants() do
					if not L_489_forvar1:IsA("Folder") then
						L_489_forvar1:Destroy()
					end
				end;
				playDemo(L_205_)
			elseif L_162_ then
				L_152_.playing.Value = not L_152_.playing.Value
			end
		elseif L_485_arg0.KeyCode == Enum.KeyCode.Left then
			L_169_ = L_169_ - 1;
			if not L_152_.playing.Value then
				playTick(L_169_)
			end
		elseif L_485_arg0.KeyCode == Enum.KeyCode.Right then
			L_169_ = L_169_ + 1;
			if not L_152_.playing.Value then
				playTick(L_169_)
			end
		elseif L_485_arg0.KeyCode == L_179_.flags["toggle_firstperson"] then
			L_161_ = not L_161_;
			if not L_152_.playing.Value then
				playTick(L_169_)
			end
		elseif L_485_arg0.KeyCode == L_179_.flags["increase_playback_speed"] then
			L_167_ = math.clamp(L_167_ + 1, 1, 5)
			workspace.settings.speed.Value = L_157_[L_167_]
		elseif L_485_arg0.KeyCode == L_179_.flags["decrease_playback_speed"] then
			L_167_ = math.clamp(L_167_ - 1, 1, 5)
			workspace.settings.speed.Value = L_157_[L_167_]
		elseif L_485_arg0.KeyCode == Enum.KeyCode.Z then
		elseif L_485_arg0.KeyCode == Enum.KeyCode.F then
		end
	end)
	L_154_:GetPropertyChangedSignal("CFrame"):Connect(function()
		if L_166_ and L_161_ and L_166_.PrimaryPart then
			L_166_:SetPrimaryPartCFrame((L_189_ and CFrame.new() or L_154_.CFrame * L_196_ * L_197_) * CFrame.new((L_179_.flags["viewmodel_x"] - 20) / 10, (L_179_.flags["viewmodel_y"] - 20) / 10, (L_179_.flags["viewmodel_z"] - 20) / 10))
		end
	end)
	function draggable(L_490_arg0)
		local L_491_ = L_147_;
		local L_492_;
		local L_493_;
		local L_494_;
		local L_495_;
		local function L_496_func(L_497_arg0)
			if not L_179_.colorpicking then
				local L_498_ = L_497_arg0.Position - L_494_;
				L_490_arg0.Position = UDim2.new(L_495_.X.Scale, L_495_.X.Offset + L_498_.X, L_495_.Y.Scale, L_495_.Y.Offset + L_498_.Y)
			end
		end;
		L_490_arg0.InputBegan:Connect(function(L_499_arg0)
			if L_499_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_499_arg0.UserInputType == Enum.UserInputType.Touch then
				L_492_ = true;
				L_494_ = L_499_arg0.Position;
				L_495_ = L_490_arg0.Position;
				L_499_arg0.Changed:Connect(function()
					if L_499_arg0.UserInputState == Enum.UserInputState.End then
						L_492_ = false
					end
				end)
			end
		end)
		L_490_arg0.InputChanged:Connect(function(L_500_arg0)
			if L_500_arg0.UserInputType == Enum.UserInputType.MouseMovement or L_500_arg0.UserInputType == Enum.UserInputType.Touch then
				L_493_ = L_500_arg0
			end
		end)
		L_491_.InputChanged:Connect(function(L_501_arg0)
			if L_501_arg0 == L_493_ and L_492_ then
				L_496_func(L_501_arg0)
			end
		end)
	end;
	draggable(L_177_.settings)
	function L_179_:addTab(L_502_arg0)
		local L_503_ = L_178_.tab:Clone()
		local L_504_ = L_178_.tabbuttons.button:Clone()
		table.insert(L_179_.tabs, L_503_)
		L_503_.Parent = L_178_;
		L_503_.Visible = false;
		table.insert(L_179_.tabbuttons, L_504_)
		L_504_.Parent = L_178_.tabbuttons;
		L_504_.Modal = true;
		L_504_.Visible = true;
		L_504_.Text = L_502_arg0;
		L_504_.MouseButton1Click:Connect(function()
			for L_509_forvar0, L_510_forvar1 in next, L_179_.tabs do
				L_510_forvar1.Visible = L_510_forvar1 == L_503_
			end;
			for L_511_forvar0, L_512_forvar1 in next, L_179_.toInvis do
				L_512_forvar1.Visible = false
			end
		end)
		for L_513_forvar0, L_514_forvar1 in next, L_179_.tabbuttons do
			L_514_forvar1.Size = UDim2.new(1 / # L_179_.tabbuttons, 0, 1, 0)
		end;
		local L_505_ = {}
		local L_506_ = 0;
		local L_507_ = 0;
		local L_508_ = 2000;
		function L_505_:createGroup(L_515_arg0)
			local L_516_ = Instance.new("Frame")
			local L_517_ = Instance.new("Frame")
			local L_518_ = Instance.new("UIListLayout")
			L_506_ = L_506_ - 1;
			L_516_.Parent = L_503_[L_515_arg0 == 0 and "left" or "right"]
			L_516_.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			L_516_.BorderSizePixel = 0;
			L_516_.Size = UDim2.new(1, -5, 0, 10)
			L_516_.ZIndex = L_506_;
			L_516_.Parent.UIListLayout.Padding = UDim.new(0, 5)
			L_517_.Parent = L_516_;
			L_517_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_517_.BackgroundTransparency = 1;
			L_517_.Position = UDim2.new(0, 5, 0, 7)
			L_517_.Size = UDim2.new(1, 0, 1, 0)
			L_518_.Parent = L_517_;
			L_518_.Padding = UDim.new(0, 5)
			L_518_.SortOrder = "LayoutOrder"
			local L_519_ = {}
			function L_519_:addToggle(L_520_arg0)
				if not L_520_arg0.flag and L_520_arg0.text then
					L_520_arg0.flag = L_520_arg0.text
				end;
				if not L_520_arg0.flag then
					return warn("âš ï¸ incorrect arguments âš ï¸")
				end;
				L_516_.Size = L_516_.Size + UDim2.new(0, 0, 0, 23)
				local L_521_ = Instance.new("TextButton")
				local L_522_ = Instance.new("Frame")
				local L_523_ = Instance.new("TextLabel")
				L_507_ = L_507_ - 1;
				L_521_.Parent = L_517_;
				L_521_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_521_.BackgroundTransparency = 1;
				L_521_.Size = UDim2.new(1, 0, 0, 18)
				L_521_.Text = ""
				L_521_.TextColor3 = Color3.fromRGB(0, 0, 0)
				L_521_.TextSize = 14;
				L_521_.ZIndex = L_507_;
				L_522_.Parent = L_521_;
				L_522_.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				L_522_.BorderColor3 = Color3.fromRGB(50, 50, 50)
				L_522_.Size = UDim2.new(0, 18, 0, 18)
				L_523_.Parent = L_522_;
				L_523_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_523_.BorderSizePixel = 0;
				L_523_.Position = UDim2.new(1, 10, 0, 0)
				L_523_.Size = UDim2.new(0, 0, 1, 0)
				L_523_.Font = "SourceSans"
				L_523_.Text = L_520_arg0.text or L_520_arg0.flag;
				L_523_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_523_.TextSize = 16;
				L_523_.TextXAlignment = "Left"
				local L_524_ = false;
				local function L_525_func(L_526_arg0)
					L_524_ = L_526_arg0;
					L_522_.BackgroundColor3 = L_524_ and L_179_.libColor or Color3.fromRGB(20, 20, 20)
					L_179_.flags[L_520_arg0.flag] = L_524_;
					if L_520_arg0.callback then
						L_520_arg0.callback(L_524_)
					end
				end;
				L_521_.MouseButton1Click:Connect(function()
					L_524_ = not L_524_;
					L_522_.BackgroundColor3 = L_524_ and L_179_.libColor or Color3.fromRGB(20, 20, 20)
					L_179_.flags[L_520_arg0.flag] = L_524_;
					if L_520_arg0.callback then
						L_520_arg0.callback(L_524_)
					end
				end)
				L_179_.flags[L_520_arg0.flag] = false;
				L_179_.options[L_520_arg0.flag] = {
					type = "toggle",
					changeState = L_525_func,
					skipflag = L_520_arg0.skipflag,
					oldargs = L_520_arg0
				}
				if L_520_arg0.state then
					L_525_func(L_520_arg0.state)
				end
			end;
			function L_519_:addButton(L_527_arg0)
				if not L_527_arg0.callback or not L_527_arg0.text then
					return warn("âš ï¸ incorrect arguments âš ï¸")
				end;
				L_516_.Size = L_516_.Size + UDim2.new(0, 0, 0, 23)
				local L_528_ = Instance.new("TextButton")
				L_528_.Parent = L_517_;
				L_528_.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				L_528_.BorderColor3 = Color3.fromRGB(50, 50, 50)
				L_528_.Size = UDim2.new(1, -10, 0, 18)
				L_528_.AutoButtonColor = false;
				L_528_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_528_.Font = "SourceSans"
				L_528_.TextSize = 16;
				L_528_.Text = L_527_arg0.text;
				L_528_.MouseButton1Click:Connect(function()
					if not L_179_.colorpicking then
						L_527_arg0.callback()
					end
				end)
			end;
			function L_519_:addSlider(L_529_arg0)
				if not L_529_arg0.flag or not L_529_arg0.max then
					return warn("âš ï¸ incorrect arguments âš ï¸")
				end;
				L_516_.Size = L_516_.Size + UDim2.new(0, 0, 0, 41)
				local L_530_ = Instance.new("Frame")
				local L_531_ = Instance.new("TextButton")
				local L_532_ = Instance.new("TextLabel")
				local L_533_ = Instance.new("Frame")
				local L_534_ = Instance.new("TextLabel")
				L_530_.Parent = L_517_;
				L_530_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_530_.BackgroundTransparency = 1;
				L_530_.Size = UDim2.new(1, 0, 0, 36)
				L_531_.Parent = L_530_;
				L_531_.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				L_531_.BorderColor3 = Color3.fromRGB(50, 50, 50)
				L_531_.Position = UDim2.new(0, 0, 0, 18)
				L_531_.Size = UDim2.new(1, -10, 0, 18)
				L_531_.AutoButtonColor = false;
				L_531_.Font = Enum.Font.SourceSans;
				L_531_.Text = ""
				L_531_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_531_.TextSize = 14;
				L_532_.Parent = L_531_;
				L_532_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_532_.BackgroundTransparency = 1;
				L_532_.BorderSizePixel = 0;
				L_532_.Position = UDim2.new(0, 0, -1, 0)
				L_532_.Size = UDim2.new(1, 0, 1, 0)
				L_532_.Font = Enum.Font.SourceSans;
				L_532_.Text = L_529_arg0.text or L_529_arg0.flag;
				L_532_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_532_.TextSize = 16;
				L_532_.TextXAlignment = "Left"
				L_532_.TextYAlignment = "Top"
				L_533_.Parent = L_531_;
				L_533_.BackgroundColor3 = L_179_.libColor;
				L_533_.BorderSizePixel = 0;
				L_533_.Size = UDim2.new(0, 0, 1, 0)
				L_533_.ZIndex = 0;
				L_534_.Parent = L_531_;
				L_534_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_534_.BackgroundTransparency = 1;
				L_534_.Size = UDim2.new(1, 0, 1, 0)
				L_534_.Font = Enum.Font.SourceSans;
				L_534_.Text = "0"
				L_534_.TextColor3 = Color3.fromRGB(150, 150, 150)
				L_534_.TextSize = 16;
				local L_535_ = false;
				local L_536_ = false;
				local L_537_ = 0;
				local function L_538_func(L_540_arg0)
					if L_540_arg0 ~= 0 then
						L_533_:TweenSize(UDim2.new(L_540_arg0 / L_529_arg0.max, 0, 1, 0), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.01)
					else
						L_533_:TweenSize(UDim2.new(0, 1, 1, 0), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.01)
					end;
					L_534_.Text = L_540_arg0;
					L_179_.flags[L_529_arg0.flag] = L_540_arg0;
					if L_529_arg0.callback then
						L_529_arg0.callback(L_540_arg0)
					end
				end;
				local function L_539_func()
					if L_536_ or L_179_.scrolling or not L_503_.Visible or L_179_.colorpicking then
						return
					end;
					while L_147_:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) and L_177_.Enabled do
						L_171_.RenderStepped:Wait()
						L_179_.scrolling = true;
						L_534_.TextColor3 = Color3.fromRGB(255, 255, 255)
						L_536_ = true;
						local L_541_ = L_529_arg0.min + (L_172_.X - L_531_.AbsolutePosition.X) / L_531_.AbsoluteSize.X * (L_529_arg0.max - L_529_arg0.min)
						if L_541_ < 0 then
							L_541_ = 0
						end;
						if L_541_ > L_529_arg0.max then
							L_541_ = L_529_arg0.max
						end;
						L_538_func(math.floor(L_541_))
					end;
					if L_536_ and not L_535_ then
						L_534_.TextColor3 = Color3.fromRGB(150, 150, 150)
					end;
					if not L_177_.Enabled then
						L_535_ = false
					end;
					L_536_ = false;
					L_179_.scrolling = false
				end;
				L_531_.MouseEnter:connect(function()
					if L_536_ or L_535_ then
						return
					end;
					L_535_ = true;
					L_534_.TextColor3 = Color3.fromRGB(255, 255, 255)
					while L_535_ do
						wait()
						L_539_func()
					end
				end)
				L_531_.MouseLeave:connect(function()
					L_535_ = false;
					L_534_.TextColor3 = Color3.fromRGB(150, 150, 150)
				end)
				if L_529_arg0.value then
					L_538_func(L_529_arg0.value)
				end;
				L_179_.flags[L_529_arg0.flag] = 0;
				L_179_.options[L_529_arg0.flag] = {
					type = "slider",
					changeState = L_538_func,
					skipflag = L_529_arg0.skipflag,
					oldargs = L_529_arg0
				}
				L_538_func(L_529_arg0.value or 0)
			end;
			function L_519_:addDivider()
				L_516_.Size = L_516_.Size + UDim2.new(0, 0, 0, 3)
				local L_542_ = Instance.new("Frame")
				L_542_.Parent = L_517_;
				L_542_.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				L_542_.Size = UDim2.new(1, -10, 0, 1)
				L_542_.BorderSizePixel = 0;
				L_542_.Name = "dontchange"
			end;
			function L_519_:addTextbox(L_543_arg0)
				if not L_543_arg0.flag then
					return warn("âš ï¸ incorrect arguments âš ï¸")
				end;
				local L_544_ = Instance.new("TextBox")
				L_516_.Size = L_516_.Size + UDim2.new(0, 0, 0, 23)
				L_544_:GetPropertyChangedSignal('Text'):Connect(function(L_545_arg0)
					L_179_.flags[L_543_arg0.flag] = L_544_.Text
				end)
				L_544_.Parent = L_517_;
				L_544_.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				L_544_.BorderColor3 = Color3.fromRGB(50, 50, 50)
				L_544_.Size = UDim2.new(1, -10, 0, 18)
				L_544_.ClearTextOnFocus = false;
				L_544_.Font = Enum.Font.SourceSans;
				L_544_.PlaceholderColor3 = Color3.fromRGB(130, 130, 130)
				L_544_.PlaceholderText = L_543_arg0.text or ""
				L_544_.Text = ""
				L_544_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_544_.TextSize = 16;
				L_179_.flags[L_543_arg0.flag] = ""
				L_179_.options[L_543_arg0.flag] = {
					type = "textbox",
					changeState = function(L_546_arg0)
						L_544_.Text = L_546_arg0
					end,
					skipflag = L_543_arg0.skipflag,
					oldargs = L_543_arg0
				}
			end;
			function L_519_:addKeybind(L_547_arg0)
				if not L_547_arg0.flag then
					return warn("âš ï¸ incorrect arguments âš ï¸")
				end;
				L_516_.Size = L_516_.Size + UDim2.new(0, 0, 0, 23)
				local L_548_ = Instance.new("TextButton")
				local L_549_ = Instance.new("TextLabel")
				local L_550_ = Instance.new("TextLabel")
				local L_551_ = false;
				L_548_.Parent = L_517_;
				L_548_.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				L_548_.BorderColor3 = Color3.fromRGB(50, 50, 50)
				L_548_.Size = UDim2.new(0.55, 0, 0, 18)
				L_548_.AutoButtonColor = false;
				L_548_.TextColor3 = Color3.new(1, 1, 1)
				L_548_.Font = "SourceSans"
				L_548_.TextSize = 16;
				L_548_.Text = ""
				L_550_.Parent = L_548_;
				L_550_.BackgroundTransparency = 1;
				L_550_.Position = UDim2.new(0, 0, 0, 0)
				L_550_.Size = UDim2.new(1, 0, 1, 0)
				L_550_.Font = "SourceSans"
				L_550_.Text = ""
				L_550_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_550_.TextSize = 16;
				L_550_.TextXAlignment = "Left"
				L_550_.ClipsDescendants = true;
				L_550_.TextXAlignment = "Center"
				L_549_.Parent = L_548_;
				L_549_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_549_.BorderSizePixel = 0;
				L_549_.Position = UDim2.new(1, 10, 0, 0)
				L_549_.Size = UDim2.new(0, 0, 1, 0)
				L_549_.Font = "SourceSans"
				L_549_.Text = L_547_arg0.text or L_547_arg0.flag;
				L_549_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_549_.TextSize = 16;
				L_549_.TextXAlignment = "Left"
				function updateValue(L_552_arg0)
					L_179_.flags[L_547_arg0.flag] = L_552_arg0;
					L_550_.Text = string.split(tostring(L_552_arg0), ".")[3]:gsub("MouseButton", "Mouse")
				end;
				L_147_.InputBegan:Connect(function(L_553_arg0)
					local L_554_ = L_553_arg0.KeyCode == Enum.KeyCode.Unknown and L_553_arg0.UserInputType or L_553_arg0.KeyCode;
					if L_551_ then
						if not table.find(L_179_.blacklisted, L_554_) then
							L_551_ = false;
							L_179_.flags[L_547_arg0.flag] = L_554_;
							L_550_.Text = string.split(tostring(L_554_), ".")[3]:gsub("MouseButton", "Mouse")
						end
					end;
					if not L_551_ and L_554_ == L_179_.flags[L_547_arg0.flag] and L_547_arg0.callback then
						L_547_arg0.callback()
					end
				end)
				L_548_.MouseButton1Click:Connect(function()
					L_179_.flags[L_547_arg0.flag] = Enum.KeyCode.Unknown;
					L_550_.Text = "..."
					L_551_ = true
				end)
				L_179_.flags[L_547_arg0.flag] = Enum.KeyCode.Unknown;
				L_179_.options[L_547_arg0.flag] = {
					type = "keybind",
					changeState = updateValue,
					skipflag = L_547_arg0.skipflag,
					oldargs = L_547_arg0
				}
				updateValue(L_547_arg0.key or Enum.KeyCode.Unknown)
			end;
			function L_519_:addList(L_555_arg0)
				if not L_555_arg0.flag or not L_555_arg0.values then
					return warn("âš ï¸ incorrect arguments âš ï¸")
				end;
				L_516_.Size = L_516_.Size + UDim2.new(0, 0, 0, 23)
				L_179_.multiZindex = L_179_.multiZindex - 1;
				local L_556_ = Instance.new("TextButton")
				local L_557_ = Instance.new("Frame")
				local L_558_ = Instance.new("UIListLayout")
				local L_559_ = Instance.new("TextLabel")
				local L_560_ = Instance.new("TextLabel")
				L_558_.Parent = L_557_;
				L_558_.Padding = UDim.new(0, 0)
				L_558_.SortOrder = "LayoutOrder"
				L_556_.Parent = L_517_;
				L_556_.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				L_556_.BorderColor3 = Color3.fromRGB(50, 50, 50)
				L_556_.Size = UDim2.new(0.65, 0, 0, 18)
				L_556_.AutoButtonColor = false;
				L_556_.TextColor3 = Color3.new(1, 1, 1)
				L_556_.Font = "SourceSans"
				L_556_.TextSize = 16;
				L_556_.Text = ""
				L_556_.ZIndex = L_179_.multiZindex;
				L_560_.Parent = L_556_;
				L_560_.BackgroundTransparency = 1;
				L_560_.Position = UDim2.new(0, 0, 0, 0)
				L_560_.Size = UDim2.new(1, 0, 1, 0)
				L_560_.Font = "SourceSans"
				L_560_.Text = L_555_arg0.multiselect and "..." or ""
				L_560_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_560_.TextSize = 16;
				L_560_.TextXAlignment = "Left"
				L_560_.ClipsDescendants = true;
				L_560_.TextXAlignment = "Center"
				L_557_.ZIndex = L_179_.multiZindex;
				L_557_.Visible = false;
				L_557_.Parent = L_556_;
				L_557_.Transparency = 0;
				L_557_.Size = UDim2.new(1, 0, 0, # L_555_arg0.values * 18)
				L_557_.BorderColor3 = Color3.fromRGB(50, 50, 50)
				L_557_.Position = UDim2.new(0, 0, 1, 0)
				L_559_.Parent = L_556_;
				L_559_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_559_.BorderSizePixel = 0;
				L_559_.Position = UDim2.new(1, 10, 0, 0)
				L_559_.Size = UDim2.new(0, 0, 1, 0)
				L_559_.Font = "SourceSans"
				L_559_.Text = L_555_arg0.text or L_555_arg0.flag;
				L_559_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_559_.TextSize = 16;
				L_559_.TextXAlignment = "Left"
				local function L_561_func(L_562_arg0)
					if L_562_arg0 == nil then
						L_560_.Text = ""
						return
					end;
					if L_555_arg0.multiselect then
						if type(L_562_arg0) == "string" then
							if not table.find(L_179_.options[L_555_arg0.flag].values, L_562_arg0) then
								return
							end;
							if table.find(L_179_.flags[L_555_arg0.flag], L_562_arg0) then
								for L_564_forvar0, L_565_forvar1 in pairs(L_179_.flags[L_555_arg0.flag]) do
									if L_565_forvar1 == L_562_arg0 then
										table.remove(L_179_.flags[L_555_arg0.flag], L_564_forvar0)
									end
								end
							else
								table.insert(L_179_.flags[L_555_arg0.flag], L_562_arg0)
							end
						else
							L_179_.flags[L_555_arg0.flag] = L_562_arg0
						end;
						local L_563_ = ""
						for L_566_forvar0, L_567_forvar1 in pairs(L_179_.flags[L_555_arg0.flag]) do
							local L_568_ = L_566_forvar0 ~= # L_179_.flags[L_555_arg0.flag] and "," or ""
							L_563_ = L_563_ .. " " .. L_567_forvar1 .. L_568_
						end;
						if L_563_ == "" then
							L_563_ = "..."
						end;
						for L_569_forvar0, L_570_forvar1 in next, L_557_:GetChildren() do
							if L_570_forvar1.ClassName ~= "TextButton" then
								continue;
							end;
							L_570_forvar1.TextColor3 = Color3.new(0.65, 0.65, 0.65)
							for L_571_forvar0, L_572_forvar1 in next, L_179_.flags[L_555_arg0.flag] do
								if L_570_forvar1.Name == L_572_forvar1 then
									L_570_forvar1.TextColor3 = Color3.new(1, 1, 1)
								end
							end
						end;
						L_560_.Text = L_563_;
						if L_555_arg0.callback then
							L_555_arg0.callback(L_179_.flags[L_555_arg0.flag])
						end
					else
						if not table.find(L_179_.options[L_555_arg0.flag].values, L_562_arg0) then
							L_562_arg0 = L_179_.options[L_555_arg0.flag].values[1]
						end;
						L_179_.flags[L_555_arg0.flag] = L_562_arg0;
						for L_573_forvar0, L_574_forvar1 in next, L_557_:GetChildren() do
							if L_574_forvar1.ClassName ~= "TextButton" then
								continue;
							end;
							L_574_forvar1.TextColor3 = Color3.new(0.65, 0.65, 0.65)
							if L_574_forvar1.Name == L_179_.flags[L_555_arg0.flag] then
								L_574_forvar1.TextColor3 = Color3.new(1, 1, 1)
							end
						end;
						L_557_.Visible = false;
						if L_179_.flags[L_555_arg0.flag] then
							L_560_.Text = L_179_.flags[L_555_arg0.flag]
							if L_555_arg0.callback then
								L_555_arg0.callback(L_179_.flags[L_555_arg0.flag])
							end
						end
					end
				end;
				function refresh(L_575_arg0)
					for L_576_forvar0, L_577_forvar1 in next, L_557_:GetChildren() do
						if L_577_forvar1.ClassName == "TextButton" then
							L_577_forvar1:Destroy()
						end
					end;
					for L_578_forvar0, L_579_forvar1 in pairs(L_575_arg0) do
						local L_580_ = Instance.new("TextButton")
						L_580_.ZIndex = 1000;
						L_580_.Visible = true;
						L_580_.Parent = L_557_;
						L_580_.Transparency = 0;
						L_580_.Size = UDim2.new(1, 0, 0, 18)
						L_580_.Position = UDim2.new(0, 0, 0, 0)
						L_580_.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
						L_580_.TextColor3 = L_555_arg0.multiselect and Color3.new(0.65, 0.65, 0.65) or Color3.new(1, 1, 1)
						L_580_.BorderSizePixel = 0;
						L_580_.AutoButtonColor = false;
						L_580_.TextSize = 16;
						L_580_.Font = "SourceSans"
						L_580_.Text = L_579_forvar1;
						L_580_.Name = L_579_forvar1;
						L_580_.MouseButton1Click:Connect(function()
							L_561_func(L_579_forvar1)
						end)
					end;
					L_179_.options[L_555_arg0.flag].values = L_575_arg0;
					L_561_func(table.find(L_179_.options[L_555_arg0.flag].values, L_179_.flags[L_555_arg0.flag]) and L_179_.flags[L_555_arg0.flag] or L_179_.options[L_555_arg0.flag].values[1])
				end;
				L_556_.MouseButton1Click:Connect(function()
					if not L_179_.colorpicking then
						L_557_.Visible = not L_557_.Visible
					end
				end)
				table.insert(L_179_.toInvis, L_557_)
				L_179_.flags[L_555_arg0.flag] = L_555_arg0.multiselect and {} or ""
				L_179_.options[L_555_arg0.flag] = {
					type = "list",
					changeState = L_561_func,
					values = L_555_arg0.values,
					refresh = refresh,
					skipflag = L_555_arg0.skipflag,
					oldargs = L_555_arg0
				}
				refresh(L_555_arg0.values)
				L_561_func(L_555_arg0.value or not L_555_arg0.multiselect and L_555_arg0.values[1] or "abcdefghijklmnopqrstuwvxyz")
			end;
			function L_519_:addColorpicker(L_581_arg0)
				if not L_581_arg0.flag then
					return warn("âš ï¸ incorrect arguments âš ï¸")
				end;
				L_516_.Size = L_516_.Size + UDim2.new(0, 0, 0, 20)
				L_179_.multiZindex = L_179_.multiZindex - 1;
				L_507_ = L_507_ - 1;
				L_508_ = L_508_ - 1;
				local L_582_ = Instance.new("TextButton")
				local L_583_ = Instance.new("Frame")
				local L_584_ = Instance.new("TextLabel")
				local L_585_ = Instance.new("ImageLabel")
				local L_586_ = Instance.new("ImageLabel")
				L_583_.ZIndex = L_179_.multiZindex;
				L_583_.Visible = false;
				L_583_.Parent = L_582_;
				L_583_.Transparency = 0;
				L_583_.Size = UDim2.new(0, 120, 0, 100)
				L_583_.Position = UDim2.new(1, 0, 1, 0)
				L_585_.Parent = L_583_;
				L_585_.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
				L_585_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_585_.Size = UDim2.new(0, 100, 0, 100)
				L_585_.Image = "rbxassetid://2615689005"
				L_585_.Name = "dontchange"
				L_586_.Parent = L_583_;
				L_586_.AnchorPoint = Vector2.new(1, 0)
				L_586_.BackgroundColor3 = Color3.fromRGB(248, 248, 248)
				L_586_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_586_.Position = UDim2.new(1, 0, 0, 0)
				L_586_.Size = UDim2.new(0, 20, 0, 100)
				L_586_.Image = "rbxassetid://2615692420"
				L_582_.Parent = L_517_;
				L_582_.BackgroundColor3 = L_581_arg0.color or Color3.new(1, 1, 1)
				L_582_.BorderColor3 = Color3.fromRGB(50, 50, 50)
				L_582_.Size = UDim2.new(0, 35, 0, 15)
				L_582_.AutoButtonColor = false;
				L_582_.ZIndex = L_581_arg0.ontop and L_508_ or L_507_;
				L_582_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_582_.Font = "SourceSans"
				L_582_.TextSize = 16;
				L_582_.Text = ""
				L_582_.Name = "dontchange"
				L_584_.Parent = L_582_;
				L_584_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_584_.BorderSizePixel = 0;
				L_584_.Position = UDim2.new(1, 10, 0, 0)
				L_584_.Size = UDim2.new(0, 0, 1, 0)
				L_584_.Font = "SourceSans"
				L_584_.Text = L_581_arg0.text or L_581_arg0.flag;
				L_584_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_584_.TextSize = 16;
				L_584_.TextXAlignment = "Left"
				L_582_.MouseButton1Click:Connect(function()
					L_583_.Visible = not L_583_.Visible
				end)
				local function L_587_func(L_597_arg0, L_598_arg1)
					if typeof(L_597_arg0) == "table" then
						L_597_arg0 = L_598_arg1
					end;
					L_582_.BackgroundColor3 = L_597_arg0;
					L_179_.flags[L_581_arg0.flag] = L_597_arg0;
					if L_581_arg0.callback then
						L_581_arg0.callback(L_597_arg0)
					end
				end;
				local L_588_, L_589_ = Color3.new(1, 1, 1), Color3.new(0, 0, 0)
				local L_590_ = {
					Color3.new(1, 0, 0),
					Color3.new(1, 1, 0),
					Color3.new(0, 1, 0),
					Color3.new(0, 1, 1),
					Color3.new(0, 0, 1),
					Color3.new(1, 0, 1),
					Color3.new(1, 0, 0)
				}
				local L_591_ = game:GetService("RunService").Heartbeat;
				local L_592_, L_593_, L_594_ = 0, 0, 0;
				local L_595_, L_596_ = 0, 0;
				L_586_.MouseEnter:Connect(function()
					local L_599_ = L_586_.InputBegan:connect(function(L_601_arg0)
						if L_601_arg0.UserInputType == Enum.UserInputType.MouseButton1 then
							while L_591_:wait() and L_147_:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
								L_179_.colorpicking = true;
								local L_602_ = (L_594_ - L_586_.AbsolutePosition.Y - 36) / L_586_.AbsoluteSize.Y;
								local L_603_ = math.max(1, math.min(7, math.floor((L_602_ * 7 + 0.5) * 100) / 100))
								local L_604_ = L_590_[math.floor(L_603_)]
								local L_605_ = L_590_[math.ceil(L_603_)]
								local L_606_ = L_588_:lerp(L_585_.BackgroundColor3, L_595_):lerp(L_589_, L_596_)
								L_585_.BackgroundColor3 = L_604_:lerp(L_605_, L_603_ - math.floor(L_603_)) or Color3.new(0, 0, 0)
								L_587_func(L_606_)
							end;
							L_179_.colorpicking = false
						end
					end)
					local L_600_;
					L_600_ = L_586_.MouseLeave:connect(function()
						L_599_:disconnect()
						L_600_:disconnect()
					end)
				end)
				L_585_.MouseEnter:Connect(function()
					local L_607_ = L_585_.InputBegan:connect(function(L_609_arg0)
						if L_609_arg0.UserInputType == Enum.UserInputType.MouseButton1 then
							while L_591_:wait() and L_147_:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
								L_179_.colorpicking = true;
								local L_610_ = (L_592_ - L_585_.AbsolutePosition.X) / L_585_.AbsoluteSize.X;
								local L_611_ = (L_593_ - L_585_.AbsolutePosition.Y - 36) / L_585_.AbsoluteSize.Y;
								local L_612_ = L_588_:lerp(L_585_.BackgroundColor3, L_610_):lerp(L_589_, L_611_)
								L_587_func(L_612_)
								L_595_, L_596_ = L_610_, L_611_
							end;
							L_179_.colorpicking = false
						end
					end)
					local L_608_;
					L_608_ = L_585_.MouseLeave:connect(function()
						L_607_:disconnect()
						L_608_:disconnect()
					end)
				end)
				L_586_.MouseMoved:connect(function(L_613_arg0, L_614_arg1)
					L_594_ = L_614_arg1
				end)
				L_585_.MouseMoved:connect(function(L_615_arg0, L_616_arg1)
					L_592_, L_593_ = L_615_arg0, L_616_arg1
				end)
				table.insert(L_179_.toInvis, L_583_)
				L_179_.flags[L_581_arg0.flag] = Color3.new(1, 1, 1)
				L_179_.options[L_581_arg0.flag] = {
					type = "colorpicker",
					changeState = L_587_func,
					skipflag = L_581_arg0.skipflag,
					oldargs = L_581_arg0
				}
				L_587_func(L_581_arg0.color or Color3.new(1, 1, 1))
			end;
			function L_519_:addEventList(L_617_arg0)
			end;
			return L_519_, L_516_
		end;
		return L_505_, L_503_
	end;
	if not isfolder("cipex_configs") then
		makefolder("cipex_configs")
	end;
	if not isfolder("cipex_configs/democfg") then
		makefolder("cipex_configs/democfg")
	end;
	function L_179_:saveConfig()
		local L_618_ = L_179_.flags["config_name"]
		if L_618_ == "" then
			L_618_ = L_179_.flags["selected_config"]
		end;
		local L_619_ = {}
		for L_620_forvar0, L_621_forvar1 in next, L_179_.flags do
			if L_179_.options[L_620_forvar0].skipflag then
				continue;
			end;
			if typeof(L_621_forvar1) == "Color3" then
				L_619_[L_620_forvar0] = {
					L_621_forvar1.R,
					L_621_forvar1.G,
					L_621_forvar1.B
				}
			elseif typeof(L_621_forvar1) == "EnumItem" then
				L_619_[L_620_forvar0] = {
					string.split(tostring(L_621_forvar1), ".")[2],
					string.split(tostring(L_621_forvar1), ".")[3]
				}
			else
				L_619_[L_620_forvar0] = L_621_forvar1
			end
		end;
		writefile("cipex_configs/democfg/" .. L_618_ .. ".cfg", game:GetService("HttpService"):JSONEncode(L_619_))
		L_179_:refreshConfigs()
	end;
	function L_179_:loadConfig()
		local L_622_ = L_179_.flags["selected_config"]
		if not isfile("cipex_configs/democfg/" .. L_622_ .. ".cfg") then
			return
		end;
		local L_623_ = game:GetService("HttpService"):JSONDecode(readfile("cipex_configs/democfg/" .. L_622_ .. ".cfg"))
		for L_624_forvar0, L_625_forvar1 in next, L_179_.options do
			spawn(function()
				pcall(function()
					if L_623_[L_624_forvar0] then
						if L_625_forvar1.type == "colorpicker" then
							L_625_forvar1.changeState(Color3.new(L_623_[L_624_forvar0][1], L_623_[L_624_forvar0][2], L_623_[L_624_forvar0][3]))
						elseif L_625_forvar1.type == "keybind" then
							L_625_forvar1.changeState(Enum[L_623_[L_624_forvar0][1]][L_623_[L_624_forvar0][2]])
						else
							if L_623_[L_624_forvar0] ~= L_179_.flags[L_624_forvar0] then
								L_625_forvar1.changeState(L_623_[L_624_forvar0])
							end
						end
					else
						if L_625_forvar1.type == "toggle" then
							L_625_forvar1.changeState(false)
						elseif L_625_forvar1.type == "slider" then
							L_625_forvar1.changeState(L_625_forvar1.args.value or 0)
						elseif L_625_forvar1.type == "textbox" or L_625_forvar1.type == "list" then
							L_625_forvar1.changeState(L_625_forvar1.args.text or "")
						elseif L_625_forvar1.type == "colorpicker" then
							L_625_forvar1.changeState(L_625_forvar1.args.color or Color3.new(1, 1, 1))
						elseif option.type == "list" then
							L_625_forvar1.changeState("")
						elseif option.type == "keybind" then
							L_625_forvar1.changeState(L_625_forvar1.args.key or Enum.KeyCode.Unknown)
						end
					end
				end)
			end)
		end
	end;
	function L_179_:refreshConfigs()
		local L_626_ = {}
		for L_627_forvar0, L_628_forvar1 in next, listfiles("cipex_configs/democfg") do
			table.insert(L_626_, L_628_forvar1:split("\\")[2]:split(".")[1])
		end;
		L_179_.options["selected_config"].refresh(L_626_)
	end;
	function L_179_:deleteConfig()
		if isfile("cipex_configs/democfg/" .. L_179_.flags["selected_config"] .. ".cfg") then
			delfile("cipex_configs/democfg/" .. L_179_.flags["selected_config"] .. ".cfg")
			L_179_:refreshConfigs()
		end
	end;
	local L_211_ = L_179_:addTab("Settings")
	local L_212_ = L_179_:addTab("Visuals")
	local L_213_ = L_179_:addTab("Configuration")
	local L_214_, L_215_ = L_179_:addTab("Events")
	local L_216_ = L_211_:createGroup(0)
	local L_217_ = L_211_:createGroup(0)
	local L_218_ = L_211_:createGroup(0)
	L_216_:addToggle({
		text = "Hide Dropped Weapons",
		flag = "hide_dropped_weapons",
		state = false,
		callback = function()
			playTick(L_169_)
		end
	})
	L_216_:addToggle({
		text = "Hide Character Models",
		flag = "hide_character_models",
		state = false,
		callback = function()
			playTick(L_169_)
		end
	})
	L_216_:addToggle({
		text = "Hide Ragdolls",
		flag = "hide_ragdolls",
		state = false,
		callback = function()
			playTick(L_169_)
		end
	})
	L_216_:addToggle({
		text = "Hide Viewmodel",
		flag = "hide_viewmodel",
		state = false,
		callback = function()
			playTick(L_169_)
		end
	})
	L_216_:addToggle({
		text = "Hide Scope",
		flag = "hide_scope",
		state = false,
		callback = function()
			playTick(L_169_)
		end
	})
	L_216_:addSlider({
		text = "Camera Speed",
		flag = "camera_speed",
		min = 1,
		max = 20,
		value = 1,
		skipflag = true
	})
	L_216_:addList({
		text = "Playback speed",
		flag = "playback_speed",
		values = {
			"0.25",
			"0.5",
			"1",
			"2",
			"4"
		},
		value = "1",
		callback = function(L_629_arg0)
			if L_629_arg0 == "0.25" then
				L_167_ = 1;
				workspace.settings.speed.Value = L_157_[L_167_]
				workspace.settings.tween.Value = 0.16;
				workspace.settings.playertween.Value = 0.16
			elseif L_629_arg0 == "0.5" then
				L_167_ = 2;
				workspace.settings.speed.Value = L_157_[L_167_]
				workspace.settings.tween.Value = 0.08;
				workspace.settings.playertween.Value = 0.08
			elseif L_629_arg0 == "1" then
				L_167_ = 3;
				workspace.settings.speed.Value = L_157_[L_167_]
				workspace.settings.tween.Value = 0.04;
				workspace.settings.playertween.Value = 0.04
			elseif L_629_arg0 == "2" then
				L_167_ = 4;
				workspace.settings.speed.Value = L_157_[L_167_]
				workspace.settings.tween.Value = 0.03;
				workspace.settings.playertween.Value = 0.03
			elseif L_629_arg0 == "4" then
				L_167_ = 5;
				workspace.settings.speed.Value = L_157_[L_167_]
				workspace.settings.tween.Value = 0.02;
				workspace.settings.playertween.Value = 0.02
			end
		end
	})
	L_172_.WheelForward:Connect(function()
		L_179_.options["camera_speed"].changeState(math.clamp(L_179_.flags["camera_speed"] + 1, 1, 20))
	end)
	L_172_.WheelBackward:Connect(function()
		L_179_.options["camera_speed"].changeState(math.clamp(L_179_.flags["camera_speed"] - 1, 1, 20))
	end)
	spawn(function()
		local L_630_ = false;
		local L_631_ = {
			textureinstances = {},
			lights = {},
			materials = {},
			colors = {},
			decals = {},
			textures = {},
			textures2 = {},
			usecolor = {},
			particles = {},
			lenses = {}
		}
		local function L_632_func()
			if L_630_ then
				return
			end;
			L_631_ = {
				textureinstances = {},
				lights = {},
				materials = {},
				colors = {},
				decals = {},
				textures = {},
				textures2 = {},
				usecolor = {},
				particles = {},
				lenses = {}
			}
			L_149_.Bloom.Enabled = false;
			L_149_.GlobalShadows = false;
			L_149_.SunRays.Enabled = false;
			L_149_.FogEnd = 387420489;
			workspace.colorbox:SetPrimaryPartCFrame(workspace.Map:GetChildren()[1].TSpawns:GetChildren()[1].CFrame - Vector3.new(0, 250, 0))
			for L_634_forvar0, L_635_forvar1 in next, workspace.colorbox:GetChildren() do
				L_635_forvar1.Transparency = L_635_forvar1.Name == "Part" and 0 or 1;
				L_635_forvar1.Color = Color3.fromRGB(5, 150, 20)
			end;
			L_149_.Sky.Parent = workspace;
			for L_636_forvar0, L_637_forvar1 in next, workspace.Map:GetDescendants() do
				if L_637_forvar1:IsA("BasePart") then
					table.insert(L_631_.materials, {
						L_637_forvar1,
						L_637_forvar1.Material
					})
					table.insert(L_631_.colors, {
						L_637_forvar1,
						L_637_forvar1.Color
					})
					L_637_forvar1.Material = "Neon"
					L_637_forvar1.Color = Color3.fromRGB(5, 150, 20)
					if L_637_forvar1.ClassName == "UnionOperation" then
						table.insert(L_631_.usecolor, {
							L_637_forvar1,
							L_637_forvar1.UsePartColor
						})
						L_637_forvar1.UsePartColor = true
					end
				end;
				if L_637_forvar1.ClassName == "Decal" then
					table.insert(L_631_.decals, {
						L_637_forvar1,
						L_637_forvar1.Transparency
					})
					L_637_forvar1.Transparency = 1
				end;
				if L_637_forvar1.ClassName == "ParticleEmitter" then
					table.insert(L_631_.particles, {
						L_637_forvar1,
						L_637_forvar1.Enabled
					})
					L_637_forvar1.Enabled = false
				end;
				if hasProperty(L_637_forvar1, "TextureID") then
					table.insert(L_631_.textures, {
						L_637_forvar1,
						L_637_forvar1.TextureID
					})
					L_637_forvar1.TextureID = ""
				end;
				if hasProperty(L_637_forvar1, "TextureId") then
					table.insert(L_631_.textures2, {
						L_637_forvar1,
						L_637_forvar1.TextureId
					})
					L_637_forvar1.TextureId = ""
				end;
				if L_637_forvar1.ClassName == "PointLight" and L_637_forvar1.Enabled then
					table.insert(L_631_.lights, L_637_forvar1)
					L_637_forvar1.Enabled = false
				end;
				if L_637_forvar1.ClassName == "Texture" then
					table.insert(L_631_.textureinstances, {
						L_637_forvar1,
						L_637_forvar1.Transparency
					})
					L_637_forvar1.Transparency = 1
				end
			end;
			for L_638_forvar0, L_639_forvar1 in next, workspace.demoModels:GetChildren() do
				if L_639_forvar1.ClassName == "Model" then
					for L_640_forvar0, L_641_forvar1 in next, L_639_forvar1:GetChildren() do
						if L_641_forvar1.Name == "Lens" then
							table.insert(L_631_.lenses, {
								L_641_forvar1,
								L_641_forvar1.Handle.Reflectance
							})
							L_641_forvar1.Handle.Reflectance = 0
						end
					end
				end
			end;
			L_630_ = true
		end;
		local function L_633_func()
			for L_642_forvar0, L_643_forvar1 in next, workspace.colorbox:GetChildren() do
				L_643_forvar1.Transparency = 1
			end;
			if L_630_ then
				workspace.Sky.Parent = L_149_;
				L_149_.Bloom.Enabled = true;
				L_149_.GlobalShadows = true;
				L_149_.SunRays.Enabled = true;
				L_149_.FogEnd = 10000;
				for L_644_forvar0, L_645_forvar1 in next, L_631_.materials do
					L_645_forvar1[1].Material = L_645_forvar1[2]
				end;
				for L_646_forvar0, L_647_forvar1 in next, L_631_.colors do
					L_647_forvar1[1].Color = L_647_forvar1[2]
				end;
				for L_648_forvar0, L_649_forvar1 in next, L_631_.textures do
					L_649_forvar1[1].TextureID = L_649_forvar1[2]
				end;
				for L_650_forvar0, L_651_forvar1 in next, L_631_.textures2 do
					L_651_forvar1[1].TextureId = L_651_forvar1[2]
				end;
				for L_652_forvar0, L_653_forvar1 in next, L_631_.usecolor do
					L_653_forvar1[1].UsePartColor = L_653_forvar1[2]
				end;
				for L_654_forvar0, L_655_forvar1 in next, L_631_.decals do
					L_655_forvar1[1].Transparency = L_655_forvar1[2]
				end;
				for L_656_forvar0, L_657_forvar1 in next, L_631_.particles do
					L_657_forvar1[1].Enabled = L_657_forvar1[2]
				end;
				for L_658_forvar0, L_659_forvar1 in next, L_631_.lights do
					L_659_forvar1.Enabled = true
				end;
				for L_660_forvar0, L_661_forvar1 in next, L_631_.textureinstances do
					L_661_forvar1[1].Transparency = L_661_forvar1[2]
				end;
				for L_662_forvar0, L_663_forvar1 in next, L_631_.lenses do
					if L_663_forvar1[1] then
						L_663_forvar1[1].Handle.Reflectance = L_663_forvar1[2]
					end
				end;
				L_630_ = false
			end
		end;
		L_217_:addToggle({
			text = "Greenscreen Map",
			flag = "greenscreen_map",
			state = false,
			callback = function()
				if L_179_.flags["depth_of_field_map"] then
					L_179_.options["depth_of_field_map"].changeState(false)
				end;
				if L_179_.flags["greenscreen_map"] and L_179_.flags["depth_of_field_map"] then
					L_179_.flags["greenscreen_map"] = false;
					L_179_.options["depth_of_field_map"].changeState(false)
					L_179_.flags["greenscreen_map"] = true
				end;
				if L_179_.flags["greenscreen_map"] then
					L_632_func()
				else
					L_633_func()
				end
			end
		})
	end)
	spawn(function()
		local L_664_ = false;
		local L_665_ = {
			textureinstances = {},
			lights = {},
			materials = {},
			colors = {},
			decals = {},
			textures = {},
			textures2 = {},
			usecolor = {},
			particles = {},
			lenses = {},
			reflectance = {}
		}
		local function L_666_func()
			if L_664_ then
				return
			end;
			L_665_ = {
				textureinstances = {},
				lights = {},
				materials = {},
				colors = {},
				decals = {},
				textures = {},
				textures2 = {},
				usecolor = {},
				particles = {},
				lenses = {},
				reflectance = {}
			}
			L_149_.Bloom.Enabled = false;
			L_149_.EnvironmentDiffuseScale = 0;
			L_149_.EnvironmentSpecularScale = 0;
			L_149_.GlobalShadows = false;
			L_149_.SunRays.Enabled = false;
			L_149_.Brightness = 0;
			L_149_.FogEnd = 750;
			L_149_.FogColor = Color3.new(1, 1, 1)
			L_149_.ColorCorrection.Enabled = true;
			workspace.colorbox:SetPrimaryPartCFrame(workspace.Map:GetChildren()[1].TSpawns:GetChildren()[1].CFrame - Vector3.new(0, 250, 0))
			for L_669_forvar0, L_670_forvar1 in next, workspace.colorbox:GetChildren() do
				L_670_forvar1.Transparency = L_670_forvar1.Name == "Part" and 0 or 1;
				L_670_forvar1.Color = Color3.fromRGB(158, 160, 158)
			end;
			L_149_.Sky.Parent = workspace;
			local L_668_ = {}
			for L_671_forvar0, L_672_forvar1 in next, workspace.Map:GetDescendants() do
				table.insert(L_668_, L_672_forvar1)
			end;
			for L_673_forvar0, L_674_forvar1 in next, workspace.demoModels:GetDescendants() do
				table.insert(L_668_, L_674_forvar1)
			end;
			for L_675_forvar0, L_676_forvar1 in next, L_668_ do
				if L_676_forvar1:IsA("BasePart") then
					table.insert(L_665_.materials, {
						L_676_forvar1,
						L_676_forvar1.Material
					})
					table.insert(L_665_.colors, {
						L_676_forvar1,
						L_676_forvar1.Color
					})
					table.insert(L_665_.reflectance, {
						L_676_forvar1,
						L_676_forvar1.Reflectance
					})
					L_676_forvar1.Material = "Neon"
					L_676_forvar1.Color = Color3.fromRGB(0, 0, 0)
					L_676_forvar1.Reflectance = 0;
					if L_676_forvar1.ClassName == "UnionOperation" then
						table.insert(L_665_.usecolor, {
							L_676_forvar1,
							L_676_forvar1.UsePartColor
						})
						L_676_forvar1.UsePartColor = true
					end
				end;
				if L_676_forvar1.ClassName == "Decal" then
					table.insert(L_665_.decals, {
						L_676_forvar1,
						L_676_forvar1.Transparency
					})
					L_676_forvar1.Transparency = 1
				end;
				if L_676_forvar1.ClassName == "ParticleEmitter" then
					table.insert(L_665_.particles, {
						L_676_forvar1,
						L_676_forvar1.Enabled
					})
					L_676_forvar1.Enabled = false
				end;
				if hasProperty(L_676_forvar1, "TextureID") then
					table.insert(L_665_.textures, {
						L_676_forvar1,
						L_676_forvar1.TextureID
					})
					L_676_forvar1.TextureID = ""
				end;
				if hasProperty(L_676_forvar1, "TextureId") then
					table.insert(L_665_.textures2, {
						L_676_forvar1,
						L_676_forvar1.TextureId
					})
					L_676_forvar1.TextureId = ""
				end;
				if L_676_forvar1.ClassName == "PointLight" and L_676_forvar1.Enabled then
					table.insert(L_665_.lights, L_676_forvar1)
					L_676_forvar1.Enabled = false
				end;
				if L_676_forvar1.ClassName == "Texture" then
					table.insert(L_665_.textureinstances, {
						L_676_forvar1,
						L_676_forvar1.Transparency
					})
					L_676_forvar1.Transparency = 1
				end
			end;
			for L_677_forvar0, L_678_forvar1 in next, workspace.demoModels:GetChildren() do
				if L_678_forvar1.ClassName == "Model" then
					for L_679_forvar0, L_680_forvar1 in next, L_678_forvar1:GetChildren() do
						if L_680_forvar1.Name == "Lens" then
							table.insert(L_665_.lenses, {
								L_680_forvar1,
								L_680_forvar1.Handle.Reflectance
							})
							L_680_forvar1.Handle.Reflectance = 0
						end
					end
				end
			end;
			L_664_ = true
		end;
		local function L_667_func()
			if L_664_ then
				workspace.Sky.Parent = L_149_;
				L_149_.Bloom.Enabled = true;
				L_149_.EnvironmentDiffuseScale = 1;
				L_149_.EnvironmentSpecularScale = 1;
				L_149_.GlobalShadows = true;
				L_149_.SunRays.Enabled = true;
				L_149_.Brightness = 3;
				L_149_.FogColor = Color3.fromRGB(192, 192, 192)
				L_149_.FogEnd = 10000;
				L_149_.ColorCorrection.Enabled = false;
				for L_681_forvar0, L_682_forvar1 in next, workspace.colorbox:GetChildren() do
					L_682_forvar1.Transparency = 1
				end;
				L_149_.FogEnd = 10000;
				for L_683_forvar0, L_684_forvar1 in next, L_665_.materials do
					L_684_forvar1[1].Material = L_684_forvar1[2]
				end;
				for L_685_forvar0, L_686_forvar1 in next, L_665_.colors do
					L_686_forvar1[1].Color = L_686_forvar1[2]
				end;
				for L_687_forvar0, L_688_forvar1 in next, L_665_.textures do
					L_688_forvar1[1].TextureID = L_688_forvar1[2]
				end;
				for L_689_forvar0, L_690_forvar1 in next, L_665_.textures2 do
					L_690_forvar1[1].TextureId = L_690_forvar1[2]
				end;
				for L_691_forvar0, L_692_forvar1 in next, L_665_.usecolor do
					L_692_forvar1[1].UsePartColor = L_692_forvar1[2]
				end;
				for L_693_forvar0, L_694_forvar1 in next, L_665_.decals do
					L_694_forvar1[1].Transparency = L_694_forvar1[2]
				end;
				for L_695_forvar0, L_696_forvar1 in next, L_665_.particles do
					L_696_forvar1[1].Enabled = L_696_forvar1[2]
				end;
				for L_697_forvar0, L_698_forvar1 in next, L_665_.lights do
					L_698_forvar1.Enabled = true
				end;
				for L_699_forvar0, L_700_forvar1 in next, L_665_.reflectance do
					L_700_forvar1[1].Reflectance = L_700_forvar1[2]
				end;
				for L_701_forvar0, L_702_forvar1 in next, L_665_.textureinstances do
					L_702_forvar1[1].Transparency = L_702_forvar1[2]
				end;
				for L_703_forvar0, L_704_forvar1 in next, L_665_.lenses do
					if L_704_forvar1[1] then
						L_704_forvar1[1].Handle.Reflectance = L_704_forvar1[2]
					end
				end;
				L_664_ = false
			end
		end;
		L_217_:addToggle({
			text = "Depth of Field Map",
			flag = "depth_of_field_map",
			state = false,
			callback = function()
				if L_179_.flags["greenscreen_map"] and L_179_.flags["depth_of_field_map"] then
					L_179_.flags["depth_of_field_map"] = false;
					L_179_.options["greenscreen_map"].changeState(false)
					L_179_.flags["depth_of_field_map"] = true
				end;
				if L_179_.flags["depth_of_field_map"] then
					L_666_func()
				else
					L_667_func()
				end
			end
		})
	end)
	wait(0.1)
	L_218_:addToggle({
		text = "Show Killfeed",
		flag = "show_killfeed",
		callback = function()
			playTick(L_169_)
		end,
		state = true
	})
	L_218_:addToggle({
		text = "Show HUD",
		flag = "show_hud",
		callback = function()
			playTick(L_169_)
		end,
		state = true
	})
	L_218_:addToggle({
		text = "Hide Crosshair",
		flag = "hide_crosshair",
		callback = function()
			playTick(L_169_)
		end,
		state = false
	})
	local L_219_ = L_212_:createGroup(0)
	L_219_:addToggle({
		text = "Depth of Field Effect",
		flag = "depth_of_field_effect",
		state = false,
		callback = function(L_705_arg0)
			L_149_.DepthOfField.Enabled = L_705_arg0
		end
	})
	L_219_:addToggle({
		text = "Better Shadows",
		flag = "better_shadows",
		callback = function()
			sethiddenproperty(L_149_, "Technology", L_179_.flags["better_shadows"] and Enum.Technology.Future or Enum.Technology.Compatibility)
		end
	})
	L_219_:addToggle({
		text = "Saturation",
		flag = "world_saturation"
	})
	L_219_:addToggle({
		text = "Gradient",
		flag = "world_gradient"
	})
	L_219_:addColorpicker({
		text = "Gradient Color",
		ontop = true,
		flag = "gradient_color",
		color = Color3.new(0.4, 0.4, 0.8)
	})
	L_219_:addColorpicker({
		text = "Outdoor Gradient Color",
		ontop = true,
		flag = "outdoor_gradient_color",
		color = Color3.new(0.25, 0.25, 0.65)
	})
	L_219_:addSlider({
		text = "Saturation Value",
		min = 0,
		max = 100,
		value = 10,
		flag = "saturation_value"
	})
	L_219_:addSlider({
		text = "Time of Day",
		flag = "time_of_day",
		min = 0,
		max = 48,
		value = 24,
		callback = function(L_706_arg0)
			L_149_.ClockTime = L_706_arg0 / 2
		end
	})
	L_219_:addSlider({
		text = "Viewmodel X",
		flag = "viewmodel_x",
		value = 20,
		min = 0,
		max = 40
	})
	L_219_:addSlider({
		text = "Viewmodel Y",
		flag = "viewmodel_y",
		value = 20,
		min = 0,
		max = 40
	})
	L_219_:addSlider({
		text = "Viewmodel Z",
		flag = "viewmodel_z",
		value = 20,
		min = 0,
		max = 40
	})
	local L_220_ = L_213_:createGroup(0)
	L_220_:addKeybind({
		text = "Toggle UI",
		flag = "toggle_ui",
		key = Enum.KeyCode.Delete
	})
	L_220_:addKeybind({
		text = "Pause/Resume",
		flag = "pause_resume",
		key = Enum.KeyCode.Return
	})
	L_220_:addKeybind({
		text = "Toggle Spectator Mode",
		flag = "toggle_spec_mode",
		key = Enum.KeyCode.LeftShift
	})
	L_220_:addKeybind({
		text = "Toggle Firstperson",
		flag = "toggle_firstperson",
		key = Enum.KeyCode.LeftControl
	})
	L_220_:addKeybind({
		text = "Increase Playback Speed",
		flag = "increase_playback_speed",
		key = Enum.KeyCode.Up
	})
	L_220_:addKeybind({
		text = "Decrease Playback Speed",
		flag = "decrease_playback_speed",
		key = Enum.KeyCode.Down
	})
	local L_221_ = L_213_:createGroup(0)
	L_221_:addList({
		text = "Config",
		flag = "selected_config",
		skipflag = true,
		values = {}
	})
	L_221_:addTextbox({
		text = "config name",
		flag = "config_name"
	})
	L_221_:addButton({
		text = "Save Config",
		callback = L_179_.saveConfig
	})
	L_221_:addButton({
		text = "Load Config",
		callback = L_179_.loadConfig
	})
	L_221_:addButton({
		text = "Delete Config",
		callback = L_179_.deleteConfig
	})
	L_221_:addButton({
		text = "Refresh Configs",
		callback = L_179_.refreshConfigs
	})
	L_179_:refreshConfigs()
	L_180_ = L_145_.events.eventHolder:Clone()
	L_180_.Parent = L_215_.left;
	L_176_.wait.TextLabel.Text = "Loading " .. tostring(# listfiles("cipex_configs/demos/")) .. " demos..."
	wait()
	for L_707_forvar0, L_708_forvar1 in pairs(listfiles("cipex_configs/demos/")) do
		local L_709_ = Instance.new("Folder", game.ReplicatedStorage.Demos)
		L_709_.Name = tostring(L_708_forvar1):split("/")[3]
		for L_710_forvar0, L_711_forvar1 in next, listfiles(L_708_forvar1) do
			local L_712_ = L_711_forvar1:split("\\")[2]:split(".")[1]
			local L_713_ = Instance.new("StringValue")
			L_713_.Name = L_712_;
			L_713_.Parent = L_709_;
			L_713_.Value = readfile(L_711_forvar1)
		end
	end;
	L_176_.wait.TextLabel.Text = "Loading animations..."
	wait()
	L_176_.wait.TextLabel.TextSize = L_176_.wait.TextLabel.TextSize - 6;
	local L_222_ = {}
	for L_714_forvar0, L_715_forvar1 in next, L_145_.Viewmodels:GetDescendants() do
		if L_715_forvar1.ClassName == "Animation" and L_715_forvar1.AnimationId ~= "rbxassetid://0" and L_715_forvar1.Name ~= "idle" then
			table.insert(L_222_, L_715_forvar1)
		end
	end;
	wait()
	local L_223_ = Instance.new("Animation")
	for L_716_forvar0, L_717_forvar1 in next, L_222_ do
		if L_716_forvar0 % 10 == 10 then
			wait()
		end;
		spawn(function()
			L_176_.wait.TextLabel.Text = "Loading animations...\n" .. L_717_forvar1.Parent.Name .. " " .. L_717_forvar1.Name .. "\n" .. tostring(L_716_forvar0) .. "/" .. tostring(# L_222_)
			L_223_.AnimationId = L_717_forvar1.AnimationId;
			L_148_:PreloadAsync({
				L_223_
			})
		end)
	end;
	L_223_:Destroy()
	wait()
	L_176_.wait:Destroy()
	return
end;
local L_2_ = os.time()
local L_4_;
getgenv().runService = game:GetService"RunService"
getgenv().textService = game:GetService"TextService"
getgenv().inputService = game:GetService"UserInputService"
getgenv().tweenService = game:GetService"TweenService"
if getgenv().library then
	getgenv().library:Unload()
end;
local L_5_ = {
	tabs = {},
	draggable = true,
	flags = {},
	title = "cipex",
	open = false,
	mousestate = inputService.MouseIconEnabled,
	popup = nil,
	instances = {},
	connections = {},
	options = {},
	notifications = {},
	tabSize = 0,
	theme = {},
	foldername = "cipex_configs/cb",
	fileext = ".txt"
}
library_flags = L_5_.flags;
getgenv().library = L_5_;
local L_6_, L_7_, L_8_, L_9_, L_10_;
local L_11_ = {
	Enum.KeyCode.Unknown,
	Enum.KeyCode.W,
	Enum.KeyCode.A,
	Enum.KeyCode.S,
	Enum.KeyCode.D,
	Enum.KeyCode.Slash,
	Enum.KeyCode.Tab,
	Enum.KeyCode.Escape
}
local L_12_ = {
	Enum.UserInputType.MouseButton1,
	Enum.UserInputType.MouseButton2,
	Enum.UserInputType.MouseButton3
}
L_5_.round = function(L_721_arg0, L_722_arg1)
	L_722_arg1 = L_722_arg1 or 1;
	local L_723_;
	if typeof(L_721_arg0) == "Vector2" then
		L_723_ = Vector2.new(L_5_.round(L_721_arg0.X), L_5_.round(L_721_arg0.Y))
	elseif typeof(L_721_arg0) == "Color3" then
		return L_5_.round(L_721_arg0.r * 255), L_5_.round(L_721_arg0.g * 255), L_5_.round(L_721_arg0.b * 255)
	else
		L_723_ = math.floor(L_721_arg0 / L_722_arg1 + math.sign(L_721_arg0) * 0.5) * L_722_arg1;
		if L_723_ < 0 then
			L_723_ = L_723_ + L_722_arg1
		end;
		return L_723_
	end;
	return L_723_
end;
function L_5_:Create(L_724_arg0, L_725_arg1)
	L_725_arg1 = L_725_arg1 or {}
	if not L_724_arg0 then
		return
	end;
	local L_726_ = L_724_arg0 == "Square" or L_724_arg0 == "Line" or L_724_arg0 == "Text" or L_724_arg0 == "Quad" or L_724_arg0 == "Circle" or L_724_arg0 == "Triangle"
	local L_727_ = L_726_ and Drawing or Instance;
	local L_728_ = L_727_.new(L_724_arg0)
	for L_729_forvar0, L_730_forvar1 in next, L_725_arg1 do
		L_728_[L_729_forvar0] = L_730_forvar1
	end;
	table.insert(self.instances, {
		object = L_728_,
		method = L_726_
	})
	return L_728_
end;
function L_5_:AddConnection(L_731_arg0, L_732_arg1, L_733_arg2)
	L_733_arg2 = type(L_732_arg1) == "function" and L_732_arg1 or L_733_arg2;
	L_731_arg0 = L_731_arg0:connect(L_733_arg2)
	if L_732_arg1 ~= L_733_arg2 then
		self.connections[L_732_arg1] = L_731_arg0
	else
		table.insert(self.connections, L_731_arg0)
	end;
	return L_731_arg0
end;
function L_5_:Unload()
	inputService.MouseIconEnabled = self.mousestate;
	for L_734_forvar0, L_735_forvar1 in next, self.connections do
		L_735_forvar1:Disconnect()
	end;
	for L_736_forvar0, L_737_forvar1 in next, self.instances do
		if L_737_forvar1.method then
			pcall(function()
				L_737_forvar1.object:Remove()
			end)
		else
			L_737_forvar1.object:Destroy()
		end
	end;
	for L_738_forvar0, L_739_forvar1 in next, self.options do
		if L_739_forvar1.type == "toggle" then
			pcall(function()
				L_739_forvar1:SetState()
			end)
		end
	end;
	L_5_ = nil;
	getgenv().library = nil
end;
L_5_.lastConfig = ""
function L_5_:LoadConfig(L_740_arg0, L_741_arg1)
	L_5_.lastConfig = L_740_arg0 or L_5_.lastConfig;
	loadingCFG = true;
	changing = true;
	local L_742_, L_743_ = nil, nil;
	if L_741_arg1 then
		L_742_, L_743_ = pcall(function()
			return game:GetService"HttpService":JSONDecode(L_741_arg1)
		end)
	else
		L_742_, L_743_ = pcall(function()
			return game:GetService"HttpService":JSONDecode(readfile(self.foldername .. "/" .. L_740_arg0 .. self.fileext))
		end)
	end;
	L_5_.options["Loop Kill"]:SetState(false)
	L_5_.options["Target ESP"]:SetState(false)
	L_5_.options["Ragebot Whitelist"]:SetState(false)
	L_5_.options["Ragebot Priority"]:SetState(false)
	L_743_ = L_742_ and L_743_ or {}
	if not L_742_ and L_741_arg1 ~= nil then
		loadingCFG = false;
		changing = false;
		return true
	end;
	if table.find(self:GetConfigs(), L_740_arg0) or L_741_arg1 ~= nil then
		for L_744_forvar0, L_745_forvar1 in next, self.options do
			if L_745_forvar1.hasInit then
				if L_745_forvar1.type ~= "button" and L_745_forvar1.flag and not L_745_forvar1.skipflag then
					if L_745_forvar1.type == "toggle" then
						spawn(function()
							L_745_forvar1:SetState(L_743_[L_745_forvar1.flag] == 1)
						end)
					elseif L_745_forvar1.type == "color" then
						if L_743_[L_745_forvar1.flag] then
							spawn(function()
								L_745_forvar1:SetColor(L_743_[L_745_forvar1.flag])
							end)
							if L_745_forvar1.trans then
								spawn(function()
									L_745_forvar1:SetTrans(L_743_[L_745_forvar1.flag .. " Transparency"])
								end)
							end
						end
					elseif L_745_forvar1.type == "bind" then
						spawn(function()
							L_745_forvar1:SetKey(L_743_[L_745_forvar1.flag])
						end)
					else
						spawn(function()
							L_745_forvar1:SetValue(L_743_[L_745_forvar1.flag])
						end)
					end
				end
			end
		end
	end;
	loadingCFG = false;
	changing = false;
	L_5_.options["Loop Kill"]:SetState(false)
	L_5_.options["Target ESP"]:SetState(false)
	L_5_.options["Ragebot Whitelist"]:SetState(false)
	L_5_.options["Ragebot Priority"]:SetState(false)
end;
function L_5_:SaveConfig(L_746_arg0, L_747_arg1, L_748_arg2)
	local L_749_ = {}
	if table.find(self:GetConfigs(), L_746_arg0) and not L_748_arg2 then
		L_749_ = game:GetService"HttpService":JSONDecode(readfile(self.foldername .. "/" .. L_746_arg0 .. self.fileext))
	else
		if L_748_arg2 then
			L_749_ = game:GetService"HttpService":JSONDecode(L_748_arg2)
		end
	end;
	for L_750_forvar0, L_751_forvar1 in next, self.options do
		if L_751_forvar1.type ~= "button" and L_751_forvar1.flag and not L_751_forvar1.skipflag then
			if L_751_forvar1.type == "toggle" then
				L_749_[L_751_forvar1.flag] = L_751_forvar1.state and 1 or 0
			elseif L_751_forvar1.type == "color" then
				L_749_[L_751_forvar1.flag] = {
					L_751_forvar1.color.r,
					L_751_forvar1.color.g,
					L_751_forvar1.color.b
				}
				if L_751_forvar1.trans then
					L_749_[L_751_forvar1.flag .. " Transparency"] = L_751_forvar1.trans
				end
			elseif L_751_forvar1.type == "bind" then
				L_749_[L_751_forvar1.flag] = L_751_forvar1.key
			elseif L_751_forvar1.type == "list" then
				L_749_[L_751_forvar1.flag] = L_751_forvar1.value
			else
				L_749_[L_751_forvar1.flag] = L_751_forvar1.value
			end
		end
	end;
	if L_747_arg1 then
		setclipboard(game:GetService"HttpService":JSONEncode(L_749_))
	else
		writefile(self.foldername .. "/" .. L_746_arg0 .. self.fileext, game:GetService"HttpService":JSONEncode(L_749_))
	end
end;
function L_5_:GetConfigs()
	if not isfolder(self.foldername) then
		makefolder(self.foldername)
	end;
	local L_752_ = listfiles(self.foldername)
	for L_753_forvar0, L_754_forvar1 in next, L_752_ do
		if L_754_forvar1:find(self.fileext) then
			L_754_forvar1 = L_754_forvar1:gsub(self.foldername .. "\\", "")
			L_752_[L_753_forvar0] = L_754_forvar1:gsub(self.fileext, "")
		else
			L_752_[L_753_forvar0] = nil
		end
	end;
	return L_752_
end;
local function L_13_func(L_755_arg0, L_756_arg1)
	L_755_arg0.main = L_5_:Create("TextLabel", {
		LayoutOrder = L_755_arg0.position,
		Position = UDim2.new(0, 6, 0, 0),
		Size = UDim2.new(1, -12, 0, 24),
		BackgroundTransparency = 1,
		Text = L_755_arg0.text,
		TextSize = 15,
		Font = Enum.Font.Code,
		TextColor3 = Color3.new(1, 1, 1),
		TextXAlignment = Enum.TextXAlignment.Left,
		Parent = L_756_arg1
	})
	setmetatable(L_755_arg0, {
		__newindex = function(L_757_arg0, L_758_arg1, L_759_arg2)
			if L_758_arg1 == "Text" then
				L_755_arg0.main.Text = tostring(L_759_arg2)
			end
		end
	})
end;
local function L_14_func(L_760_arg0, L_761_arg1)
	L_760_arg0.hasInit = true;
	L_760_arg0.main = L_5_:Create("Frame", {
		LayoutOrder = L_760_arg0.position,
		Size = UDim2.new(1, 0, 0, 20),
		BackgroundTransparency = 1,
		Parent = L_761_arg1
	})
	local L_762_;
	local L_763_;
	if L_760_arg0.style then
		L_762_ = L_5_:Create("ImageLabel", {
			Position = UDim2.new(0, 6, 0, 4),
			Size = UDim2.new(0, 12, 0, 12),
			BackgroundTransparency = 1,
			Image = "rbxassetid://3570695787",
			ImageColor3 = Color3.new(),
			Parent = L_760_arg0.main
		})
		L_5_:Create("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(1, -2, 1, -2),
			BackgroundTransparency = 1,
			Image = "rbxassetid://3570695787",
			ImageColor3 = Color3.fromRGB(60, 60, 60),
			Parent = L_762_
		})
		L_5_:Create("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(1, -6, 1, -6),
			BackgroundTransparency = 1,
			Image = "rbxassetid://3570695787",
			ImageColor3 = Color3.fromRGB(40, 40, 40),
			Parent = L_762_
		})
		L_763_ = L_5_:Create("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(1, -6, 1, -6),
			BackgroundTransparency = 1,
			Image = "rbxassetid://3570695787",
			ImageColor3 = library_flags["Menu Accent Color"],
			Visible = L_760_arg0.state,
			Parent = L_762_
		})
		L_5_:Create("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			Image = "rbxassetid://5941353943",
			ImageTransparency = 0.6,
			Parent = L_762_
		})
		table.insert(L_5_.theme, L_763_)
	else
		L_762_ = L_5_:Create("Frame", {
			Position = UDim2.new(0, 6, 0, 4),
			Size = UDim2.new(0, 12, 0, 12),
			BackgroundColor3 = library_flags["Menu Accent Color"],
			BorderColor3 = Color3.new(),
			Parent = L_760_arg0.main
		})
		L_763_ = L_5_:Create("ImageLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = L_760_arg0.state and 1 or 0,
			BackgroundColor3 = Color3.fromRGB(50, 50, 50),
			BorderColor3 = Color3.new(),
			Image = "rbxassetid://4155801252",
			ImageTransparency = 0.6,
			ImageColor3 = Color3.new(),
			Parent = L_762_
		})
		L_5_:Create("ImageLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			Image = "rbxassetid://2592362371",
			ImageColor3 = Color3.fromRGB(60, 60, 60),
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(2, 2, 62, 62),
			Parent = L_762_
		})
		table.insert(L_5_.theme, L_762_)
	end;
	L_760_arg0.interest = L_5_:Create("Frame", {
		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(1, 0, 0, 20),
		BackgroundTransparency = 1,
		Parent = L_760_arg0.main
	})
	L_760_arg0.title = L_5_:Create("TextLabel", {
		Position = UDim2.new(0, 24, 0, 0),
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Text = L_760_arg0.text,
		TextColor3 = L_760_arg0.state and Color3.fromRGB(210, 210, 210) or Color3.fromRGB(180, 180, 180),
		TextSize = 15,
		Font = Enum.Font.Code,
		TextXAlignment = Enum.TextXAlignment.Left,
		Parent = L_760_arg0.interest
	})
	L_760_arg0.interest.InputBegan:connect(function(L_764_arg0)
		if L_764_arg0.UserInputType.Name == "MouseButton1" then
			L_760_arg0:SetState(not L_760_arg0.state)
		end;
		if L_764_arg0.UserInputType.Name == "MouseMovement" then
			if not L_5_.popup and not L_5_.warning and not L_5_.slider then
				if L_760_arg0.style then
					L_762_.ImageColor3 = library_flags["Menu Accent Color"]
					tweenService:Create(L_762_, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						ImageColor3 = library_flags["Menu Accent Color"]
					}):Play()
				else
					L_762_.BorderColor3 = library_flags["Menu Accent Color"]
					L_763_.BorderColor3 = library_flags["Menu Accent Color"]
				end
			end;
			if L_760_arg0.tip then
				L_5_.tooltip.Text = L_760_arg0.tip;
				L_5_.tooltip.Size = UDim2.new(0, textService:GetTextSize(L_760_arg0.tip, 15, Enum.Font.Code, Vector2.new(387420489, 387420489)).X, 0, 20)
			end
		end
	end)
	L_760_arg0.interest.InputChanged:connect(function(L_765_arg0)
		if L_765_arg0.UserInputType.Name == "MouseMovement" then
			if L_760_arg0.tip then
				L_5_.tooltip.Position = UDim2.new(0, L_765_arg0.Position.X + 56, 0, L_765_arg0.Position.Y - 10)
			end
		end
	end)
	L_760_arg0.interest.InputEnded:connect(function(L_766_arg0)
		if L_766_arg0.UserInputType.Name == "MouseMovement" then
			if L_760_arg0.style then
				L_762_.ImageColor3 = Color3.new()
			else
				L_762_.BorderColor3 = Color3.new()
				L_763_.BorderColor3 = Color3.new()
			end;
			L_5_.tooltip.Position = UDim2.new(2)
		end
	end)
	function L_760_arg0:SetState(L_767_arg0, L_768_arg1)
		L_767_arg0 = typeof(L_767_arg0) == "boolean" and L_767_arg0;
		L_767_arg0 = L_767_arg0 or false;
		library_flags[self.flag] = L_767_arg0;
		self.state = L_767_arg0;
		L_760_arg0.title.TextColor3 = L_767_arg0 and Color3.fromRGB(210, 210, 210) or Color3.fromRGB(160, 160, 160)
		if L_760_arg0.style then
			L_763_.Visible = L_767_arg0
		else
			L_763_.BackgroundTransparency = L_767_arg0 and 1 or 0
		end;
		if not L_768_arg1 then
			self.callback(L_767_arg0)
		end
	end;
	if L_760_arg0.state then
		delay(1, function()
			if L_5_ then
				L_760_arg0.callback(true)
			end
		end)
	end;
	setmetatable(L_760_arg0, {
		__newindex = function(L_769_arg0, L_770_arg1, L_771_arg2)
			if L_770_arg1 == "Text" then
				L_760_arg0.title.Text = tostring(L_771_arg2)
			end
		end
	})
end;
local function L_15_func(L_772_arg0, L_773_arg1)
	L_772_arg0.hasInit = true;
	L_772_arg0.main = L_5_:Create("Frame", {
		LayoutOrder = L_772_arg0.position,
		Size = UDim2.new(1, 0, 0, 26),
		BackgroundTransparency = 1,
		Parent = L_773_arg1
	})
	L_772_arg0.title = L_5_:Create("TextLabel", {
		AnchorPoint = Vector2.new(0.5, 1),
		Position = UDim2.new(0.5, 0, 1, -5),
		Size = UDim2.new(1, -12, 0, 18),
		BackgroundColor3 = Color3.fromRGB(50, 50, 50),
		BorderColor3 = Color3.new(),
		Text = L_772_arg0.text,
		TextColor3 = Color3.new(1, 1, 1),
		TextSize = 15,
		Font = Enum.Font.Code,
		Parent = L_772_arg0.main
	})
	L_5_:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.fromRGB(60, 60, 60),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = L_772_arg0.title
	})
	L_5_:Create("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(180, 180, 180)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(253, 253, 253))
		}),
		Rotation = -90,
		Parent = L_772_arg0.title
	})
	L_772_arg0.title.InputBegan:connect(function(L_774_arg0)
		if L_774_arg0.UserInputType.Name == "MouseButton1" then
			L_772_arg0.callback()
			if L_5_ then
				library_flags[L_772_arg0.flag] = true
			end;
			if L_772_arg0.tip then
				L_5_.tooltip.Text = L_772_arg0.tip;
				L_5_.tooltip.Size = UDim2.new(0, textService:GetTextSize(L_772_arg0.tip, 15, Enum.Font.Code, Vector2.new(387420489, 387420489)).X, 0, 20)
			end
		end;
		if L_774_arg0.UserInputType.Name == "MouseMovement" then
			if not L_5_.popup and not L_5_.warning and not L_5_.slider then
				L_772_arg0.title.BorderColor3 = library_flags["Menu Accent Color"]
			end
		end
	end)
	L_772_arg0.title.InputChanged:connect(function(L_775_arg0)
		if L_775_arg0.UserInputType.Name == "MouseMovement" then
			if L_772_arg0.tip then
				L_5_.tooltip.Position = UDim2.new(0, L_775_arg0.Position.X + 56, 0, L_775_arg0.Position.Y - 10)
			end
		end
	end)
	L_772_arg0.title.InputEnded:connect(function(L_776_arg0)
		if L_776_arg0.UserInputType.Name == "MouseMovement" then
			L_772_arg0.title.BorderColor3 = Color3.new()
			L_5_.tooltip.Position = UDim2.new(2)
		end
	end)
end;
local function L_16_func(L_777_arg0, L_778_arg1)
	L_777_arg0.hasInit = true;
	local L_779_;
	local L_780_;
	local L_781_;
	if L_777_arg0.sub then
		L_777_arg0.main = L_777_arg0:getMain()
	else
		L_777_arg0.main = L_777_arg0.main or L_5_:Create("Frame", {
			LayoutOrder = L_777_arg0.position,
			Size = UDim2.new(1, 0, 0, 20),
			BackgroundTransparency = 1,
			Parent = L_778_arg1
		})
		L_5_:Create("TextLabel", {
			Position = UDim2.new(0, 6, 0, 0),
			Size = UDim2.new(1, -12, 1, 0),
			BackgroundTransparency = 1,
			Text = L_777_arg0.text,
			TextSize = 15,
			Font = Enum.Font.Code,
			TextColor3 = Color3.fromRGB(210, 210, 210),
			TextXAlignment = Enum.TextXAlignment.Left,
			Parent = L_777_arg0.main
		})
	end;
	local L_782_ = L_5_:Create(L_777_arg0.sub and "TextButton" or "TextLabel", {
		Position = UDim2.new(1, -6 - (L_777_arg0.subpos or 0), 0, L_777_arg0.sub and 2 or 3),
		SizeConstraint = Enum.SizeConstraint.RelativeYY,
		BackgroundColor3 = Color3.fromRGB(30, 30, 30),
		BorderSizePixel = 0,
		TextSize = 15,
		Font = Enum.Font.Code,
		TextColor3 = Color3.fromRGB(160, 160, 160),
		TextXAlignment = Enum.TextXAlignment.Right,
		Parent = L_777_arg0.main
	})
	if L_777_arg0.sub then
		L_782_.AutoButtonColor = false
	end;
	local L_783_ = L_777_arg0.sub and L_782_ or L_777_arg0.main;
	local L_784_;
	L_783_.InputEnded:connect(function(L_785_arg0)
		if L_785_arg0.UserInputType.Name == "MouseButton1" then
			L_779_ = true;
			L_782_.Text = "[...]"
			L_782_.Size = UDim2.new(0, - textService:GetTextSize(L_782_.Text, 16, Enum.Font.Code, Vector2.new(387420489, 387420489)).X, 0, 16)
			L_782_.TextColor3 = library_flags["Menu Accent Color"]
		end
	end)
	L_5_:AddConnection(inputService.InputBegan, function(L_786_arg0)
		if inputService:GetFocusedTextBox() then
			return
		end;
		if L_779_ then
			local L_787_ = table.find(L_12_, L_786_arg0.UserInputType) and not L_777_arg0.nomouse and L_786_arg0.UserInputType;
			L_777_arg0:SetKey(L_787_ or not table.find(L_11_, L_786_arg0.KeyCode) and L_786_arg0.KeyCode)
		else
			if (L_786_arg0.KeyCode.Name == L_777_arg0.key or L_786_arg0.UserInputType.Name == L_777_arg0.key) and not L_779_ then
				if L_777_arg0.mode == "toggle" then
					library_flags[L_777_arg0.flag] = not library_flags[L_777_arg0.flag]
					L_777_arg0.callback(library_flags[L_777_arg0.flag], 0)
				else
					library_flags[L_777_arg0.flag] = true;
					if L_781_ then
						L_781_:Disconnect()
						L_777_arg0.callback(true, 0)
					end;
					L_781_ = L_5_:AddConnection(runService.RenderStepped, function(L_788_arg0)
						if not inputService:GetFocusedTextBox() then
							L_777_arg0.callback(nil, L_788_arg0)
						end
					end)
				end
			end
		end
	end)
	L_5_:AddConnection(inputService.InputEnded, function(L_789_arg0)
		if L_777_arg0.key ~= "none" then
			if L_789_arg0.KeyCode.Name == L_777_arg0.key or L_789_arg0.UserInputType.Name == L_777_arg0.key or L_789_arg0.UserInputType.Name == "MouseMovement" then
				if L_781_ then
					L_781_:Disconnect()
					L_777_arg0.callback(true, 0)
				end
			end
		end
	end)
	function L_777_arg0:SetKey(L_790_arg0)
		L_779_ = false;
		L_782_.TextColor3 = Color3.fromRGB(160, 160, 160)
		if L_781_ then
			L_781_:Disconnect()
			L_777_arg0.callback(true, 0)
		end;
		self.key = L_790_arg0 and L_790_arg0.Name or L_790_arg0 or self.key;
		if self.key == "Backspace" then
			self.key = "none"
			L_782_.Text = "[NONE]"
		else
			local L_791_ = self.key;
			if self.key:match"Mouse" then
				L_791_ = self.key:gsub("Button", ""):gsub("Mouse", "M")
			elseif self.key:match"Shift" or self.key:match"Alt" or self.key:match"Control" then
				L_791_ = self.key:gsub("Left", "L"):gsub("Right", "R")
			end;
			L_782_.Text = "[" .. L_791_:gsub("Control", "CTRL"):upper() .. "]"
		end;
		L_782_.Size = UDim2.new(0, - textService:GetTextSize(L_782_.Text, 16, Enum.Font.Code, Vector2.new(387420489, 387420489)).X, 0, 16)
	end;
	L_777_arg0:SetKey()
end;
local function L_17_func(L_792_arg0, L_793_arg1)
	L_792_arg0.hasInit = true;
	if L_792_arg0.sub then
		L_792_arg0.main = L_792_arg0:getMain()
		L_792_arg0.main.Size = UDim2.new(1, 0, 0, 36)
	else
		L_792_arg0.main = L_5_:Create("Frame", {
			LayoutOrder = L_792_arg0.position,
			BackgroundTransparency = 1,
			Parent = L_793_arg1
		})
		L_792_arg0.main.Size = UDim2.new(1, 0, 0, L_792_arg0.textpos and 20 or 36)
	end;
	L_792_arg0.slider = L_5_:Create("Frame", {
		Position = UDim2.new(0, 6, 0, L_792_arg0.sub and 22 or L_792_arg0.textpos and 4 or 20),
		Size = UDim2.new(1, -12, 0, 12),
		BackgroundColor3 = Color3.fromRGB(50, 50, 50),
		BorderColor3 = Color3.new(),
		Parent = L_792_arg0.main
	})
	L_5_:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2454009026",
		ImageColor3 = Color3.new(),
		ImageTransparency = 0.8,
		Parent = L_792_arg0.slider
	})
	L_792_arg0.fill = L_5_:Create("Frame", {
		BackgroundColor3 = library_flags["Menu Accent Color"],
		BorderSizePixel = 0,
		Parent = L_792_arg0.slider
	})
	L_5_:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.fromRGB(60, 60, 60),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = L_792_arg0.slider
	})
	L_792_arg0.title = L_5_:Create("TextLabel", {
		Position = UDim2.new(0, 6, 0, 0),
		Size = UDim2.new(1, - ((L_792_arg0.sub or L_792_arg0.textpos) and 12 or 6), 0, (L_792_arg0.sub or L_792_arg0.textpos) and 12 or 18),
		BackgroundTransparency = 1,
		Text = (L_792_arg0.text == "nil" and "" or L_792_arg0.text .. ": ") .. L_792_arg0.value .. L_792_arg0.suffix,
		TextSize = (L_792_arg0.sub or L_792_arg0.textpos) and 14 or 15,
		Font = Enum.Font.Code,
		TextColor3 = Color3.fromRGB(210, 210, 210),
		TextXAlignment = Enum.TextXAlignment[(L_792_arg0.sub or L_792_arg0.textpos) and "Center" or "Left"],
		Parent = (L_792_arg0.sub or L_792_arg0.textpos) and L_792_arg0.slider or L_792_arg0.main
	})
	table.insert(L_5_.theme, L_792_arg0.fill)
	L_5_:Create("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(115, 115, 115)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(253, 253, 253))
		}),
		Rotation = -90,
		Parent = L_792_arg0.fill
	})
	if L_792_arg0.min >= 0 then
		L_792_arg0.fill.Size = UDim2.new((L_792_arg0.value - L_792_arg0.min) / (L_792_arg0.max - L_792_arg0.min), 0, 1, 0)
	else
		L_792_arg0.fill.Position = UDim2.new((0 - L_792_arg0.min) / (L_792_arg0.max - L_792_arg0.min), 0, 0, 0)
		L_792_arg0.fill.Size = UDim2.new(L_792_arg0.value / (L_792_arg0.max - L_792_arg0.min), 0, 1, 0)
	end;
	local L_794_ = (L_792_arg0.sub or L_792_arg0.textpos) and L_792_arg0.slider or L_792_arg0.main;
	L_794_.InputBegan:connect(function(L_795_arg0)
		if L_795_arg0.UserInputType.Name == "MouseButton1" then
			L_5_.slider = L_792_arg0;
			L_792_arg0.slider.BorderColor3 = library_flags["Menu Accent Color"]
			L_792_arg0:SetValue(L_792_arg0.min + (L_795_arg0.Position.X - L_792_arg0.slider.AbsolutePosition.X) / L_792_arg0.slider.AbsoluteSize.X * (L_792_arg0.max - L_792_arg0.min))
		end;
		if L_795_arg0.UserInputType.Name == "MouseMovement" then
			if not L_5_.popup and not L_5_.warning and not L_5_.slider then
				L_792_arg0.slider.BorderColor3 = library_flags["Menu Accent Color"]
			end;
			if L_792_arg0.tip then
				L_5_.tooltip.Text = L_792_arg0.tip;
				L_5_.tooltip.Size = UDim2.new(0, textService:GetTextSize(L_792_arg0.tip, 15, Enum.Font.Code, Vector2.new(387420489, 387420489)).X, 0, 20)
			end
		end
	end)
	L_794_.InputChanged:connect(function(L_796_arg0)
		if L_796_arg0.UserInputType.Name == "MouseMovement" then
			if L_792_arg0.tip then
				L_5_.tooltip.Position = UDim2.new(0, L_796_arg0.Position.X + 56, 0, L_796_arg0.Position.Y - 10)
			end
		end
	end)
	L_794_.InputEnded:connect(function(L_797_arg0)
		if L_797_arg0.UserInputType.Name == "MouseMovement" then
			L_5_.tooltip.Position = UDim2.new(2)
			if L_792_arg0 ~= L_5_.slider then
				L_792_arg0.slider.BorderColor3 = Color3.new()
			end
		end
	end)
	function L_792_arg0:SetValue(L_798_arg0, L_799_arg1)
		if typeof(L_798_arg0) ~= "number" then
			L_798_arg0 = 0
		end;
		L_798_arg0 = L_5_.round(L_798_arg0, L_792_arg0.float)
		L_798_arg0 = math.clamp(L_798_arg0, self.min, self.max)
		if self.min >= 0 then
			L_792_arg0.fill:TweenSize(UDim2.new((L_798_arg0 - self.min) / (self.max - self.min), 0, 1, 0), "Out", "Quad", 0.05, true)
		else
			L_792_arg0.fill:TweenPosition(UDim2.new((0 - self.min) / (self.max - self.min), 0, 0, 0), "Out", "Quad", 0.05, true)
			L_792_arg0.fill:TweenSize(UDim2.new(L_798_arg0 / (self.max - self.min), 0, 1, 0), "Out", "Quad", 0.1, true)
		end;
		library_flags[self.flag] = L_798_arg0;
		self.value = L_798_arg0;
		L_792_arg0.title.Text = (L_792_arg0.text == "nil" and "" or L_792_arg0.text .. ": ") .. L_792_arg0.value .. L_792_arg0.suffix;
		if not L_799_arg1 then
			self.callback(L_798_arg0)
		end
	end;
	delay(1, function()
		if L_5_ then
			L_792_arg0:SetValue(L_792_arg0.value)
		end
	end)
end;
local function L_18_func(L_800_arg0, L_801_arg1)
	L_800_arg0.hasInit = true;
	if L_800_arg0.sub then
		L_800_arg0.main = L_800_arg0:getMain()
		L_800_arg0.main.Size = UDim2.new(1, 0, 0, 44)
	else
		L_800_arg0.main = L_5_:Create("Frame", {
			LayoutOrder = L_800_arg0.position,
			Size = UDim2.new(1, 0, 0, L_800_arg0.text == " " and 26 or 44),
			BackgroundTransparency = 1,
			Parent = L_801_arg1
		})
		if L_800_arg0.text ~= " " then
			L_5_:Create("TextLabel", {
				Position = UDim2.new(0, 6, 0, 0),
				Size = UDim2.new(1, -12, 0, 18),
				BackgroundTransparency = 1,
				Text = L_800_arg0.text,
				TextSize = 15,
				Font = Enum.Font.Code,
				TextColor3 = Color3.fromRGB(210, 210, 210),
				TextXAlignment = Enum.TextXAlignment.Left,
				Parent = L_800_arg0.main
			})
		end
	end;
	local function L_802_func()
		local L_807_ = ""
		for L_808_forvar0, L_809_forvar1 in next, L_800_arg0.values do
			L_807_ = L_807_ .. (L_800_arg0.value[L_809_forvar1] and tostring(L_809_forvar1) .. ", " or "")
		end;
		return string.sub(L_807_, 1, # L_807_ - 2)
	end;
	L_800_arg0.listvalue = L_5_:Create("TextLabel", {
		Position = UDim2.new(0, 6, 0, L_800_arg0.text == " " and not L_800_arg0.sub and 4 or 22),
		Size = UDim2.new(1, -12, 0, 18),
		BackgroundColor3 = Color3.fromRGB(50, 50, 50),
		BorderColor3 = Color3.new(),
		Text = " " .. (typeof(L_800_arg0.value) == "string" and L_800_arg0.value or L_802_func()),
		TextSize = 15,
		Font = Enum.Font.Code,
		TextColor3 = Color3.new(1, 1, 1),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		Parent = L_800_arg0.main
	})
	L_5_:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2454009026",
		ImageColor3 = Color3.new(),
		ImageTransparency = 0.8,
		Parent = L_800_arg0.listvalue
	})
	L_5_:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.fromRGB(60, 60, 60),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = L_800_arg0.listvalue
	})
	L_800_arg0.arrow = L_5_:Create("ImageLabel", {
		Position = UDim2.new(1, -14, 0, 5),
		Size = UDim2.new(0, 8, 0, 8),
		Rotation = 90,
		BackgroundTransparency = 1,
		Image = "rbxassetid://4918373417",
		ImageColor3 = Color3.new(1, 1, 1),
		ScaleType = Enum.ScaleType.Fit,
		ImageTransparency = 0.4,
		Parent = L_800_arg0.listvalue
	})
	L_800_arg0.holder = L_5_:Create("TextButton", {
		ZIndex = 4,
		BackgroundColor3 = Color3.fromRGB(40, 40, 40),
		BorderColor3 = Color3.new(),
		Text = "",
		AutoButtonColor = false,
		Visible = false,
		Parent = L_5_.base
	})
	L_800_arg0.content = L_5_:Create("ScrollingFrame", {
		ZIndex = 4,
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ScrollBarImageColor3 = Color3.new(),
		ScrollBarThickness = 3,
		ScrollingDirection = Enum.ScrollingDirection.Y,
		VerticalScrollBarInset = Enum.ScrollBarInset.Always,
		TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png",
		BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png",
		Parent = L_800_arg0.holder
	})
	L_5_:Create("ImageLabel", {
		ZIndex = 4,
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.fromRGB(60, 60, 60),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = L_800_arg0.holder
	})
	local L_803_ = L_5_:Create("UIListLayout", {
		Padding = UDim.new(0, 2),
		Parent = L_800_arg0.content
	})
	L_5_:Create("UIPadding", {
		PaddingTop = UDim.new(0, 3),
		PaddingLeft = UDim.new(0, 3),
		Parent = L_800_arg0.content
	})
	local L_804_ = 0;
	L_803_.Changed:connect(function()
		L_800_arg0.holder.Size = UDim2.new(0, L_800_arg0.listvalue.AbsoluteSize.X, 0, 6 + (L_804_ > L_800_arg0.max and L_800_arg0.max * 22 or L_803_.AbsoluteContentSize.Y))
		L_800_arg0.content.CanvasSize = UDim2.new(0, 0, 0, 4 + L_803_.AbsoluteContentSize.Y)
	end)
	local L_805_ = L_800_arg0.sub and L_800_arg0.listvalue or L_800_arg0.main;
	L_800_arg0.listvalue.InputBegan:connect(function(L_810_arg0)
		if L_810_arg0.UserInputType.Name == "MouseButton1" then
			if L_5_.popup == L_800_arg0 then
				L_5_.popup:Close()
				return
			end;
			if L_5_.popup then
				L_5_.popup:Close()
			end;
			L_800_arg0.arrow.Rotation = -90;
			L_800_arg0.open = true;
			L_800_arg0.holder.Visible = true;
			local L_811_ = L_800_arg0.main.AbsolutePosition;
			L_800_arg0.holder.Position = UDim2.new(0, L_811_.X + 6, 0, L_811_.Y + 80)
			L_5_.popup = L_800_arg0;
			L_800_arg0.listvalue.BorderColor3 = library_flags["Menu Accent Color"]
		end;
		if L_810_arg0.UserInputType.Name == "MouseMovement" then
			if not L_5_.popup and not L_5_.warning and not L_5_.slider then
				L_800_arg0.listvalue.BorderColor3 = library_flags["Menu Accent Color"]
			end
		end
	end)
	L_800_arg0.listvalue.InputEnded:connect(function(L_812_arg0)
		if L_812_arg0.UserInputType.Name == "MouseMovement" then
			if not L_800_arg0.open then
				L_800_arg0.listvalue.BorderColor3 = Color3.new()
			end
		end
	end)
	L_805_.InputBegan:connect(function(L_813_arg0)
		if L_813_arg0.UserInputType.Name == "MouseMovement" then
			if L_800_arg0.tip then
				L_5_.tooltip.Text = L_800_arg0.tip;
				L_5_.tooltip.Size = UDim2.new(0, textService:GetTextSize(L_800_arg0.tip, 15, Enum.Font.Code, Vector2.new(387420489, 387420489)).X, 0, 20)
			end
		end
	end)
	L_805_.InputChanged:connect(function(L_814_arg0)
		if L_814_arg0.UserInputType.Name == "MouseMovement" then
			if L_800_arg0.tip then
				L_5_.tooltip.Position = UDim2.new(0, L_814_arg0.Position.X + 56, 0, L_814_arg0.Position.Y - 10)
			end
		end
	end)
	L_805_.InputEnded:connect(function(L_815_arg0)
		if L_815_arg0.UserInputType.Name == "MouseMovement" then
			L_5_.tooltip.Position = UDim2.new(2)
		end
	end)
	local L_806_;
	function L_800_arg0:AddValue(L_816_arg0, L_817_arg1)
		if self.labels[L_816_arg0] then
			return
		end;
		L_804_ = L_804_ + 1;
		if self.multiselect then
			self.values[L_816_arg0] = L_817_arg1
		else
			if not table.find(self.values, L_816_arg0) then
				table.insert(self.values, L_816_arg0)
			end
		end;
		local L_818_ = L_5_:Create("TextLabel", {
			ZIndex = 4,
			Size = UDim2.new(1, 0, 0, 20),
			BackgroundTransparency = 1,
			Text = L_816_arg0,
			TextSize = 15,
			Font = Enum.Font.Code,
			TextTransparency = self.multiselect and (self.value[L_816_arg0] and 1 or 0) or self.value == L_816_arg0 and 1 or 0,
			TextColor3 = Color3.fromRGB(210, 210, 210),
			TextXAlignment = Enum.TextXAlignment.Left,
			Parent = L_800_arg0.content
		})
		self.labels[L_816_arg0] = L_818_;
		local L_819_ = L_5_:Create("TextLabel", {
			ZIndex = 4,
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 0.8,
			Text = " " .. L_816_arg0,
			TextSize = 15,
			Font = Enum.Font.Code,
			TextColor3 = library_flags["Menu Accent Color"],
			TextXAlignment = Enum.TextXAlignment.Left,
			Visible = self.multiselect and self.value[L_816_arg0] or self.value == L_816_arg0,
			Parent = L_818_
		})
		L_806_ = L_806_ or self.value == L_816_arg0 and L_819_;
		table.insert(L_5_.theme, L_819_)
		L_818_.InputBegan:connect(function(L_820_arg0)
			if L_820_arg0.UserInputType.Name == "MouseButton1" then
				if self.multiselect then
					self.value[L_816_arg0] = not self.value[L_816_arg0]
					self:SetValue(self.value)
				else
					self:SetValue(L_816_arg0)
					self:Close()
				end
			end
		end)
	end;
	for L_821_forvar0, L_822_forvar1 in next, L_800_arg0.values do
		L_800_arg0:AddValue(tostring(typeof(L_821_forvar0) == "number" and L_822_forvar1 or L_821_forvar0))
	end;
	function L_800_arg0:RemoveValue(L_823_arg0)
		local L_824_ = self.labels[L_823_arg0]
		if L_824_ then
			L_824_:Destroy()
			self.labels[L_823_arg0] = nil;
			L_804_ = L_804_ - 1;
			if self.multiselect then
				self.values[L_823_arg0] = nil;
				self:SetValue(self.value)
			else
				table.remove(self.values, table.find(self.values, L_823_arg0))
				if self.value == L_823_arg0 then
					L_806_ = nil;
					self:SetValue(self.values[1] or "")
				end
			end
		end
	end;
	function L_800_arg0:SetValue(L_825_arg0, L_826_arg1)
		if self.multiselect and typeof(L_825_arg0) ~= "table" then
			L_825_arg0 = {}
			for L_827_forvar0, L_828_forvar1 in next, self.values do
				L_825_arg0[L_828_forvar1] = false
			end
		end;
		self.value = typeof(L_825_arg0) == "table" and L_825_arg0 or tostring(table.find(self.values, L_825_arg0) and L_825_arg0 or self.values[1])
		library_flags[self.flag] = self.value;
		L_800_arg0.listvalue.Text = " " .. (self.multiselect and L_802_func() or self.value)
		if self.multiselect then
			for L_829_forvar0, L_830_forvar1 in next, self.labels do
				L_830_forvar1.TextTransparency = self.value[L_829_forvar0] and 1 or 0;
				if L_830_forvar1:FindFirstChild"TextLabel" then
					L_830_forvar1.TextLabel.Visible = self.value[L_829_forvar0]
				end
			end
		else
			if L_806_ then
				L_806_.TextTransparency = 0;
				if L_806_:FindFirstChild"TextLabel" then
					L_806_.TextLabel.Visible = false
				end
			end;
			if self.labels[self.value] then
				L_806_ = self.labels[self.value]
				L_806_.TextTransparency = 1;
				if L_806_:FindFirstChild"TextLabel" then
					L_806_.TextLabel.Visible = true
				end
			end
		end;
		if not L_826_arg1 then
			self.callback(self.value)
		end
	end;
	delay(1, function()
		if L_5_ then
			L_800_arg0:SetValue(L_800_arg0.value)
		end
	end)
	function L_800_arg0:Close()
		L_5_.popup = nil;
		L_800_arg0.arrow.Rotation = 90;
		self.open = false;
		L_800_arg0.holder.Visible = false;
		L_800_arg0.listvalue.BorderColor3 = Color3.new()
	end;
	return L_800_arg0
end;
local function L_19_func(L_831_arg0, L_832_arg1)
	L_831_arg0.hasInit = true;
	L_831_arg0.main = L_5_:Create("Frame", {
		LayoutOrder = L_831_arg0.position,
		Size = UDim2.new(1, 0, 0, L_831_arg0.text == "nil" and 26 or 44),
		BackgroundTransparency = 1,
		Parent = L_832_arg1
	})
	if L_831_arg0.text ~= "nil" then
		L_831_arg0.title = L_5_:Create("TextLabel", {
			Position = UDim2.new(0, 6, 0, 0),
			Size = UDim2.new(1, -12, 0, 18),
			BackgroundTransparency = 1,
			Text = L_831_arg0.text,
			TextSize = 15,
			Font = Enum.Font.Code,
			TextColor3 = Color3.fromRGB(210, 210, 210),
			TextXAlignment = Enum.TextXAlignment.Left,
			Parent = L_831_arg0.main
		})
	end;
	L_831_arg0.holder = L_5_:Create("Frame", {
		Position = UDim2.new(0, 6, 0, L_831_arg0.text == "nil" and 4 or 20),
		Size = UDim2.new(1, -12, 0, 20),
		BackgroundColor3 = Color3.fromRGB(50, 50, 50),
		BorderColor3 = Color3.new(),
		Parent = L_831_arg0.main
	})
	L_5_:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2454009026",
		ImageColor3 = Color3.new(),
		ImageTransparency = 0.8,
		Parent = L_831_arg0.holder
	})
	L_5_:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.fromRGB(60, 60, 60),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = L_831_arg0.holder
	})
	local L_833_ = L_5_:Create("TextBox", {
		Position = UDim2.new(0, 4, 0, 0),
		Size = UDim2.new(1, -4, 1, 0),
		BackgroundTransparency = 1,
		Text = "  " .. L_831_arg0.value,
		TextSize = 15,
		Font = Enum.Font.Code,
		TextColor3 = Color3.new(1, 1, 1),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextWrapped = true,
		ClearTextOnFocus = false,
		Parent = L_831_arg0.holder
	})
	L_833_.FocusLost:connect(function(L_834_arg0)
		L_831_arg0.holder.BorderColor3 = Color3.new()
		L_831_arg0:SetValue(L_833_.Text, L_834_arg0)
	end)
	L_833_.Focused:connect(function()
		L_831_arg0.holder.BorderColor3 = library_flags["Menu Accent Color"]
	end)
	L_833_.InputBegan:connect(function(L_835_arg0)
		if L_835_arg0.UserInputType.Name == "MouseButton1" then
			L_831_arg0:SetState(not L_831_arg0.state)
		end;
		if L_835_arg0.UserInputType.Name == "MouseMovement" then
			if not L_5_.popup and not L_5_.warning and not L_5_.slider then
				L_831_arg0.holder.BorderColor3 = library_flags["Menu Accent Color"]
			end;
			if L_831_arg0.tip then
				L_5_.tooltip.Text = L_831_arg0.tip;
				L_5_.tooltip.Size = UDim2.new(0, textService:GetTextSize(L_831_arg0.tip, 15, Enum.Font.Code, Vector2.new(387420489, 387420489)).X, 0, 20)
			end
		end
	end)
	L_833_.InputChanged:connect(function(L_836_arg0)
		if L_836_arg0.UserInputType.Name == "MouseMovement" then
			if L_831_arg0.tip then
				L_5_.tooltip.Position = UDim2.new(0, L_836_arg0.Position.X + 56, 0, L_836_arg0.Position.Y - 10)
			end
		end
	end)
	L_833_.InputEnded:connect(function(L_837_arg0)
		if L_837_arg0.UserInputType.Name == "MouseMovement" then
			if not L_833_:IsFocused() then
				L_831_arg0.holder.BorderColor3 = Color3.new()
			end;
			L_5_.tooltip.Position = UDim2.new(2)
		end
	end)
	function L_831_arg0:SetValue(L_838_arg0, L_839_arg1)
		if tostring(L_838_arg0) == "" then
			L_833_.Text = self.value
		else
			library_flags[self.flag] = tostring(L_838_arg0)
			self.value = tostring(L_838_arg0)
			L_833_.Text = self.value;
			self.callback(L_838_arg0, L_839_arg1)
		end
	end;
	delay(1, function()
		if L_5_ then
			L_831_arg0:SetValue(L_831_arg0.value)
		end
	end)
end;
local function L_20_func(L_840_arg0)
	L_840_arg0.mainHolder = L_5_:Create("TextButton", {
		ZIndex = 4,
		Size = UDim2.new(0, L_840_arg0.trans and 200 or 184, 0, 200),
		BackgroundColor3 = Color3.fromRGB(40, 40, 40),
		BorderColor3 = Color3.new(),
		AutoButtonColor = false,
		Visible = false,
		Parent = L_5_.base
	})
	L_5_:Create("ImageLabel", {
		ZIndex = 4,
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.fromRGB(60, 60, 60),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = L_840_arg0.mainHolder
	})
	local L_841_, L_842_, L_843_ = Color3.toHSV(L_840_arg0.color)
	L_841_, L_842_, L_843_ = L_841_ == 0 and 1 or L_841_, L_842_ + 0.005, L_843_ - 0.005;
	local L_844_;
	local L_845_;
	local L_846_;
	local L_847_;
	if L_840_arg0.trans then
		L_847_ = L_5_:Create("ImageLabel", {
			ZIndex = 5,
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			Image = "rbxassetid://2454009026",
			ImageColor3 = Color3.fromHSV(L_841_, 1, 1),
			Rotation = 180,
			Parent = L_5_:Create("ImageLabel", {
				ZIndex = 4,
				AnchorPoint = Vector2.new(1, 0),
				Position = UDim2.new(1, -6, 0, 6),
				Size = UDim2.new(0, 10, 1, -12),
				BorderColor3 = Color3.new(),
				Image = "rbxassetid://4632082392",
				ScaleType = Enum.ScaleType.Tile,
				TileSize = UDim2.new(0, 5, 0, 5),
				Parent = L_840_arg0.mainHolder
			})
		})
		L_840_arg0.transSlider = L_5_:Create("Frame", {
			ZIndex = 5,
			Position = UDim2.new(0, 0, L_840_arg0.trans, 0),
			Size = UDim2.new(1, 0, 0, 2),
			BackgroundColor3 = Color3.fromRGB(38, 41, 65),
			BorderColor3 = Color3.fromRGB(255, 255, 255),
			Parent = L_847_
		})
		L_847_.InputBegan:connect(function(L_853_arg0)
			if L_853_arg0.UserInputType.Name == "MouseButton1" then
				L_846_ = true;
				L_840_arg0:SetTrans(1 - (L_853_arg0.Position.Y - L_847_.AbsolutePosition.Y) / L_847_.AbsoluteSize.Y)
			end
		end)
		L_847_.InputEnded:connect(function(L_854_arg0)
			if L_854_arg0.UserInputType.Name == "MouseButton1" then
				L_846_ = false
			end
		end)
	end;
	local L_848_ = L_5_:Create("Frame", {
		ZIndex = 4,
		AnchorPoint = Vector2.new(0, 1),
		Position = UDim2.new(0, 6, 1, -6),
		Size = UDim2.new(1, L_840_arg0.trans and -28 or -12, 0, 10),
		BackgroundColor3 = Color3.new(1, 1, 1),
		BorderColor3 = Color3.new(),
		Parent = L_840_arg0.mainHolder
	})
	local L_849_ = L_5_:Create("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
			ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 0, 255)),
			ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 0, 255)),
			ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 255)),
			ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 255, 0)),
			ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 255, 0)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))
		}),
		Parent = L_848_
	})
	local L_850_ = L_5_:Create("Frame", {
		ZIndex = 4,
		Position = UDim2.new(1 - L_841_, 0, 0, 0),
		Size = UDim2.new(0, 2, 1, 0),
		BackgroundColor3 = Color3.fromRGB(38, 41, 65),
		BorderColor3 = Color3.fromRGB(255, 255, 255),
		Parent = L_848_
	})
	L_848_.InputBegan:connect(function(L_855_arg0)
		if L_855_arg0.UserInputType.Name == "MouseButton1" then
			L_844_ = true;
			X = L_848_.AbsolutePosition.X + L_848_.AbsoluteSize.X - L_848_.AbsolutePosition.X;
			X = math.clamp((L_855_arg0.Position.X - L_848_.AbsolutePosition.X) / X, 0, 0.995)
			L_840_arg0:SetColor(Color3.fromHSV(1 - X, L_842_, L_843_))
		end
	end)
	L_848_.InputEnded:connect(function(L_856_arg0)
		if L_856_arg0.UserInputType.Name == "MouseButton1" then
			L_844_ = false
		end
	end)
	local L_851_ = L_5_:Create("ImageLabel", {
		ZIndex = 4,
		Position = UDim2.new(0, 6, 0, 6),
		Size = UDim2.new(1, L_840_arg0.trans and -28 or -12, 1, -28),
		BackgroundColor3 = Color3.fromHSV(L_841_, 1, 1),
		BorderColor3 = Color3.new(),
		Image = "rbxassetid://4155801252",
		ClipsDescendants = true,
		Parent = L_840_arg0.mainHolder
	})
	local L_852_ = L_5_:Create("Frame", {
		ZIndex = 4,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(L_842_, 0, 1 - L_843_, 0),
		Size = UDim2.new(0, 4, 0, 4),
		Rotation = 45,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		Parent = L_851_
	})
	L_851_.InputBegan:connect(function(L_857_arg0)
		if L_857_arg0.UserInputType.Name == "MouseButton1" then
			L_845_ = true;
			X = L_851_.AbsolutePosition.X + L_851_.AbsoluteSize.X - L_851_.AbsolutePosition.X;
			Y = L_851_.AbsolutePosition.Y + L_851_.AbsoluteSize.Y - L_851_.AbsolutePosition.Y;
			X = math.clamp((L_857_arg0.Position.X - L_851_.AbsolutePosition.X) / X, 0.005, 1)
			Y = math.clamp((L_857_arg0.Position.Y - L_851_.AbsolutePosition.Y) / Y, 0, 0.995)
			L_840_arg0:SetColor(Color3.fromHSV(L_841_, X, 1 - Y))
		end
	end)
	L_5_:AddConnection(inputService.InputChanged, function(L_858_arg0)
		if L_858_arg0.UserInputType.Name == "MouseMovement" then
			if L_845_ then
				X = L_851_.AbsolutePosition.X + L_851_.AbsoluteSize.X - L_851_.AbsolutePosition.X;
				Y = L_851_.AbsolutePosition.Y + L_851_.AbsoluteSize.Y - L_851_.AbsolutePosition.Y;
				X = math.clamp((L_858_arg0.Position.X - L_851_.AbsolutePosition.X) / X, 0.005, 1)
				Y = math.clamp((L_858_arg0.Position.Y - L_851_.AbsolutePosition.Y) / Y, 0, 0.995)
				L_840_arg0:SetColor(Color3.fromHSV(L_841_, X, 1 - Y))
			elseif L_844_ then
				X = L_848_.AbsolutePosition.X + L_848_.AbsoluteSize.X - L_848_.AbsolutePosition.X;
				X = math.clamp((L_858_arg0.Position.X - L_848_.AbsolutePosition.X) / X, 0, 0.995)
				L_840_arg0:SetColor(Color3.fromHSV(1 - X, L_842_, L_843_))
			elseif L_846_ then
				L_840_arg0:SetTrans(1 - (L_858_arg0.Position.Y - L_847_.AbsolutePosition.Y) / L_847_.AbsoluteSize.Y)
			end
		end
	end)
	L_851_.InputEnded:connect(function(L_859_arg0)
		if L_859_arg0.UserInputType.Name == "MouseButton1" then
			L_845_ = false
		end
	end)
	function L_840_arg0:updateVisuals(L_860_arg0)
		L_841_, L_842_, L_843_ = Color3.toHSV(L_860_arg0)
		L_841_ = L_841_ == 0 and 1 or L_841_;
		L_851_.BackgroundColor3 = Color3.fromHSV(L_841_, 1, 1)
		if L_840_arg0.trans then
			L_847_.ImageColor3 = Color3.fromHSV(L_841_, 1, 1)
		end;
		L_850_.Position = UDim2.new(1 - L_841_, 0, 0, 0)
		L_852_.Position = UDim2.new(L_842_, 0, 1 - L_843_, 0)
	end;
	return L_840_arg0
end;
local function L_21_func(L_861_arg0, L_862_arg1)
	L_861_arg0.hasInit = true;
	if L_861_arg0.sub then
		L_861_arg0.main = L_861_arg0:getMain()
	else
		L_861_arg0.main = L_5_:Create("Frame", {
			LayoutOrder = L_861_arg0.position,
			Size = UDim2.new(1, 0, 0, 20),
			BackgroundTransparency = 1,
			Parent = L_862_arg1
		})
		L_861_arg0.title = L_5_:Create("TextLabel", {
			Position = UDim2.new(0, 6, 0, 0),
			Size = UDim2.new(1, -12, 1, 0),
			BackgroundTransparency = 1,
			Text = L_861_arg0.text,
			TextSize = 15,
			Font = Enum.Font.Code,
			TextColor3 = Color3.fromRGB(210, 210, 210),
			TextXAlignment = Enum.TextXAlignment.Left,
			Parent = L_861_arg0.main
		})
	end;
	L_861_arg0.visualize = L_5_:Create(L_861_arg0.sub and "TextButton" or "Frame", {
		Position = UDim2.new(1, - (L_861_arg0.subpos or 0) - 24, 0, 4),
		Size = UDim2.new(0, 18, 0, 12),
		SizeConstraint = Enum.SizeConstraint.RelativeYY,
		BackgroundColor3 = L_861_arg0.color,
		BorderColor3 = Color3.new(),
		Parent = L_861_arg0.main
	})
	L_5_:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2454009026",
		ImageColor3 = Color3.new(),
		ImageTransparency = 0.6,
		Parent = L_861_arg0.visualize
	})
	L_5_:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.fromRGB(60, 60, 60),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = L_861_arg0.visualize
	})
	local L_863_ = L_861_arg0.sub and L_861_arg0.visualize or L_861_arg0.main;
	if L_861_arg0.sub then
		L_861_arg0.visualize.Text = ""
		L_861_arg0.visualize.AutoButtonColor = false
	end;
	L_863_.InputBegan:connect(function(L_864_arg0)
		if L_864_arg0.UserInputType.Name == "MouseButton1" then
			if not L_861_arg0.mainHolder then
				L_20_func(L_861_arg0)
			end;
			if L_5_.popup == L_861_arg0 then
				L_5_.popup:Close()
				return
			end;
			if L_5_.popup then
				L_5_.popup:Close()
			end;
			L_861_arg0.open = true;
			local L_865_ = L_861_arg0.main.AbsolutePosition;
			L_861_arg0.mainHolder.Position = UDim2.new(0, L_865_.X + 36 + (L_861_arg0.trans and -16 or 0), 0, L_865_.Y + 56)
			L_861_arg0.mainHolder.Visible = true;
			L_5_.popup = L_861_arg0;
			L_861_arg0.visualize.BorderColor3 = library_flags["Menu Accent Color"]
		end;
		if L_864_arg0.UserInputType.Name == "MouseMovement" then
			if not L_5_.popup and not L_5_.warning and not L_5_.slider then
				L_861_arg0.visualize.BorderColor3 = library_flags["Menu Accent Color"]
			end;
			if L_861_arg0.tip then
				L_5_.tooltip.Text = L_861_arg0.tip;
				L_5_.tooltip.Size = UDim2.new(0, textService:GetTextSize(L_861_arg0.tip, 15, Enum.Font.Code, Vector2.new(387420489, 387420489)).X, 0, 20)
			end
		end
	end)
	L_863_.InputChanged:connect(function(L_866_arg0)
		if L_866_arg0.UserInputType.Name == "MouseMovement" then
			if L_861_arg0.tip then
				L_5_.tooltip.Position = UDim2.new(0, L_866_arg0.Position.X + 56, 0, L_866_arg0.Position.Y - 10)
			end
		end
	end)
	L_863_.InputEnded:connect(function(L_867_arg0)
		if L_867_arg0.UserInputType.Name == "MouseMovement" then
			if not L_861_arg0.open then
				L_861_arg0.visualize.BorderColor3 = Color3.new()
			end;
			L_5_.tooltip.Position = UDim2.new(2)
		end
	end)
	function L_861_arg0:SetColor(L_868_arg0, L_869_arg1)
		if typeof(L_868_arg0) == "table" then
			L_868_arg0 = Color3.new(L_868_arg0[1], L_868_arg0[2], L_868_arg0[3])
		end;
		L_868_arg0 = L_868_arg0 or Color3.new(1, 1, 1)
		if self.mainHolder then
			self:updateVisuals(L_868_arg0)
		end;
		L_861_arg0.visualize.BackgroundColor3 = L_868_arg0;
		library_flags[self.flag] = L_868_arg0;
		self.color = L_868_arg0;
		if not L_869_arg1 then
			self.callback(L_868_arg0)
		end
	end;
	if L_861_arg0.trans then
		function L_861_arg0:SetTrans(L_870_arg0, L_871_arg1)
			L_870_arg0 = math.clamp(tonumber(L_870_arg0) or 0, 0, 1)
			if self.transSlider then
				self.transSlider.Position = UDim2.new(0, 0, L_870_arg0, 0)
			end;
			self.trans = L_870_arg0;
			library_flags[self.flag .. " Transparency"] = 1 - L_870_arg0;
			self.calltrans(L_870_arg0)
		end;
		L_861_arg0:SetTrans(L_861_arg0.trans)
	end;
	delay(1, function()
		if L_5_ then
			L_861_arg0:SetColor(L_861_arg0.color)
		end
	end)
	function L_861_arg0:Close()
		L_5_.popup = nil;
		self.open = false;
		self.mainHolder.Visible = false;
		L_861_arg0.visualize.BorderColor3 = Color3.new()
	end
end;
function L_5_:AddTab(L_872_arg0, L_873_arg1)
	local L_874_ = {
		canInit = true,
		hasInit = false,
		columns = {},
		title = tostring(L_872_arg0)
	}
	table.insert(self.tabs, L_873_arg1 or # self.tabs + 1, L_874_)
	function L_874_:GetColumn(L_875_arg0)
		return self.columns[L_875_arg0]
	end;
	function L_874_:AddColumn()
		local L_876_ = {
			sections = {},
			position = # self.columns,
			canInit = true,
			tab = self
		}
		table.insert(self.columns, L_876_)
		function L_876_:AddSection(L_877_arg0)
			local L_878_ = {
				title = tostring(L_877_arg0),
				hasInit = false,
				options = {},
				canInit = true,
				column = self
			}
			table.insert(self.sections, L_878_)
			function L_878_:AddLabel(L_879_arg0)
				local L_880_ = {}
				L_880_.section = self;
				L_880_.text = tostring(L_879_arg0)
				L_880_.type = "label"
				L_880_.position = # self.options;
				L_880_.canInit = true;
				table.insert(self.options, L_880_)
				if L_5_.hasInit and self.hasInit then
					L_13_func(L_880_, self.content)
				else
					L_880_.Init = L_13_func
				end;
				return L_880_
			end;
			function L_878_:AddToggle(L_881_arg0)
				L_881_arg0 = typeof(L_881_arg0) == "table" and L_881_arg0 or {}
				L_881_arg0.section = self;
				L_881_arg0.text = tostring(L_881_arg0.text)
				L_881_arg0.state = typeof(L_881_arg0.state) == "boolean" and L_881_arg0.state or false;
				L_881_arg0.callback = typeof(L_881_arg0.callback) == "function" and L_881_arg0.callback or function()
				end;
				L_881_arg0.type = "toggle"
				L_881_arg0.position = # self.options;
				L_881_arg0.flag = (L_5_.flagprefix and L_5_.flagprefix .. " " or "") .. (L_881_arg0.flag or L_881_arg0.text)
				L_881_arg0.subcount = 0;
				L_881_arg0.canInit = L_881_arg0.canInit ~= nil and L_881_arg0.canInit or true;
				L_881_arg0.tip = L_881_arg0.tip and tostring(L_881_arg0.tip)
				L_881_arg0.style = L_881_arg0.style == 2;
				library_flags[L_881_arg0.flag] = L_881_arg0.state;
				table.insert(self.options, L_881_arg0)
				L_5_.options[L_881_arg0.flag] = L_881_arg0;
				function L_881_arg0:AddColor(L_882_arg0)
					L_882_arg0 = typeof(L_882_arg0) == "table" and L_882_arg0 or {}
					L_882_arg0.sub = true;
					L_882_arg0.subpos = self.subcount * 24;
					function L_882_arg0:getMain()
						return L_881_arg0.main
					end;
					self.subcount = self.subcount + 1;
					return L_878_:AddColor(L_882_arg0)
				end;
				function L_881_arg0:AddBind(L_883_arg0)
					L_883_arg0 = typeof(L_883_arg0) == "table" and L_883_arg0 or {}
					L_883_arg0.sub = true;
					L_883_arg0.subpos = self.subcount * 24;
					function L_883_arg0:getMain()
						return L_881_arg0.main
					end;
					self.subcount = self.subcount + 1;
					return L_878_:AddBind(L_883_arg0)
				end;
				function L_881_arg0:AddList(L_884_arg0)
					L_884_arg0 = typeof(L_884_arg0) == "table" and L_884_arg0 or {}
					L_884_arg0.sub = true;
					function L_884_arg0:getMain()
						return L_881_arg0.main
					end;
					self.subcount = self.subcount + 1;
					return L_878_:AddList(L_884_arg0)
				end;
				function L_881_arg0:AddSlider(L_885_arg0)
					L_885_arg0 = typeof(L_885_arg0) == "table" and L_885_arg0 or {}
					L_885_arg0.sub = true;
					function L_885_arg0:getMain()
						return L_881_arg0.main
					end;
					self.subcount = self.subcount + 1;
					return L_878_:AddSlider(L_885_arg0)
				end;
				if L_5_.hasInit and self.hasInit then
					L_14_func(L_881_arg0, self.content)
				else
					L_881_arg0.Init = L_14_func
				end;
				return L_881_arg0
			end;
			function L_878_:AddButton(L_886_arg0)
				L_886_arg0 = typeof(L_886_arg0) == "table" and L_886_arg0 or {}
				L_886_arg0.section = self;
				L_886_arg0.text = tostring(L_886_arg0.text)
				L_886_arg0.callback = typeof(L_886_arg0.callback) == "function" and L_886_arg0.callback or function()
				end;
				L_886_arg0.type = "button"
				L_886_arg0.position = # self.options;
				L_886_arg0.flag = (L_5_.flagprefix and L_5_.flagprefix .. " " or "") .. (L_886_arg0.flag or L_886_arg0.text)
				L_886_arg0.subcount = 0;
				L_886_arg0.canInit = L_886_arg0.canInit ~= nil and L_886_arg0.canInit or true;
				L_886_arg0.tip = L_886_arg0.tip and tostring(L_886_arg0.tip)
				table.insert(self.options, L_886_arg0)
				L_5_.options[L_886_arg0.flag] = L_886_arg0;
				function L_886_arg0:AddBind(L_887_arg0)
					L_887_arg0 = typeof(L_887_arg0) == "table" and L_887_arg0 or {}
					L_887_arg0.sub = true;
					L_887_arg0.subpos = self.subcount * 24;
					function L_887_arg0:getMain()
						L_886_arg0.main.Size = UDim2.new(1, 0, 0, 40)
						return L_886_arg0.main
					end;
					self.subcount = self.subcount + 1;
					return L_878_:AddBind(L_887_arg0)
				end;
				function L_886_arg0:AddColor(L_888_arg0)
					L_888_arg0 = typeof(L_888_arg0) == "table" and L_888_arg0 or {}
					L_888_arg0.sub = true;
					L_888_arg0.subpos = self.subcount * 24;
					function L_888_arg0:getMain()
						L_886_arg0.main.Size = UDim2.new(1, 0, 0, 40)
						return L_886_arg0.main
					end;
					self.subcount = self.subcount + 1;
					return L_878_:AddColor(L_888_arg0)
				end;
				if L_5_.hasInit and self.hasInit then
					L_15_func(L_886_arg0, self.content)
				else
					L_886_arg0.Init = L_15_func
				end;
				return L_886_arg0
			end;
			function L_878_:AddBind(L_889_arg0)
				L_889_arg0 = typeof(L_889_arg0) == "table" and L_889_arg0 or {}
				L_889_arg0.section = self;
				L_889_arg0.text = tostring(L_889_arg0.text)
				L_889_arg0.key = L_889_arg0.key and L_889_arg0.key.Name or L_889_arg0.key or "none"
				L_889_arg0.nomouse = typeof(L_889_arg0.nomouse) == "boolean" and L_889_arg0.nomouse or false;
				L_889_arg0.mode = typeof(L_889_arg0.mode) == "string" and (L_889_arg0.mode == "toggle" or L_889_arg0.mode == "hold" and L_889_arg0.mode) or "toggle"
				L_889_arg0.callback = typeof(L_889_arg0.callback) == "function" and L_889_arg0.callback or function()
				end;
				L_889_arg0.type = "bind"
				L_889_arg0.position = # self.options;
				L_889_arg0.flag = (L_5_.flagprefix and L_5_.flagprefix .. " " or "") .. (L_889_arg0.flag or L_889_arg0.text)
				L_889_arg0.canInit = L_889_arg0.canInit ~= nil and L_889_arg0.canInit or true;
				L_889_arg0.tip = L_889_arg0.tip and tostring(L_889_arg0.tip)
				table.insert(self.options, L_889_arg0)
				L_5_.options[L_889_arg0.flag] = L_889_arg0;
				if L_5_.hasInit and self.hasInit then
					L_16_func(L_889_arg0, self.content)
				else
					L_889_arg0.Init = L_16_func
				end;
				return L_889_arg0
			end;
			function L_878_:AddSlider(L_890_arg0)
				L_890_arg0 = typeof(L_890_arg0) == "table" and L_890_arg0 or {}
				L_890_arg0.section = self;
				L_890_arg0.text = tostring(L_890_arg0.text)
				L_890_arg0.min = typeof(L_890_arg0.min) == "number" and L_890_arg0.min or 0;
				L_890_arg0.max = typeof(L_890_arg0.max) == "number" and L_890_arg0.max or 0;
				L_890_arg0.value = L_890_arg0.min < 0 and 0 or math.clamp(typeof(L_890_arg0.value) == "number" and L_890_arg0.value or L_890_arg0.min, L_890_arg0.min, L_890_arg0.max)
				L_890_arg0.callback = typeof(L_890_arg0.callback) == "function" and L_890_arg0.callback or function()
				end;
				L_890_arg0.float = typeof(L_890_arg0.value) == "number" and L_890_arg0.float or 1;
				L_890_arg0.suffix = L_890_arg0.suffix and tostring(L_890_arg0.suffix) or ""
				L_890_arg0.textpos = L_890_arg0.textpos == 2;
				L_890_arg0.type = "slider"
				L_890_arg0.position = # self.options;
				L_890_arg0.flag = (L_5_.flagprefix and L_5_.flagprefix .. " " or "") .. (L_890_arg0.flag or L_890_arg0.text)
				L_890_arg0.subcount = 0;
				L_890_arg0.canInit = L_890_arg0.canInit ~= nil and L_890_arg0.canInit or true;
				L_890_arg0.tip = L_890_arg0.tip and tostring(L_890_arg0.tip)
				library_flags[L_890_arg0.flag] = L_890_arg0.value;
				table.insert(self.options, L_890_arg0)
				L_5_.options[L_890_arg0.flag] = L_890_arg0;
				function L_890_arg0:AddColor(L_891_arg0)
					L_891_arg0 = typeof(L_891_arg0) == "table" and L_891_arg0 or {}
					L_891_arg0.sub = true;
					L_891_arg0.subpos = self.subcount * 24;
					function L_891_arg0:getMain()
						return L_890_arg0.main
					end;
					self.subcount = self.subcount + 1;
					return L_878_:AddColor(L_891_arg0)
				end;
				function L_890_arg0:AddBind(L_892_arg0)
					L_892_arg0 = typeof(L_892_arg0) == "table" and L_892_arg0 or {}
					L_892_arg0.sub = true;
					L_892_arg0.subpos = self.subcount * 24;
					function L_892_arg0:getMain()
						return L_890_arg0.main
					end;
					self.subcount = self.subcount + 1;
					return L_878_:AddBind(L_892_arg0)
				end;
				if L_5_.hasInit and self.hasInit then
					L_17_func(L_890_arg0, self.content)
				else
					L_890_arg0.Init = L_17_func
				end;
				return L_890_arg0
			end;
			function L_878_:AddList(L_893_arg0)
				L_893_arg0 = typeof(L_893_arg0) == "table" and L_893_arg0 or {}
				L_893_arg0.section = self;
				L_893_arg0.text = tostring(L_893_arg0.text)
				L_893_arg0.values = typeof(L_893_arg0.values) == "table" and L_893_arg0.values or {}
				L_893_arg0.callback = typeof(L_893_arg0.callback) == "function" and L_893_arg0.callback or function()
				end;
				L_893_arg0.multiselect = typeof(L_893_arg0.multiselect) == "boolean" and L_893_arg0.multiselect or false;
				L_893_arg0.value = L_893_arg0.multiselect and (typeof(L_893_arg0.value) == "table" and L_893_arg0.value or {}) or tostring(L_893_arg0.value or L_893_arg0.values[1] or "")
				if L_893_arg0.multiselect then
					for L_894_forvar0, L_895_forvar1 in next, L_893_arg0.values do
						L_893_arg0.value[L_895_forvar1] = false
					end
				end;
				L_893_arg0.max = L_893_arg0.max or 4;
				L_893_arg0.open = false;
				L_893_arg0.type = "list"
				L_893_arg0.position = # self.options;
				L_893_arg0.labels = {}
				L_893_arg0.flag = (L_5_.flagprefix and L_5_.flagprefix .. " " or "") .. (L_893_arg0.flag or L_893_arg0.text)
				L_893_arg0.subcount = 0;
				L_893_arg0.canInit = L_893_arg0.canInit ~= nil and L_893_arg0.canInit or true;
				L_893_arg0.tip = L_893_arg0.tip and tostring(L_893_arg0.tip)
				library_flags[L_893_arg0.flag] = L_893_arg0.value;
				table.insert(self.options, L_893_arg0)
				L_5_.options[L_893_arg0.flag] = L_893_arg0;
				function L_893_arg0:AddValue(L_896_arg0, L_897_arg1)
					if self.multiselect then
						self.values[L_896_arg0] = L_897_arg1
					else
						table.insert(self.values, L_896_arg0)
					end
				end;
				function L_893_arg0:AddColor(L_898_arg0)
					L_898_arg0 = typeof(L_898_arg0) == "table" and L_898_arg0 or {}
					L_898_arg0.sub = true;
					L_898_arg0.subpos = self.subcount * 24;
					function L_898_arg0:getMain()
						return L_893_arg0.main
					end;
					self.subcount = self.subcount + 1;
					return L_878_:AddColor(L_898_arg0)
				end;
				function L_893_arg0:AddBind(L_899_arg0)
					L_899_arg0 = typeof(L_899_arg0) == "table" and L_899_arg0 or {}
					L_899_arg0.sub = true;
					L_899_arg0.subpos = self.subcount * 24;
					function L_899_arg0:getMain()
						return L_893_arg0.main
					end;
					self.subcount = self.subcount + 1;
					return L_878_:AddBind(L_899_arg0)
				end;
				if L_5_.hasInit and self.hasInit then
					L_18_func(L_893_arg0, self.content)
				else
					L_893_arg0.Init = L_18_func
				end;
				return L_893_arg0
			end;
			function L_878_:AddBox(L_900_arg0)
				L_900_arg0 = typeof(L_900_arg0) == "table" and L_900_arg0 or {}
				L_900_arg0.section = self;
				L_900_arg0.text = tostring(L_900_arg0.text)
				L_900_arg0.value = tostring(L_900_arg0.value or "")
				L_900_arg0.callback = typeof(L_900_arg0.callback) == "function" and L_900_arg0.callback or function()
				end;
				L_900_arg0.type = "box"
				L_900_arg0.position = # self.options;
				L_900_arg0.flag = (L_5_.flagprefix and L_5_.flagprefix .. " " or "") .. (L_900_arg0.flag or L_900_arg0.text)
				L_900_arg0.canInit = L_900_arg0.canInit ~= nil and L_900_arg0.canInit or true;
				L_900_arg0.tip = L_900_arg0.tip and tostring(L_900_arg0.tip)
				library_flags[L_900_arg0.flag] = L_900_arg0.value;
				table.insert(self.options, L_900_arg0)
				L_5_.options[L_900_arg0.flag] = L_900_arg0;
				if L_5_.hasInit and self.hasInit then
					L_19_func(L_900_arg0, self.content)
				else
					L_900_arg0.Init = L_19_func
				end;
				return L_900_arg0
			end;
			function L_878_:AddColor(L_901_arg0)
				L_901_arg0 = typeof(L_901_arg0) == "table" and L_901_arg0 or {}
				L_901_arg0.section = self;
				L_901_arg0.text = tostring(L_901_arg0.text)
				L_901_arg0.color = typeof(L_901_arg0.color) == "table" and Color3.new(tonumber(L_901_arg0.color[1]), tonumber(L_901_arg0.color[2]), tonumber(L_901_arg0.color[3])) or L_901_arg0.color or Color3.new(255, 255, 255)
				L_901_arg0.callback = typeof(L_901_arg0.callback) == "function" and L_901_arg0.callback or function()
				end;
				L_901_arg0.calltrans = typeof(L_901_arg0.calltrans) == "function" and L_901_arg0.calltrans or L_901_arg0.calltrans == 1 and L_901_arg0.callback or function()
				end;
				L_901_arg0.open = false;
				L_901_arg0.trans = tonumber(L_901_arg0.trans)
				L_901_arg0.subcount = 1;
				L_901_arg0.type = "color"
				L_901_arg0.position = # self.options;
				L_901_arg0.flag = (L_5_.flagprefix and L_5_.flagprefix .. " " or "") .. (L_901_arg0.flag or L_901_arg0.text)
				L_901_arg0.canInit = L_901_arg0.canInit ~= nil and L_901_arg0.canInit or true;
				L_901_arg0.tip = L_901_arg0.tip and tostring(L_901_arg0.tip)
				library_flags[L_901_arg0.flag] = L_901_arg0.color;
				table.insert(self.options, L_901_arg0)
				L_5_.options[L_901_arg0.flag] = L_901_arg0;
				function L_901_arg0:AddColor(L_902_arg0)
					L_902_arg0 = typeof(L_902_arg0) == "table" and L_902_arg0 or {}
					L_902_arg0.sub = true;
					L_902_arg0.subpos = self.subcount * 24;
					function L_902_arg0:getMain()
						return L_901_arg0.main
					end;
					self.subcount = self.subcount + 1;
					return L_878_:AddColor(L_902_arg0)
				end;
				if L_901_arg0.trans then
					library_flags[L_901_arg0.flag .. " Transparency"] = L_901_arg0.trans
				end;
				if L_5_.hasInit and self.hasInit then
					L_21_func(L_901_arg0, self.content)
				else
					L_901_arg0.Init = L_21_func
				end;
				return L_901_arg0
			end;
			function L_878_:SetTitle(L_903_arg0)
				self.title = tostring(L_903_arg0)
				if self.titleText then
					self.titleText.Text = tostring(L_903_arg0)
				end
			end;
			function L_878_:Init()
				if self.hasInit then
					return
				end;
				self.hasInit = true;
				self.main = L_5_:Create("Frame", {
					BackgroundColor3 = Color3.fromRGB(30, 30, 30),
					BorderColor3 = Color3.new(),
					Parent = L_876_.main
				})
				self.content = L_5_:Create("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundColor3 = Color3.fromRGB(30, 30, 30),
					BorderColor3 = Color3.fromRGB(60, 60, 60),
					BorderMode = Enum.BorderMode.Inset,
					Parent = self.main
				})
				table.insert(L_5_.theme, L_5_:Create("Frame", {
					Size = UDim2.new(1, 0, 0, 1),
					BackgroundColor3 = library_flags["Menu Accent Color"],
					BorderSizePixel = 0,
					BorderMode = Enum.BorderMode.Inset,
					Parent = self.main
				}))
				local L_904_ = L_5_:Create("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 2),
					Parent = self.content
				})
				L_5_:Create("UIPadding", {
					PaddingTop = UDim.new(0, 12),
					Parent = self.content
				})
				self.titleText = L_5_:Create("TextLabel", {
					AnchorPoint = Vector2.new(0, 0.5),
					Position = UDim2.new(0, 12, 0, 0),
					Size = UDim2.new(0, textService:GetTextSize(self.title, 15, Enum.Font.Code, Vector2.new(387420489, 387420489)).X + 10, 0, 2),
					BackgroundColor3 = Color3.fromRGB(30, 30, 30),
					BorderSizePixel = 0,
					Text = self.title,
					TextSize = 15,
					Font = Enum.Font.Code,
					TextColor3 = Color3.new(1, 1, 1),
					Parent = self.main
				})
				L_904_.Changed:connect(function()
					self.main.Size = UDim2.new(1, 0, 0, L_904_.AbsoluteContentSize.Y + 16)
				end)
				for L_905_forvar0, L_906_forvar1 in next, self.options do
					L_906_forvar1.Init(L_906_forvar1, self.content)
				end
			end;
			if L_5_.hasInit and self.hasInit then
				L_878_:Init()
			end;
			return L_878_
		end;
		function L_876_:Init()
			if self.hasInit then
				return
			end;
			self.hasInit = true;
			self.main = L_5_:Create("ScrollingFrame", {
				ZIndex = 2,
				Position = UDim2.new(0, 6 + self.position * 239, 0, 2),
				Size = UDim2.new(0, 233, 1, -4),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarImageColor3 = Color3.fromRGB(),
				ScrollBarThickness = 4,
				VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				Visible = false,
				Parent = L_5_.columnHolder
			})
			local L_907_ = L_5_:Create("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 12),
				Parent = self.main
			})
			L_5_:Create("UIPadding", {
				PaddingTop = UDim.new(0, 8),
				PaddingLeft = UDim.new(0, 2),
				PaddingRight = UDim.new(0, 2),
				Parent = self.main
			})
			L_907_.Changed:connect(function()
				self.main.CanvasSize = UDim2.new(0, 0, 0, L_907_.AbsoluteContentSize.Y + 14)
			end)
			for L_908_forvar0, L_909_forvar1 in next, self.sections do
				if L_909_forvar1.canInit and # L_909_forvar1.options > 0 then
					L_909_forvar1:Init()
				end
			end
		end;
		if L_5_.hasInit and self.hasInit then
			L_876_:Init()
		end;
		return L_876_
	end;
	function L_874_:Init()
		if self.hasInit then
			return
		end;
		self.hasInit = true;
		local L_910_ = textService:GetTextSize(self.title, 18, Enum.Font.Code, Vector2.new(387420489, 387420489)).X + 10;
		self.button = L_5_:Create("TextLabel", {
			Position = UDim2.new(0, L_5_.tabSize, 0, 22),
			Size = UDim2.new(0, L_910_, 0, 30),
			BackgroundTransparency = 1,
			Text = self.title,
			TextColor3 = Color3.new(1, 1, 1),
			TextSize = 15,
			Font = Enum.Font.Code,
			TextWrapped = true,
			ClipsDescendants = true,
			Parent = L_5_.main
		})
		L_5_.tabSize = L_5_.tabSize + L_910_;
		self.button.InputBegan:connect(function(L_911_arg0)
			if L_911_arg0.UserInputType.Name == "MouseButton1" then
				L_5_:selectTab(self)
			end
		end)
		for L_912_forvar0, L_913_forvar1 in next, self.columns do
			if L_913_forvar1.canInit then
				L_913_forvar1:Init()
			end
		end
	end;
	if self.hasInit then
		L_874_:Init()
	end;
	return L_874_
end;
function L_5_:AddWarning(L_914_arg0)
	L_914_arg0 = typeof(L_914_arg0) == "table" and L_914_arg0 or {}
	L_914_arg0.text = tostring(L_914_arg0.text)
	L_914_arg0.type = L_914_arg0.type == "confirm" and "confirm" or ""
	local L_915_;
	function L_914_arg0:Show()
		L_5_.warning = L_914_arg0;
		if L_914_arg0.main and L_914_arg0.type == "" then
			return
		end;
		if L_5_.popup then
			L_5_.popup:Close()
		end;
		if not L_914_arg0.main then
			L_914_arg0.main = L_5_:Create("TextButton", {
				ZIndex = 2,
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 0.6,
				BackgroundColor3 = Color3.new(),
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				Parent = L_5_.main
			})
			L_914_arg0.message = L_5_:Create("TextLabel", {
				ZIndex = 2,
				Position = UDim2.new(0, 20, 0.5, -60),
				Size = UDim2.new(1, -40, 0, 40),
				BackgroundTransparency = 1,
				TextSize = 16,
				Font = Enum.Font.Code,
				TextColor3 = Color3.new(1, 1, 1),
				TextWrapped = true,
				RichText = true,
				Parent = L_914_arg0.main
			})
			if L_914_arg0.type == "confirm" then
				local L_916_ = L_5_:Create("TextLabel", {
					ZIndex = 2,
					Position = UDim2.new(0.5, -105, 0.5, -10),
					Size = UDim2.new(0, 100, 0, 20),
					BackgroundColor3 = Color3.fromRGB(40, 40, 40),
					BorderColor3 = Color3.new(),
					Text = "Yes",
					TextSize = 16,
					Font = Enum.Font.Code,
					TextColor3 = Color3.new(1, 1, 1),
					Parent = L_914_arg0.main
				})
				L_5_:Create("ImageLabel", {
					ZIndex = 2,
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Image = "rbxassetid://2454009026",
					ImageColor3 = Color3.new(),
					ImageTransparency = 0.8,
					Parent = L_916_
				})
				L_5_:Create("ImageLabel", {
					ZIndex = 2,
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Image = "rbxassetid://2592362371",
					ImageColor3 = Color3.fromRGB(60, 60, 60),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(2, 2, 62, 62),
					Parent = L_916_
				})
				local L_917_ = L_5_:Create("TextLabel", {
					ZIndex = 2,
					Position = UDim2.new(0.5, 5, 0.5, -10),
					Size = UDim2.new(0, 100, 0, 20),
					BackgroundColor3 = Color3.fromRGB(40, 40, 40),
					BorderColor3 = Color3.new(),
					Text = "No",
					TextSize = 16,
					Font = Enum.Font.Code,
					TextColor3 = Color3.new(1, 1, 1),
					Parent = L_914_arg0.main
				})
				L_5_:Create("ImageLabel", {
					ZIndex = 2,
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Image = "rbxassetid://2454009026",
					ImageColor3 = Color3.new(),
					ImageTransparency = 0.8,
					Parent = L_917_
				})
				L_5_:Create("ImageLabel", {
					ZIndex = 2,
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Image = "rbxassetid://2592362371",
					ImageColor3 = Color3.fromRGB(60, 60, 60),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(2, 2, 62, 62),
					Parent = L_917_
				})
				L_916_.InputBegan:connect(function(L_918_arg0)
					if L_918_arg0.UserInputType.Name == "MouseButton1" then
						L_915_ = true
					end
				end)
				L_917_.InputBegan:connect(function(L_919_arg0)
					if L_919_arg0.UserInputType.Name == "MouseButton1" then
						L_915_ = false
					end
				end)
			else
				local L_920_ = L_5_:Create("TextLabel", {
					ZIndex = 2,
					Position = UDim2.new(0.5, -50, 0.5, -10),
					Size = UDim2.new(0, 100, 0, 20),
					BackgroundColor3 = Color3.fromRGB(30, 30, 30),
					BorderColor3 = Color3.new(),
					Text = "OK",
					TextSize = 16,
					Font = Enum.Font.Code,
					TextColor3 = Color3.new(1, 1, 1),
					Parent = L_914_arg0.main
				})
				L_5_:Create("ImageLabel", {
					ZIndex = 2,
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Image = "rbxassetid://2454009026",
					ImageColor3 = Color3.new(),
					ImageTransparency = 0.8,
					Parent = L_920_
				})
				L_5_:Create("ImageLabel", {
					ZIndex = 2,
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(1, -2, 1, -2),
					BackgroundTransparency = 1,
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(50, 50, 50),
					Parent = L_920_
				})
				L_920_.InputBegan:connect(function(L_921_arg0)
					if L_921_arg0.UserInputType.Name == "MouseButton1" then
						L_915_ = true
					end
				end)
			end
		end;
		L_914_arg0.main.Visible = true;
		L_914_arg0.message.Text = L_914_arg0.text;
		repeat
			wait()
		until L_915_ ~= nil;
		spawn(L_914_arg0.Close)
		L_5_.warning = nil;
		return L_915_
	end;
	function L_914_arg0:Close()
		L_915_ = nil;
		if not L_914_arg0.main then
			return
		end;
		L_914_arg0.main.Visible = false
	end;
	return L_914_arg0
end;
function L_5_:Close()
	self.open = not self.open;
	if self.open then
		inputService.MouseIconEnabled = false
	else
		inputService.MouseIconEnabled = self.mousestate;
		L_4_.mainFrame.Visible = false
	end;
	if self.main then
		if self.popup then
			self.popup:Close()
		end;
		self.main.Visible = self.open;
		self.cursor.Visible = self.open;
		self.cursor1.Visible = self.open
	end
end;
function L_5_:Init()
	if self.hasInit then
		return
	end;
	self.hasInit = true;
	self.base = L_5_:Create("ScreenGui", {
		IgnoreGuiInset = true
	})
	if runService:IsStudio() then
		self.base.Parent = script.Parent.Parent
	elseif syn then
		syn.protect_gui(self.base)
		self.base.Parent = game:GetService"CoreGui"
	end;
	self.main = self:Create("ImageButton", {
		AutoButtonColor = false,
		Position = UDim2.new(0, 100, 0, 46),
		Size = UDim2.new(0, 500, 0, 600),
		BackgroundColor3 = Color3.fromRGB(20, 20, 20),
		BorderColor3 = Color3.new(),
		ScaleType = Enum.ScaleType.Tile,
		Modal = true,
		Visible = false,
		Parent = self.base
	})
	local L_922_ = self:Create("Frame", {
		Size = UDim2.new(1, 0, 0, 50),
		BackgroundColor3 = Color3.fromRGB(30, 30, 30),
		BorderColor3 = Color3.new(),
		Parent = self.main
	})
	self:Create("TextLabel", {
		Position = UDim2.new(0, 6, 0, -1),
		Size = UDim2.new(0, 0, 0, 20),
		BackgroundTransparency = 1,
		Text = tostring(self.title),
		Font = Enum.Font.Code,
		TextSize = 18,
		TextColor3 = Color3.new(1, 1, 1),
		TextXAlignment = Enum.TextXAlignment.Left,
		Parent = self.main
	})
	table.insert(L_5_.theme, self:Create("Frame", {
		Size = UDim2.new(1, 0, 0, 1),
		Position = UDim2.new(0, 0, 0, 24),
		BackgroundColor3 = library_flags["Menu Accent Color"],
		BorderSizePixel = 0,
		Parent = self.main
	}))
	L_5_:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2454009026",
		ImageColor3 = Color3.new(),
		ImageTransparency = 0.4,
		Parent = L_922_
	})
	self.tabHighlight = self:Create("Frame", {
		BackgroundColor3 = library_flags["Menu Accent Color"],
		BorderSizePixel = 0,
		Parent = self.main
	})
	table.insert(L_5_.theme, self.tabHighlight)
	self.columnHolder = self:Create("Frame", {
		Position = UDim2.new(0, 5, 0, 55),
		Size = UDim2.new(1, -10, 1, -60),
		BackgroundTransparency = 1,
		Parent = self.main
	})
	self.cursor = self:Create("Triangle", {
		Color = Color3.fromRGB(180, 180, 180),
		Transparency = 0.6
	})
	self.cursor1 = self:Create("Triangle", {
		Color = Color3.fromRGB(240, 240, 240),
		Transparency = 0.6
	})
	self.tooltip = self:Create("TextLabel", {
		ZIndex = 2,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		TextSize = 15,
		Font = Enum.Font.Code,
		TextColor3 = Color3.new(1, 1, 1),
		Visible = true,
		Parent = self.base
	})
	self:Create("Frame", {
		AnchorPoint = Vector2.new(0.5, 0),
		Position = UDim2.new(0.5, 0, 0, 0),
		Size = UDim2.new(1, 10, 1, 0),
		Style = Enum.FrameStyle.RobloxRound,
		Parent = self.tooltip
	})
	self:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.fromRGB(60, 60, 60),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = self.main
	})
	L_922_.InputBegan:connect(function(L_923_arg0)
		if L_923_arg0.UserInputType.Name == "MouseButton1" then
			L_10_ = self.main;
			L_6_ = true;
			L_8_ = L_923_arg0.Position;
			L_9_ = L_10_.Position;
			if L_5_.popup then
				L_5_.popup:Close()
			end
		end
	end)
	L_922_.InputChanged:connect(function(L_924_arg0)
		if L_6_ and L_924_arg0.UserInputType.Name == "MouseMovement" then
			L_7_ = L_924_arg0
		end
	end)
	L_922_.InputEnded:connect(function(L_925_arg0)
		if L_925_arg0.UserInputType.Name == "MouseButton1" then
			L_6_ = false
		end
	end)
	function self:selectTab(L_926_arg0)
		if self.currentTab == L_926_arg0 then
			return
		end;
		if L_5_.popup then
			L_5_.popup:Close()
		end;
		if self.currentTab then
			self.currentTab.button.TextColor3 = Color3.fromRGB(255, 255, 255)
			for L_927_forvar0, L_928_forvar1 in next, self.currentTab.columns do
				L_928_forvar1.main.Visible = false
			end
		end;
		self.main.Size = UDim2.new(0, 16 + (# L_926_arg0.columns < 2 and 2 or # L_926_arg0.columns) * 239, 0, 600)
		self.currentTab = L_926_arg0;
		L_926_arg0.button.TextColor3 = library_flags["Menu Accent Color"]
		self.tabHighlight:TweenPosition(UDim2.new(0, L_926_arg0.button.Position.X.Offset, 0, 50), "Out", "Quad", 0.2, true)
		self.tabHighlight:TweenSize(UDim2.new(0, L_926_arg0.button.AbsoluteSize.X, 0, -1), "Out", "Quad", 0.1, true)
		for L_929_forvar0, L_930_forvar1 in next, L_926_arg0.columns do
			L_930_forvar1.main.Visible = true
		end
	end;
	spawn(function()
		while L_5_ do
			wait(1)
			local L_931_ = self:GetConfigs()
			for L_932_forvar0, L_933_forvar1 in next, L_931_ do
				if not table.find(self.options["Config List"].values, L_933_forvar1) then
					self.options["Config List"]:AddValue(L_933_forvar1)
				end
			end;
			for L_934_forvar0, L_935_forvar1 in next, self.options["Config List"].values do
				if not table.find(L_931_, L_935_forvar1) then
					self.options["Config List"]:RemoveValue(L_935_forvar1)
				end
			end;
			if isfolder("cipex_configs/scripts") then
				local L_936_ = {}
				for L_937_forvar0, L_938_forvar1 in next, listfiles("cipex_configs/scripts") do
					local L_939_ = L_938_forvar1:match('cipex_configs/scripts\\([%w%s%-]*)%.%a?')
					table.insert(L_936_, L_939_)
				end;
				for L_940_forvar0, L_941_forvar1 in next, L_936_ do
					if not table.find(self.options["scriptlist"].values, L_941_forvar1) then
						self.options["scriptlist"]:AddValue(L_941_forvar1)
					end
				end;
				for L_942_forvar0, L_943_forvar1 in next, self.options["scriptlist"].values do
					if not table.find(L_936_, L_943_forvar1) then
						self.options["scriptlist"]:RemoveValue(L_943_forvar1)
					end
				end
			else
				makefolder("cipex_configs/scripts")
			end
		end
	end)
	for L_944_forvar0, L_945_forvar1 in next, self.tabs do
		if L_945_forvar1.canInit then
			L_945_forvar1:Init()
			self:selectTab(L_945_forvar1)
		end
	end;
	self:AddConnection(inputService.InputEnded, function(L_946_arg0)
		if L_946_arg0.UserInputType.Name == "MouseButton1" and self.slider then
			self.slider.slider.BorderColor3 = Color3.new()
			self.slider = nil
		end
	end)
	self:AddConnection(inputService.InputChanged, function(L_947_arg0)
		if self.open then
			if L_947_arg0.UserInputType.Name == "MouseMovement" then
				if self.cursor then
					local L_948_ = inputService:GetMouseLocation()
					local L_949_ = Vector2.new(L_948_.X, L_948_.Y)
					self.cursor.PointA = L_949_;
					self.cursor.PointB = L_949_ + Vector2.new(12, 12)
					self.cursor.PointC = L_949_ + Vector2.new(12, 12)
					self.cursor1.PointA = L_949_;
					self.cursor1.PointB = L_949_ + Vector2.new(11, 11)
					self.cursor1.PointC = L_949_ + Vector2.new(11, 11)
				end;
				if self.slider then
					self.slider:SetValue(self.slider.min + (L_947_arg0.Position.X - self.slider.slider.AbsolutePosition.X) / self.slider.slider.AbsoluteSize.X * (self.slider.max - self.slider.min))
				end
			end;
			if L_947_arg0 == L_7_ and L_6_ and L_5_.draggable then
				local L_950_ = L_947_arg0.Position - L_8_;
				local L_951_ = L_9_.Y.Offset + L_950_.Y < -36 and -36 or L_9_.Y.Offset + L_950_.Y;
				L_10_:TweenPosition(UDim2.new(L_9_.X.Scale, L_9_.X.Offset + L_950_.X, L_9_.Y.Scale, L_951_), "Out", "Quint", 0.1, true)
			end
		end
	end)
	if not getgenv().silent then
		delay(1, function()
			self:Close()
		end)
	end
end;
function hasProperty(L_952_arg0, L_953_arg1)
	return pcall(function()
		_ = L_952_arg0[L_953_arg1]
	end)
end;
local L_22_ = {
	"HeadHB",
	"UpperTorso",
	"LowerTorso",
	"LeftUpperArm",
	"LeftLowerArm",
	"LeftHand",
	"RightUpperArm",
	"RightLowerArm",
	"RightHand",
	"LeftUpperLeg",
	"LeftLowerLeg",
	"LeftFoot",
	"RightUpperLeg",
	"RightLowerLeg",
	"RightFoot"
}
local L_23_ = game:GetService("ReplicatedStorage").Events.DataEvent;
local L_24_ = game:GetService("ReplicatedStorage")
local L_25_ = game:GetService("UserInputService")
local L_26_ = game:GetService("NetworkClient")
local L_27_ = game:GetService("TweenService")
local L_28_ = game:GetService("RunService")
local L_29_ = game:GetService("Lighting")
local L_30_ = game:GetService("Players")
local L_31_ = game:GetService("Debris")
local L_32_ = L_30_.LocalPlayer;
local L_33_ = L_32_:GetMouse()
local L_34_ = workspace.CurrentCamera;
local L_35_ = L_32_.PlayerGui.Client;
local L_36_ = getsenv(L_35_)
local L_37_, L_38_, L_39_ = false, false, false;
local L_40_ = L_24_.Events.HitPart;
local L_41_ = L_24_.Events.Vote;
local L_42_ = L_24_.Events.DropMag;
local L_43_ = Instance.new("Folder", workspace)
local L_44_ = Instance.new("ColorCorrectionEffect", L_29_)
local L_45_ = getsenv(L_32_.PlayerScripts.ControlScript.MasterControl)
local L_46_ = Instance.new("Folder", L_34_)
local L_47_ = {}
local L_48_ = Vector3.new(0, 0, 0)
local L_49_ = true;
local L_50_ = false;
getgenv().oldPositions = {}
local L_51_ = {}
local L_52_ = {}
local L_53_ = false;
local L_54_ = false;
local L_55_ = 0;
local L_56_ = {}
getgenv().target = nil;
getgenv().hookWS = false;
getgenv().hookJP = nil;
getgenv().holdE = false;
local L_57_ = {
	alive = false,
	melee = false,
	clientgun = nil,
	ammo = 0,
	name = "",
	sniper = false,
	silentAim = false,
	FOV = 0,
	silentFOV = 0,
	smoothness = 0,
	deadzone = 0,
	baim = false,
	mindmg = 0,
	hitboxes = {},
	trigger = false,
	triggerDelay = 0,
	type = ""
}
local L_58_ = 0;
local L_59_;
cbCHAMS = nil;
fonts = {
	UI = 0,
	System = 1,
	Plex = 2,
	Monospace = 3
}
Skyboxes = {
	["Purple Nebula"] = {
		["SkyboxBk"] = "rbxassetid://159454299",
		["SkyboxDn"] = "rbxassetid://159454296",
		["SkyboxFt"] = "rbxassetid://159454293",
		["SkyboxLf"] = "rbxassetid://159454286",
		["SkyboxRt"] = "rbxassetid://159454300",
		["SkyboxUp"] = "rbxassetid://159454288"
	},
	["Night Sky"] = {
		["SkyboxBk"] = "rbxassetid://12064107",
		["SkyboxDn"] = "rbxassetid://12064152",
		["SkyboxFt"] = "rbxassetid://12064121",
		["SkyboxLf"] = "rbxassetid://12063984",
		["SkyboxRt"] = "rbxassetid://12064115",
		["SkyboxUp"] = "rbxassetid://12064131"
	},
	["Pink Daylight"] = {
		["SkyboxBk"] = "rbxassetid://271042516",
		["SkyboxDn"] = "rbxassetid://271077243",
		["SkyboxFt"] = "rbxassetid://271042556",
		["SkyboxLf"] = "rbxassetid://271042310",
		["SkyboxRt"] = "rbxassetid://271042467",
		["SkyboxUp"] = "rbxassetid://271077958"
	},
	["Morning Glow"] = {
		["SkyboxBk"] = "rbxassetid://1417494030",
		["SkyboxDn"] = "rbxassetid://1417494146",
		["SkyboxFt"] = "rbxassetid://1417494253",
		["SkyboxLf"] = "rbxassetid://1417494402",
		["SkyboxRt"] = "rbxassetid://1417494499",
		["SkyboxUp"] = "rbxassetid://1417494643"
	},
	["Setting Sun"] = {
		["SkyboxBk"] = "rbxassetid://626460377",
		["SkyboxDn"] = "rbxassetid://626460216",
		["SkyboxFt"] = "rbxassetid://626460513",
		["SkyboxLf"] = "rbxassetid://626473032",
		["SkyboxRt"] = "rbxassetid://626458639",
		["SkyboxUp"] = "rbxassetid://626460625"
	},
	["Fade Blue"] = {
		["SkyboxBk"] = "rbxassetid://153695414",
		["SkyboxDn"] = "rbxassetid://153695352",
		["SkyboxFt"] = "rbxassetid://153695452",
		["SkyboxLf"] = "rbxassetid://153695320",
		["SkyboxRt"] = "rbxassetid://153695383",
		["SkyboxUp"] = "rbxassetid://153695471"
	},
	["Elegant Morning"] = {
		["SkyboxBk"] = "rbxassetid://153767241",
		["SkyboxDn"] = "rbxassetid://153767216",
		["SkyboxFt"] = "rbxassetid://153767266",
		["SkyboxLf"] = "rbxassetid://153767200",
		["SkyboxRt"] = "rbxassetid://153767231",
		["SkyboxUp"] = "rbxassetid://153767288"
	},
	["Neptune"] = {
		["SkyboxBk"] = "rbxassetid://218955819",
		["SkyboxDn"] = "rbxassetid://218953419",
		["SkyboxFt"] = "rbxassetid://218954524",
		["SkyboxLf"] = "rbxassetid://218958493",
		["SkyboxRt"] = "rbxassetid://218957134",
		["SkyboxUp"] = "rbxassetid://218950090"
	},
	["Redshift"] = {
		["SkyboxBk"] = "rbxassetid://401664839",
		["SkyboxDn"] = "rbxassetid://401664862",
		["SkyboxFt"] = "rbxassetid://401664960",
		["SkyboxLf"] = "rbxassetid://401664881",
		["SkyboxRt"] = "rbxassetid://401664901",
		["SkyboxUp"] = "rbxassetid://401664936"
	},
	["Aesthetic Night"] = {
		["SkyboxBk"] = "rbxassetid://1045964490",
		["SkyboxDn"] = "rbxassetid://1045964368",
		["SkyboxFt"] = "rbxassetid://1045964655",
		["SkyboxLf"] = "rbxassetid://1045964655",
		["SkyboxRt"] = "rbxassetid://1045964655",
		["SkyboxUp"] = "rbxassetid://1045962969"
	}
}
local L_60_ = {
	SmoothPlastic = "",
	ForceField = "4573037993"
}
hitSounds = {
	Bameware = "rbxassetid://3124331820",
	Bell = "rbxassetid://6534947240",
	Bubble = "rbxassetid://6534947588",
	Pick = "rbxassetid://1347140027",
	Pop = "rbxassetid://198598793",
	Rust = "rbxassetid://1255040462",
	Sans = "rbxassetid://3188795283",
	Fart = "rbxassetid://130833677",
	Big = "rbxassetid://5332005053",
	Vine = "rbxassetid://5332680810",
	Bruh = "rbxassetid://4578740568",
	Skeet = "rbxassetid://5633695679",
	Neverlose = "rbxassetid://6534948092",
	Fatality = "rbxassetid://6534947869",
	Bonk = "rbxassetid://5766898159",
	Minecraft = "rbxassetid://4018616850",
	Moan = {
		"rbxassetid://2440888376",
		"rbxassetid://2440889605",
		"rbxassetid://2440889869",
		"rbxassetid://2440889381",
		"rbxassetid://2440891382"
	}
}
L_33_.TargetFilter = L_34_;
indicatorHolder = Instance.new("ScreenGui", game.CoreGui)
leftIndicator = Instance.new("TextLabel", indicatorHolder)
rightIndicator = Instance.new("TextLabel", indicatorHolder)
indicatorHolder.Enabled = false;
leftIndicator.BackgroundTransparency = 1;
leftIndicator.Size = UDim2.new(0.4, 0, 0, 0)
leftIndicator.Position = UDim2.new(0, 0, 0.5, 0)
leftIndicator.TextXAlignment = "Right"
leftIndicator.TextColor3 = Color3.new(1, 1, 1)
leftIndicator.Text = "<"
leftIndicator.TextSize = 40;
leftIndicator.TextTransparency = 0.5;
leftIndicator.Font = "Bodoni"
rightIndicator.BackgroundTransparency = 1;
rightIndicator.Size = UDim2.new(0.6, 0, 0, 0)
rightIndicator.Position = UDim2.new(0, 0, 0.5, 0)
rightIndicator.TextXAlignment = "Right"
rightIndicator.TextColor3 = Color3.new(1, 1, 1)
rightIndicator.Text = ">"
rightIndicator.TextSize = 40;
rightIndicator.Font = "Bodoni"
rightIndicator.TextTransparency = 0.5;
L_4_ = game:GetObjects("rbxassetid://6219220506")[1]
L_4_.Parent = game.CoreGui;
L_4_.mainFrame.Visible = false;
L_4_.mainFrame.ZIndex = 100;
onHit = Instance.new("BindableEvent", workspace)
onHit.Name = "onHit"
onKill = Instance.new("BindableEvent", workspace)
onKill.Name = "onKill"
if not isfolder("cipex_configs/tempimages") then
	makefolder("cipex_configs/tempimages")
end;
if not isfolder("cipex_configs/demos") then
	makefolder("cipex_configs/demos")
end;
local L_61_ = -3846999;
local L_62_ = 8532252;
local L_63_ = -1162714;
local L_64_ = 52;
local L_65_ = 4;
local L_66_ = 82;
function encodePos(L_954_arg0)
	local L_955_, L_956_, L_957_ = L_954_arg0.X * L_64_, L_954_arg0.Y * L_65_, L_954_arg0.Z * L_66_;
	return Vector3.new(L_61_ + L_955_, L_62_ + L_956_, L_63_ + L_957_)
end;
function decodePos(L_958_arg0)
	local L_959_, L_960_, L_961_ = L_958_arg0.X - L_61_, L_958_arg0.Y - L_62_, L_958_arg0.Z - L_63_;
	return Vector3.new(L_959_ / L_64_, L_960_ / L_65_, L_961_ / L_66_)
end;
getgenv().encodePos = encodePos;
getgenv().decodePos = decodePos;
function addSkin(L_962_arg0, L_963_arg1, L_964_arg2, L_965_arg3, L_966_arg4)
	local L_967_, L_968_ = pcall(function()
		local L_969_ = {}
		for L_980_forvar0, L_981_forvar1 in next, L_964_arg2 do
			if L_981_forvar1:match("^%w+://([^/]+)") then
				local L_982_ = syn.request({
					Url = L_981_forvar1,
					Method = "GET"
				})
				if L_982_.Success then
					local L_983_ = "cipex_configs/tempimages/" .. L_980_forvar0 .. L_963_arg1 .. L_962_arg0 .. ".png"
					writefile(L_983_, L_982_.Body)
					L_964_arg2[L_980_forvar0] = getsynasset(L_983_)
					table.insert(L_969_, L_980_forvar0)
				end
			end
		end;
		local L_970_ = false;
		if L_965_arg3:match("^%w+://([^/]+)") then
			local L_984_ = syn.request({
				Url = L_965_arg3,
				Method = "GET"
			})
			if L_984_.Success then
				local L_985_ = "cipex_configs/tempimages/" .. "image" .. L_963_arg1 .. L_962_arg0 .. ".png"
				writefile(L_985_, L_984_.Body)
				L_965_arg3 = getsynasset(L_985_)
				L_970_ = true
			end
		end;
		local L_971_ = L_962_arg0 .. "_" .. L_963_arg1;
		local L_972_ = string.split(L_971_, "_")[2]
		local L_973_ = string.split(L_971_, "_")[1]
		if not L_970_ then
			L_965_arg3 = L_965_arg3 and "rbxassetid://" .. tostring(L_965_arg3) or "rbxassetid://1541381206"
		end;
		local L_974_ = nil;
		if L_966_arg4 == "Glove" then
			L_974_ = "Knife"
		else
			L_974_ = L_966_arg4 or "Red"
		end;
		local L_975_ = Instance.new("StringValue")
		L_975_.Name = L_972_;
		local L_976_ = Instance.new("StringValue")
		L_976_.Name = L_971_;
		local L_977_ = Instance.new("StringValue")
		L_977_.Name = L_972_;
		L_977_.Value = L_965_arg3;
		L_977_.Parent = game.Players.LocalPlayer.PlayerGui.Client.Images[L_973_]
		local L_978_ = Instance.new("StringValue")
		L_978_.Name = L_972_;
		L_978_.Name = "Quality"
		L_978_.Value = L_974_;
		L_978_.Parent = L_977_;
		local L_979_ = Instance.new("StringValue")
		L_979_.Name = L_971_;
		L_979_.Value = L_974_;
		L_979_.Parent = game.Players.LocalPlayer.PlayerGui.Client.Rarities;
		if L_966_arg4 == "Glove" then
			local L_986_ = L_24_.Gloves[L_973_]:GetChildren()[1]:Clone()
			L_986_.Textures.TextureId = "rbxassetid://" .. L_964_arg2.Main;
			L_986_.Name = L_972_;
			L_986_.Parent = L_24_.Gloves[L_973_]
		else
			local L_987_ = game.ReplicatedStorage.Skins[L_973_]:GetChildren()[1]:Clone()
			L_987_.Name = L_972_;
			L_987_.Parent = game.ReplicatedStorage.Skins[L_973_]
			for L_988_forvar0, L_989_forvar1 in next, L_987_:GetChildren() do
				if L_989_forvar1.ClassName ~= "Folder" then
					if L_989_forvar1.Value == "" then
						continue;
					end;
					local L_990_ = table.find(L_969_, L_989_forvar1.Name) and "" or "rbxassetid://"
					if L_964_arg2[L_989_forvar1.Name] then
						L_989_forvar1.Value = L_990_ .. L_964_arg2[L_989_forvar1.Name]
					else
						L_990_ = table.find(L_969_, "Main") and "" or "rbxassetid://"
						L_989_forvar1.Value = L_990_ .. L_964_arg2.Main
					end
				end
			end
		end
	end)
	if not L_967_ then
		warn(L_968_)
	end
end;
if not isfile("cipex_configs/customskins.txt") then
	writefile("cipex_configs/customskins.txt", [[
[
{"image":"1541381200","skins":{"Main":"1541381200"},"weaponname":"USP","skinname":"Example Skin","rarity":"Red"},
{"image":"1541381200","skins":{"Main":"6488789251"},"weaponname":"Butterfly Knife","skinname":"Drop Out","rarity":"Knife"},
{"image":"6515650373","skins":{"Main":"6515650373"},"weaponname":"Fingerless Glove","skinname":"Troll","rarity":"Glove"},
{"image":"6504360603","skins":{"Main":"6504360603"},"weaponname":"Fingerless Glove","skinname":"Pastel Galaxy","rarity":"Glove"},
{"image":"1541381200","skins":{"Scope":"1541381200","Main":"1541381200"},"weaponname":"AWP","skinname":"Example Skin","rarity":"Red"},
{"image":"6515853919","skins":{"Scope":"6515794979","Main":"6515853919"},"weaponname":"AWP","skinname":"Troll","rarity":"Red"},
{"image":"1541381200","skins":{"Main":"1541381200","Mag":"1541381200","Part1":"1541381200"},"weaponname":"AK47","skinname":"Example Skin","rarity":"Red"}
]
]])
end;
if isfile("cipex_configs/customskins.txt") then
	succes, reason = pcall(function()
		local L_991_ = readfile("cipex_configs/customskins.txt")
		local L_992_ = game:service("HttpService"):JSONDecode(L_991_)
		for L_993_forvar0, L_994_forvar1 in next, L_992_ do
			addSkin(L_994_forvar1.weaponname, L_994_forvar1.skinname, L_994_forvar1.skins, L_994_forvar1.image, L_994_forvar1.rarity)
		end;
		wait(0.5)
	end)
	if not succes then
		warn("[cipex] could not load custom skins! reason: " .. reason)
	end
end;
function chat(L_995_arg0)
	L_24_.Events.PlayerChatted:FireServer(L_995_arg0, false, false, true)
end;
function alive(L_996_arg0)
	if L_996_arg0 == nil then
		L_996_arg0 = L_32_
	end;
	if L_996_arg0.Character and L_996_arg0:FindFirstChild("Ragdoll") and L_996_arg0.Character.PrimaryPart and L_996_arg0.Character:FindFirstChild("UpperTorso") and L_996_arg0.Character:FindFirstChild("Head") and L_996_arg0.Character:FindFirstChild("EquippedTool") and L_996_arg0.Character:FindFirstChild("HumanoidRootPart") and L_996_arg0.Character:FindFirstChild("Humanoid") and L_996_arg0.Character.Humanoid.Health > 0 then
		return true
	end;
	return false
end;
function updateViewModelVisuals()
	local L_997_;
	if L_34_:FindFirstChild("Arms") then
		L_997_ = L_34_.Arms
	end;
	if L_997_ and L_997_.Name == "Arms" then
		for L_998_forvar0, L_999_forvar1 in next, L_997_:GetChildren() do
			if library_flags["Weapon Chams"] then
				if L_999_forvar1:IsA"MeshPart" or L_999_forvar1.Name == "Part" then
					if L_999_forvar1.Name == "StatClock" then
						L_999_forvar1:ClearAllChildren()
					end;
					L_999_forvar1.Color = library_flags["weaponColor"]
					L_999_forvar1.Transparency = 1 - L_5_.options["weaponColor"].trans;
					L_999_forvar1.Material = library_flags["weaponMaterial"]
					if hasProperty(L_999_forvar1, "TextureID") then
						L_999_forvar1.TextureID = ""
					end;
					if hasProperty(L_999_forvar1, "Reflectance") then
						L_999_forvar1.Reflectance = library_flags["weaponReflectance"] / 50
					end;
					if L_999_forvar1:FindFirstChild("SurfaceAppearance") then
						L_999_forvar1.SurfaceAppearance:Destroy()
					end
				end;
				local L_1000_ = false;
				for L_1001_forvar0, L_1002_forvar1 in next, L_34_.Arms:GetChildren() do
					if string.find(L_1002_forvar1.Name, 'Knife') or L_1002_forvar1.Name == "Handle2" or L_1002_forvar1.Name == "Blade" then
						L_1000_ = true
					end
				end;
				if L_1000_ then
					if L_34_.Arms:FindFirstChild("Handle") then
						L_34_.Arms.Handle.Transparency = 1
					end
				end;
				pcall(function()
					if L_34_.Arms:FindFirstChild("Silencer2") then
						if workspace.Map.SpawnPoints:FindFirstChild("BuyArea") then
							L_34_.Arms.Silencer2.Welded.Part0 = workspace.Map.SpawnPoints.BuyArea
						end
					end
				end)
			end;
			if L_999_forvar1:IsA"Model" then
				for L_1003_forvar0, L_1004_forvar1 in next, L_997_:GetDescendants() do
					if library_flags["Remove Sleeves"] and L_1004_forvar1.Name == "Sleeve" then
						L_1004_forvar1:Destroy()
					end;
					if library_flags["Arm Chams"] then
						if hasProperty(L_1004_forvar1, "CastShadow") then
							L_1004_forvar1.CastShadow = false
						end;
						local L_1005_ = library_flags["armMaterial"]
						if L_1004_forvar1:IsA"SpecialMesh" then
							if L_1005_ == "ForceField" then
								L_1004_forvar1.TextureId = L_60_[L_1005_]
							else
								L_1004_forvar1.TextureId = ""
							end;
							local L_1006_ = library_flags["armColor"]
							L_1004_forvar1.VertexColor = Vector3.new(L_1006_.R, L_1006_.G, L_1006_.B)
						end;
						if L_1004_forvar1:IsA"Part" then
							L_1004_forvar1.Material = L_1005_;
							L_1004_forvar1.Color = library_flags["armColor"]
							if L_1004_forvar1.Transparency == 1 then
								continue;
							end;
							L_1004_forvar1.Transparency = 1.01 - L_5_.options["armColor"].trans
						end
					end
				end
			end
		end
	end
end;
local L_67_ = {
	{
		"",
		"DualBerettas",
		"",
		"",
		"Deagle/R8"
	},
	{},
	{},
	{
		"",
		"AK47/M4",
		"Scout",
		"",
		"AWP",
		"Autosniper"
	},
	{
		"Kevlar Vest",
		"Kevlar + Helmet",
		""
	},
	{
		"Fire Grenade",
		"Decoy Grenade",
		"Flashbang",
		"HE Grenade",
		"Smoke Grenade"
	}
}
function buyWeapon(L_1007_arg0)
	if L_1007_arg0 == "None" then
		return
	end;
	wait(0.15)
	CreateThread(function()
		L_36_.createNotification2("Purchasing " .. L_1007_arg0 .. "...")
	end)
	L_36_.Buymenuframe.Visible = true;
	L_36_.BuyMenuOpen = true;
	for L_1008_forvar0, L_1009_forvar1 in pairs(L_67_) do
		if table.find(L_1009_forvar1, L_1007_arg0) then
			L_36_.Click(L_1008_forvar0)
			wait()
			for L_1010_forvar0, L_1011_forvar1 in next, L_1009_forvar1 do
				if L_1011_forvar1 == L_1007_arg0 then
					L_36_.Click(L_1010_forvar0)
					wait()
					L_36_.Back(L_1010_forvar0)
				end
			end
		end
	end
end;
function draggable(L_1012_arg0)
	local L_1013_ = game:GetService("UserInputService")
	local L_1014_;
	local L_1015_;
	local L_1016_;
	local L_1017_;
	local function L_1018_func(L_1019_arg0)
		if not scrollon then
			local L_1020_ = L_1019_arg0.Position - L_1016_;
			L_1012_arg0.Position = UDim2.new(L_1017_.X.Scale, L_1017_.X.Offset + L_1020_.X, L_1017_.Y.Scale, L_1017_.Y.Offset + L_1020_.Y)
		end
	end;
	L_1012_arg0.InputBegan:Connect(function(L_1021_arg0)
		if L_1021_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_1021_arg0.UserInputType == Enum.UserInputType.Touch then
			L_1014_ = true;
			L_1016_ = L_1021_arg0.Position;
			L_1017_ = L_1012_arg0.Position;
			L_1021_arg0.Changed:Connect(function()
				if L_1021_arg0.UserInputState == Enum.UserInputState.End then
					L_1014_ = false
				end
			end)
		end
	end)
	L_1012_arg0.InputChanged:Connect(function(L_1022_arg0)
		if L_1022_arg0.UserInputType == Enum.UserInputType.MouseMovement or L_1022_arg0.UserInputType == Enum.UserInputType.Touch then
			L_1015_ = L_1022_arg0
		end
	end)
	L_1013_.InputChanged:Connect(function(L_1023_arg0)
		if L_1023_arg0 == L_1015_ and L_1014_ then
			L_1018_func(L_1023_arg0)
		end
	end)
end;
function returntime(L_1024_arg0)
	return os.date("*t", os.time())[L_1024_arg0]
end;
local L_68_ = {
	DiamondPlate = 3,
	CorrodedMetal = 2,
	Metal = 2,
	Concrete = 2,
	Brick = 2,
	WoodPlanks = 0.1,
	Wood = 0.1,
	nowallbang = 100,
	Grate = 0.1,
	Glass = 0.1,
	Cardboard = 0.1
}
getgenv().damagemod = 1;
function wallbangCheck(L_1025_arg0)
	return L_1025_arg0 and L_1025_arg0.Parent and L_1025_arg0.Parent.Name == "Hitboxes" or L_1025_arg0 and L_1025_arg0.Parent and L_1025_arg0.Parent.Parent and L_1025_arg0.Parent.Parent:FindFirstChild("Humanoid") or L_1025_arg0 and L_1025_arg0.Parent and L_1025_arg0.Parent:FindFirstChild("Humanoid") or L_1025_arg0 and L_1025_arg0.Parent and L_1025_arg0.Parent:FindFirstChild("Humanoid") and (1 > L_1025_arg0.Transparency or L_1025_arg0.Name == "HeadHB") and L_1025_arg0.Parent:IsA("Model")
end;
local L_69_ = false;
local L_70_ = Instance.new("Part")
L_70_.Size = Vector3.new(0.75, 0.75, 0.75)
L_70_.Anchored = true;
L_70_.Material = "Neon"
L_70_.Color = Color3.new(0.85, 0.25, 0.75)
L_70_.Transparency = 1;
L_70_.Name = "jigpart"
function calculateWallbang(L_1026_arg0, L_1027_arg1, L_1028_arg2)
	local L_1029_ = L_36_.gun;
	if not L_1029_ or not L_1029_:FindFirstChild("Penetration") or L_1029_:FindFirstChild("Melee") or not L_1026_arg0:FindFirstChild(L_1027_arg1) then
		return 0, 0
	end;
	L_69_ = not L_69_;
	if L_1028_arg2 and L_69_ then
		local L_1042_ = L_70_:Clone()
		L_1042_.CFrame = L_1026_arg0[L_1027_arg1].CFrame + L_1026_arg0[L_1027_arg1].Velocity * library_flags["predictAmount"] / 400;
		L_1042_.Parent = L_1026_arg0;
		L_1027_arg1 = "jigpart"
	end;
	local L_1030_ = L_1026_arg0[L_1027_arg1]
	local L_1031_ = library_flags["From Camera"] and L_34_.CFrame.p or Vector3.new(L_32_.Character.PrimaryPart.Position.X, L_32_.Character.Head.Position.Y, L_32_.Character.PrimaryPart.Position.Z)
	local L_1032_ = CFrame.new(L_1031_, L_1030_.Position).lookVector.unit * 4096 * 0.0694;
	local L_1033_ = Ray.new(L_1031_, L_1032_)
	local L_1034_ = L_1029_.Penetration.Value * 0.013 or 0;
	local L_1035_ = {
		L_34_,
		L_32_.Character,
		workspace.Debris,
		workspace.Ray_Ignore,
		workspace.Map.Clips,
		workspace.Map.SpawnPoints
	}
	local L_1036_ = {}
	local L_1037_ = nil;
	local L_1038_ = 1;
	local L_1039_ = 0;
	local L_1040_ = 0;
	local L_1041_ = 0;
	repeat
		L_1041_ = L_1041_ + 1;
		L_1037_, pos = workspace:FindPartOnRayWithIgnoreList(L_1033_, L_1035_, false, true)
		if L_1037_ and L_1037_ ~= L_1030_ or L_1037_ and L_1037_.Parent and L_1037_ ~= L_1030_ then
			if not L_1037_:IsDescendantOf(L_1026_arg0) and not string.find(L_1037_.Name, "Head") then
				local L_1043_ = 1;
				local L_1044_ = tostring(L_1037_.Material)
				local L_1045_ = string.sub(tostring(L_1037_.Material), 15, # L_1044_)
				local L_1046_ = L_68_[L_1037_.Name]
				local L_1047_ = L_68_[L_1045_]
				local L_1048_ = 2 - library_flags["awallMod"] == 0 and 0.1 or 2 - library_flags["awallMod"]
				L_1043_ = (L_1046_ or L_1047_ or 1) * L_1048_;
				if string.find(L_1037_.Name, "Hat") or string.find(L_1037_.Parent.Name, "Hat") then
					L_1043_ = 0
				end;
				local L_1049_, L_1050_ = workspace:FindPartOnRayWithWhitelist(Ray.new(pos + L_1032_ * 1, L_1032_ * -2), {
					L_1037_
				}, true)
				local L_1051_ = (L_1050_ - pos).magnitude;
				local L_1052_ = L_1051_ * L_1043_;
				L_1040_ = math.min(L_1034_, L_1040_ + L_1052_)
				L_1038_ = 1 - L_1040_ / L_1034_;
				if L_1043_ > 0 then
					L_1039_ = L_1039_ + 1
				end;
				table.insert(L_1036_, L_1037_)
				if wallbangCheck(L_1037_) then
					table.insert(L_1035_, L_1037_.Parent)
				else
					table.insert(L_1035_, L_1037_)
				end
			end
		end
	until L_1037_ == nil or L_1037_ == L_1030_ or L_1037_:IsDescendantOf(L_1026_arg0) or L_1039_ >= 4 or L_1040_ >= L_1034_ or L_1041_ > 20 or L_1037_.Name == "jigpart" or string.find(L_1037_.Name, "Head")
	if L_1039_ >= 4 or L_1041_ >= 20 then
		L_1038_ = 0
	end;
	if L_1028_arg2 and L_69_ then
		if L_1038_ ~= 0 then
			if library_flags["Show Prediction Position"] then
				local L_1053_ = Instance.new("Part")
				L_1053_.Size = Vector3.new(0.5, 0.5, 0.5)
				L_1053_.Anchored = true;
				L_1053_.CanCollide = false;
				L_1053_.Transparency = 0.6;
				L_1053_.Position = L_1030_.Position;
				L_1053_.Color = Color3.new(0.3, 1, 0.3)
				L_1053_.Material = "Neon"
				L_1053_.Parent = workspace.Ray_Ignore;
				L_31_:AddItem(L_1053_, 3)
			end
		end;
		L_1030_:Destroy()
	end;
	return L_1038_, L_1039_
end;
function returnDamage(L_1054_arg0, L_1055_arg1)
	local L_1056_ = 0;
	local L_1057_ = 0;
	if L_36_.gun and L_36_.gun:FindFirstChild("Melee") then
		return 0, 0
	end;
	pcall(function()
		local L_1058_ = {
			L_34_,
			L_32_.Character,
			workspace.Debris,
			workspace.Ray_Ignore,
			workspace.Map:WaitForChild("Clips"),
			workspace.Map:WaitForChild("SpawnPoints")
		}
		local L_1059_ = L_36_.gun;
		local L_1060_ = L_1059_.Penetration.Value * 0.01 or 0;
		local L_1061_ = L_1059_.Range.Value;
		local L_1062_ = L_1059_.DMG.Value;
		local L_1063_ = L_1054_arg0[L_1055_arg1].Position;
		local L_1064_ = library_flags["From Camera"] and L_34_.CFrame.p or Vector3.new(L_32_.Character.PrimaryPart.Position.X, L_32_.Character.Head.Position.Y, L_32_.Character.PrimaryPart.Position.Z)
		local L_1065_ = CFrame.new(L_1064_, L_1063_).lookVector.unit * L_1061_ * 0.0694;
		local L_1066_ = Ray.new(L_1064_, L_1065_)
		local L_1067_, L_1068_ = workspace:FindPartOnRayWithIgnoreList(L_1066_, L_1058_, false, true)
		local L_1069_ = 0;
		local L_1070_ = 0;
		local L_1071_, L_1072_, L_1073_;
		local L_1074_ = 1;
		L_1056_ = 1;
		pcall(function()
			repeat
				L_1071_, L_1072_, L_1073_ = workspace:FindPartOnRayWithIgnoreList(L_1066_, L_1058_, false, true)
				if L_1071_ and L_1071_.Parent then
					L_1074_ = 1;
					local L_1075_ = tostring(L_1071_.Material)
					local L_1076_ = string.sub(tostring(L_1071_.Material), 15, # L_1075_)
					local L_1077_ = L_68_[L_1071_.Name]
					local L_1078_ = L_68_[L_1076_]
					L_1074_ = L_1077_ or L_1078_ or 1;
					if L_1071_:FindFirstChild("PartModifier") then
						L_1074_ = L_1071_.PartModifier.Value
					end;
					if L_1071_:IsDescendantOf(game.Workspace.Ray_Ignore) or L_1071_:IsDescendantOf(game.Workspace.Debris) then
						L_1074_ = 0
					end;
					local L_1079_, L_1080_ = game.Workspace:FindPartOnRayWithWhitelist(Ray.new(L_1072_ + L_1065_ * 1, L_1065_ * -2), {
						L_1071_
					}, true)
					local L_1081_ = (L_1080_ - L_1072_).magnitude;
					local L_1082_ = L_1081_ * L_1074_;
					L_1070_ = math.min(L_1060_, L_1070_ + L_1082_)
					L_1056_ = 1 - L_1070_ / L_1060_;
					if L_1074_ > 0 then
						L_1069_ = L_1069_ + 1
					end;
					if L_1071_ and L_1071_.Parent and L_1071_.Parent.Name == "Hitboxes" or L_1071_ and L_1071_.Parent and L_1071_.Parent.Parent and L_1071_.Parent.Parent:FindFirstChild("Humanoid") or L_1071_ and L_1071_.Parent and L_1071_.Parent:FindFirstChild("Humanoid") or L_1071_ and L_1071_.Parent and L_1071_.Parent:FindFirstChild("Humanoid") and (1 > L_1071_.Transparency or L_1071_.Name == "HeadHB") and L_1071_.Parent:IsA("Model") then
						table.insert(L_1058_, L_1071_.Parent)
					else
						table.insert(L_1058_, L_1071_)
					end
				end
			until L_1071_ == nil or L_1071_.Parent == L_1054_arg0 or L_1070_ >= L_1060_ or 0 >= L_1056_ or L_1069_ >= 4
		end)
		if L_1069_ >= 5 then
			L_1056_ = 0
		end
	end)
	return L_1056_, L_1057_
end;
function tracerTable(L_1083_arg0)
	local L_1084_ = {
		L_34_,
		L_32_.Character,
		game.Workspace.Debris,
		game.Workspace.Ray_Ignore,
		game.Workspace.Map:WaitForChild("Clips"),
		game.Workspace.Map:WaitForChild("SpawnPoints")
	}
	local L_1085_ = game.ReplicatedStorage.Weapons:FindFirstChild(L_32_.Character.EquippedTool.Value)
	local L_1086_ = L_1085_.Penetration.Value * 0.01;
	local L_1087_ = L_1085_.Range.Value;
	local L_1088_ = L_1085_.DMG.Value;
	local L_1089_ = L_1083_arg0;
	local L_1090_ = CFrame.new(L_34_.CFrame.p, L_1089_).lookVector.unit * L_1087_ * 0.0694;
	local L_1091_ = Ray.new(L_34_.CFrame.p, L_1090_)
	local L_1092_, L_1093_ = workspace:FindPartOnRayWithIgnoreList(L_1091_, L_1084_, false, true)
	local L_1094_ = 0;
	local L_1095_ = 0;
	local L_1096_, L_1097_, L_1098_;
	local L_1099_ = 1;
	damagemodifier = 1;
	pcall(function()
		repeat
			L_1096_, L_1097_, L_1098_ = workspace:FindPartOnRayWithIgnoreList(L_1091_, L_1084_, false, true)
			if L_1096_ and L_1096_.Parent then
				L_1099_ = 1;
				L_1094_ = L_1094_ + 1;
				if L_1096_.Name == "nowallbang" then
					L_1099_ = 100
				elseif L_1096_:FindFirstChild("PartModifier") then
					L_1099_ = L_1096_.PartModifier.Value
				end;
				local L_1100_, L_1101_ = game.Workspace:FindPartOnRayWithWhitelist(Ray.new(L_1097_ + L_1090_ * 1, L_1090_ * -2), {
					L_1096_
				}, true)
				local L_1102_ = (L_1101_ - L_1097_).magnitude;
				local L_1103_ = L_1102_ * L_1099_;
				L_1095_ = math.min(L_1086_, L_1095_ + L_1103_)
				damagemodifier = 1 - L_1095_ / L_1086_;
				if damagemodifier > 0 and L_1099_ < 100 then
					if L_1096_ and L_1096_.Parent and L_1096_.Parent.Name == "Hitboxes" or L_1096_ and L_1096_.Parent and L_1096_.Parent.Parent and L_1096_.Parent.Parent:FindFirstChild("Humanoid") or L_1096_ and L_1096_.Parent and L_1096_.Parent:FindFirstChild("Humanoid") or L_1096_ and L_1096_.Parent and L_1096_.Parent:FindFirstChild("Humanoid") and (1 > L_1096_.Transparency or L_1096_.Name == "HeadHB") and L_1096_.Parent:IsA("Model") then
						table.insert(L_1084_, L_1096_.Parent)
					else
						table.insert(L_1084_, L_1096_)
					end
				end
			end
		until L_1096_ == nil or L_1095_ >= L_1086_ or 0 >= damagemodifier or L_1094_ >= 4
	end)
	return L_1084_
end;
function teamCheck(L_1104_arg0, L_1105_arg1)
	if L_1104_arg0 == L_32_ or not L_1104_arg0.Team then
		return false
	end;
	return L_1105_arg1 or L_1104_arg0.Team ~= L_32_.Team
end;
function getWeaponInfo()
	local L_1106_ = {
		alive = false,
		melee = false,
		clientgun = nil,
		ammo = 0,
		name = "",
		sniper = false,
		silentAim = library_flags["otherSilentAim"],
		FOV = library_flags["otherFOV"],
		silentFOV = library_flags["otherSilentFOV"],
		smoothness = library_flags["otherSmoothness"],
		deadzone = library_flags["otherDeadzone"],
		baim = library_flags["otherBaim"],
		mindmg = library_flags["otherMin"],
		hitboxes = library_flags["otherHitboxes"],
		trigger = library_flags["otherTrigger"],
		triggerDelay = library_flags["otherTriggerDelay"],
		type = ""
	}
	if alive() and L_24_.Weapons:FindFirstChild(L_32_.Character.EquippedTool.Value) then
		local L_1107_ = L_24_.Weapons[L_32_.Character.EquippedTool.Value]
		L_1106_.clientgun = L_1107_;
		L_1106_.ammo = tonumber(L_32_.PlayerGui.GUI.AmmoGUI.AmmoClip.Text)
		L_1106_.melee = L_1107_:FindFirstChild("Melee")
		L_1106_.name = L_1107_.Name;
		L_1106_.alive = true;
		if L_1106_.melee then
			L_1106_.mindmg = 387420489;
			L_1106_.hitboxes = {
				"Body"
			}
			L_1106_.silentAim = false;
			L_1106_.silentFOV = 0
		end;
		if L_1107_:FindFirstChild("RifleThing") then
			L_1106_.FOV = library_flags["riflesFOV"]
			L_1106_.silentFOV = library_flags["riflesSilentFOV"]
			L_1106_.deadzone = library_flags["riflesDeadzone"]
			L_1106_.baim = library_flags["riflesBaim"]
			L_1106_.silentAim = library_flags["riflesSilentAim"]
			L_1106_.smoothness = library_flags["riflesSmoothness"]
			L_1106_.mindmg = library_flags["riflesMin"]
			L_1106_.hitboxes = library_flags["riflesHitboxes"]
			L_1106_.trigger = library_flags["riflesTrigger"]
			L_1106_.triggerDelay = library_flags["riflesTriggerDelay"]
			L_1106_.type = "main"
		elseif L_1107_:FindFirstChild("Secondary") and L_1107_.Name ~= "R8" and L_1107_.Name ~= "DesertEagle" then
			L_1106_.FOV = library_flags["pistolFOV"]
			L_1106_.silentFOV = library_flags["pistolSilentFOV"]
			L_1106_.deadzone = library_flags["pistolDeadzone"]
			L_1106_.baim = library_flags["pistolBaim"]
			L_1106_.silentAim = library_flags["pistolSilentAim"]
			L_1106_.smoothness = library_flags["pistolSmoothness"]
			L_1106_.mindmg = library_flags["pistolMin"]
			L_1106_.hitboxes = library_flags["pistolHitboxes"]
			L_1106_.trigger = library_flags["pistolTrigger"]
			L_1106_.triggerDelay = library_flags["pistolTriggerDelay"]
			L_1106_.type = "secondary"
		elseif L_1107_.Name == "R8" or L_1107_.Name == "DesertEagle" then
			L_1106_.FOV = library_flags["heavypFOV"]
			L_1106_.silentFOV = library_flags["heavypSilentFOV"]
			L_1106_.deadzone = library_flags["heavypDeadzone"]
			L_1106_.baim = library_flags["heavypBaim"]
			L_1106_.silentAim = library_flags["heavypSilentAim"]
			L_1106_.smoothness = library_flags["heavypSmoothness"]
			L_1106_.mindmg = library_flags["heavypMin"]
			L_1106_.hitboxes = library_flags["heavypHitboxes"]
			L_1106_.trigger = library_flags["heavypTrigger"]
			L_1106_.triggerDelay = library_flags["heavypTriggerDelay"]
			L_1106_.type = "secondary"
		elseif L_1107_.Name == "AWP" then
			L_1106_.FOV = library_flags["awpFOV"]
			L_1106_.silentFOV = library_flags["awpSilentFOV"]
			L_1106_.deadzone = library_flags["awpDeadzone"]
			L_1106_.baim = library_flags["awpBaim"]
			L_1106_.silentAim = library_flags["awpSilentAim"]
			L_1106_.smoothness = library_flags["awpSmoothness"]
			L_1106_.mindmg = library_flags["awpMin"]
			L_1106_.hitboxes = library_flags["awpHitboxes"]
			L_1106_.trigger = library_flags["awpTrigger"]
			L_1106_.triggerDelay = library_flags["awpTriggerDelay"]
			L_1106_.sniper = true;
			L_1106_.type = "main"
		elseif L_1107_.Name == "Scout" then
			L_1106_.FOV = library_flags["scoutFOV"]
			L_1106_.silentFOV = library_flags["scoutSilentFOV"]
			L_1106_.deadzone = library_flags["scoutDeadzone"]
			L_1106_.baim = library_flags["scoutBaim"]
			L_1106_.silentAim = library_flags["scoutSilentAim"]
			L_1106_.smoothness = library_flags["scoutSmoothness"]
			L_1106_.mindmg = library_flags["scoutMin"]
			L_1106_.hitboxes = library_flags["scoutHitboxes"]
			L_1106_.trigger = library_flags["scoutTrigger"]
			L_1106_.triggerDelay = library_flags["scoutTriggerDelay"]
			L_1106_.sniper = true;
			L_1106_.type = "main"
		elseif L_1107_.Name == "G3SG1" then
			L_1106_.mindmg = library_flags["autoMin"]
			L_1106_.hitboxes = library_flags["autoHitboxes"]
			L_1106_.sniper = true;
			L_1106_.type = "main"
		end
	end;
	return L_1106_
end;
function getNearest(L_1108_arg0, L_1109_arg1, L_1110_arg2)
	L_1108_arg0 = L_1108_arg0 * 3;
	if not L_57_.alive then
		return
	end;
	local L_1111_, L_1112_ = 387420489, nil;
	for L_1113_forvar0, L_1114_forvar1 in next, L_30_:GetPlayers() do
		if L_1114_forvar1.Character and L_1114_forvar1.Character.PrimaryPart and L_1114_forvar1.Character:FindFirstChild("Head") and teamCheck(L_1114_forvar1, L_1109_arg1) then
			local L_1115_, L_1116_ = L_34_:WorldToScreenPoint(L_1114_forvar1.Character.Head.Position)
			local L_1117_ = false;
			if L_1110_arg2 then
				local L_1118_ = Ray.new(L_34_.CFrame.p, (L_1114_forvar1.Character.Head.Position - L_34_.CFrame.p).unit * 500)
				local L_1119_, L_1120_ = workspace:FindPartOnRayWithIgnoreList(L_1118_, {
					L_34_,
					L_32_.Character,
					workspace.Ray_Ignore,
					workspace.Map:WaitForChild("Clips"),
					workspace.Map:WaitForChild("SpawnPoints")
				})
				if L_1119_:IsDescendantOf(L_1114_forvar1.Character) then
					L_1117_ = true
				end
			end;
			if L_1116_ then
				if not L_1110_arg2 or L_1110_arg2 and L_1117_ then
					local L_1121_ = Vector2.new(L_33_.X, L_33_.Y)
					local L_1122_ = (Vector2.new(L_1115_.X, L_1115_.Y) - L_1121_).magnitude;
					if L_1122_ < L_1111_ and L_1122_ <= L_1108_arg0 then
						L_1111_ = L_1122_;
						L_1112_ = L_1114_forvar1
					end
				end
			end
		end
	end;
	return L_1112_, L_1111_
end;
function playAudio(L_1123_arg0)
	if not game.ReplicatedStorage.Weapons:FindFirstChild(L_1123_arg0) then
		return
	end;
	local L_1124_ = game.ReplicatedStorage.Weapons[L_1123_arg0]
	local L_1125_ = L_1124_.Model:FindFirstChild("PreSounds") or L_1124_.Model;
	local L_1126_ = "Shoot"
	if L_1124_.Name == "USP" or L_1124_.Name == "M4A1" then
		L_1126_ = "SShoot"
	end;
	if L_57_.alive and L_1125_:FindFirstChild(L_1126_) then
		local L_1127_ = Instance.new('Sound', workspace)
		L_1127_.SoundId = L_1125_[L_1126_].Value;
		L_1127_.PlayOnRemove = true;
		L_1127_.Volume = 0.7;
		L_1127_:Destroy()
	end
end;
local L_71_ = {
	["AK47"] = "rbxassetid://6061266272",
	["AWP"] = "rbxassetid://6067278314",
	["G3SG1"] = "rbxassetid://6067426225",
	["DesertEagle"] = "rbxassetid://6067333190",
	["Glock"] = "rbxassetid://6067337612",
	["USP"] = "rbxassetid://6067338308",
	["Scout"] = "rbxassetid://6067338138",
	["P250"] = "rbxassetid://6067337798",
	["M4A4"] = "rbxassetid://6067358591",
	["M4A1"] = "rbxassetid://6067358774"
}
local L_72_ = {
	["USP"] = "SShoot",
	["M4A1"] = "SShoot"
}
function replaceAudio(L_1128_arg0)
	if not L_71_[L_1128_arg0] then
		return
	end;
	local L_1129_ = "Shoot"
	if L_72_[L_1128_arg0] then
		L_1129_ = L_72_[L_1128_arg0]
	end;
	pcall(function()
		L_32_.Character.Gun[L_1129_].Value = L_71_[L_1128_arg0]
	end)
end;
function updatePitch()
	L_24_.Events.ControlTurn:FireServer("0")
	if library_flags["Yaw"] ~= "Manual" or not library_flags["Anti Aim"] then
		indicatorHolder.Enabled = false
	end
end;
local L_73_ = 0;
local L_74_ = false;
function setYaw(L_1130_arg0, L_1131_arg1)
	if L_74_ then
		return
	end;
	L_1130_arg0 = holdE and 0 or L_1130_arg0;
	if library_flags["Pitch"] ~= "None" then
		updatePitch()
	end;
	if library_flags["Roll"] ~= "None" then
		local L_1132_ = 180;
		L_32_.Character.Humanoid.HipHeight = 2.05;
		L_32_.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
		L_32_.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
		L_32_.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, L_53_)
		L_32_.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, L_53_)
		L_32_.Character:SetPrimaryPartCFrame(CFrame.new(L_32_.Character.PrimaryPart.Position, L_32_.Character.HumanoidRootPart.Position + Vector3.new(L_34_.CFrame.lookVector.X, 0, L_34_.CFrame.lookVector.Z)) * CFrame.Angles(0, math.rad(L_1130_arg0), 0) * CFrame.Angles(0, 0, math.rad(L_1132_)))
		return
	end;
	L_32_.Character.Humanoid.HipHeight = 2;
	L_32_.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
	L_32_.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
	L_32_.Character.HumanoidRootPart.CFrame = CFrame.new(L_32_.Character.HumanoidRootPart.Position, L_32_.Character.HumanoidRootPart.Position + Vector3.new(L_34_.CFrame.lookVector.X, 0, L_34_.CFrame.lookVector.Z)) * CFrame.Angles(0, math.rad(L_1130_arg0), 0)
end;
function CreateThread(L_1133_arg0)
	local L_1134_ = coroutine.create(L_1133_arg0)
	coroutine.resume(L_1134_)
	return L_1134_
end;
local L_75_ = false;
function tracers(L_1135_arg0, L_1136_arg1)
	if not L_75_ and L_32_.Character and L_32_.Character:FindFirstChild("Gun") and L_1136_arg1 then
		L_75_ = true;
		CreateThread(function()
			wait()
			L_75_ = false
		end)
		local L_1137_ = Instance.new("Part")
		local L_1138_ = Instance.new("Part")
		local L_1139_ = Instance.new("Beam", L_1137_)
		local L_1140_ = Instance.new("Part")
		local L_1141_ = Instance.new("Attachment")
		local L_1142_ = Instance.new("Attachment")
		if library_flags["Tracer Mode"] == "Part" then
			local L_1143_ = L_1136_arg1.Position - L_1135_arg0;
			L_1140_.Material = "ForceField"
			L_1140_.CFrame = CFrame.new(L_1135_arg0 + L_1143_ / 2, L_1135_arg0)
			L_1140_.Size = Vector3.new(0.125, 0.125, L_1143_.Magnitude)
			L_1140_.CanCollide = false;
			L_1140_.Transparency = 0;
			L_1140_.Anchored = true;
			L_1140_.Color = library_flags["tracerColor"]
			L_1140_.Parent = workspace.Debris
		elseif library_flags["Tracer Mode"] == "Beam" then
			L_1137_.Size = Vector3.new(0.1, 0.1, 0.1)
			L_1137_.Transparency = 1;
			L_1137_.Parent = workspace;
			L_1137_.Position = L_1135_arg0;
			L_1137_.CanCollide = false;
			L_1137_.Anchored = true;
			L_1141_.Parent = L_1137_;
			L_1138_.Size = Vector3.new(0.1, 0.1, 0.1)
			L_1138_.Transparency = 1;
			L_1138_.Parent = workspace;
			L_1138_.Position = L_1136_arg1.Position;
			L_1138_.CanCollide = false;
			L_1138_.Anchored = true;
			L_1142_.Parent = L_1138_;
			L_1139_.Color = ColorSequence.new(library_flags["tracerColor"])
			L_1139_.LightEmission = 1;
			L_1139_.LightInfluence = 0;
			L_1139_.Transparency = NumberSequence.new{
				NumberSequenceKeypoint.new(0, 1 - L_5_.options["tracerColor"].trans),
				NumberSequenceKeypoint.new(1, 1 - L_5_.options["tracerColor"].trans)
			}
			L_1139_.Width0 = 0.25;
			L_1139_.Width1 = 0.25;
			L_1139_.Attachment0 = L_1141_;
			L_1139_.Attachment1 = L_1142_;
			L_1139_.FaceCamera = library_flags["Beams Face Camera"]
			L_1139_.Texture = "http://www.roblox.com/asset/?id=" .. library_flags["Beam Texture"]
			L_1139_.TextureMode = Enum.TextureMode.Wrap;
			L_1139_.Parent = L_1137_
		end;
		CreateThread(function()
			wait(0.3)
			for L_1144_forvar0 = 1, 100, 4 do
				wait()
				if L_1144_forvar0 / 100 > 1 - L_5_.options["tracerColor"].trans then
					L_1140_.Transparency = L_1144_forvar0 / 100;
					L_1139_.Transparency = NumberSequence.new{
						NumberSequenceKeypoint.new(0, L_1144_forvar0 / 100),
						NumberSequenceKeypoint.new(1, L_1144_forvar0 / 100)
					}
				end
			end;
			L_1140_:Destroy()
			L_1137_:Destroy()
			L_1138_:Destroy()
		end)
	end
end;
getgenv().tracers = tracers;
function fireHitpart(L_1145_arg0, L_1146_arg1, L_1147_arg2, L_1148_arg3, L_1149_arg4)
	if L_34_:FindFirstChild("Arms") and L_32_.Character and L_32_.Character:FindFirstChild("EquippedTool") and L_32_.Character:FindFirstChild("Gun") then
		local L_1150_ = L_1145_arg0.CFrame.p;
		local L_1151_ = L_32_.Character.EquippedTool.Value;
		local L_1152_ = L_32_.Character.Gun;
		local L_1153_ = L_34_.Arms:FindFirstChild("Guy")
		local L_1154_ = L_34_.Arms:FindFirstChild("fire")
		if L_1153_ and L_1154_ then
			pcall(function()
				L_1153_:LoadAnimation(L_1154_):Play()
			end)
			L_40_:FireServer(L_1145_arg0, L_1149_arg4 or encodePos(L_1145_arg0.Position), L_1151_, 4096, L_1152_, nil, L_1146_arg1, false, L_1146_arg1 < 1, workspace.CurrentCamera.CFrame.p, game.Workspace.DistributedTime.Value, Vector3.new(0, 0, 0), true, nil, nil, nil)
			if not L_1148_arg3 then
				playAudio(L_1151_)
			end
		end
	end
end;
function countESP()
	local L_1155_ = 0;
	for L_1156_forvar0, L_1157_forvar1 in next, L_56_ do
		if L_1157_forvar1.type == "plr" then
			L_1155_ = L_1155_ + 1
		end
	end;
	return L_1155_
end;
local L_76_ = 0;
function createEsp(L_1158_arg0, L_1159_arg1)
	local L_1160_ = Drawing.new("Text")
	local L_1161_ = Drawing.new("Text")
	local L_1162_ = Drawing.new("Line")
	local L_1163_ = Drawing.new("Square")
	local L_1164_ = Drawing.new("Square")
	local L_1165_ = Drawing.new("Square")
	local L_1166_ = Drawing.new("Square")
	local L_1167_ = "Object" .. tostring(L_76_)
	local L_1168_;
	if L_1158_arg0 == "plr" then
		L_1168_ = Instance.new("Folder", L_46_)
		L_1167_ = L_1159_arg1.Name;
		L_1168_.Name = L_1167_;
		L_1165_.Color = Color3.new(0, 0, 0)
		L_1165_.Thickness = 2;
		L_1165_.Transparency = 1;
		L_1165_.Visible = false;
		L_1166_.Color = Color3.new(0, 1, 0)
		L_1166_.Thickness = 1;
		L_1166_.Transparency = 1;
		L_1166_.Visible = false
	else
		L_76_ = L_76_ + 1
	end;
	L_1163_.Color = Color3.new(0, 0, 0)
	L_1163_.Thickness = 3;
	L_1163_.Transparency = 1;
	L_1163_.Filled = false;
	L_1163_.Visible = false;
	L_1164_.Color = Color3.new(1, 1, 1)
	L_1164_.Thickness = 1;
	L_1164_.Transparency = 1;
	L_1164_.Filled = false;
	L_1164_.Visible = false;
	L_1162_.From = Vector2.new(L_34_.ViewportSize.X / 2, L_34_.ViewportSize.Y * 0.9)
	L_1162_.Color = Color3.new(1, 1, 1)
	L_1162_.Thickness = 1;
	L_1162_.Transparency = 1;
	L_1162_.Visible = false;
	L_1160_.Text = L_1159_arg1.Name;
	L_1160_.Size = 13;
	L_1160_.Center = true;
	L_1160_.OutlineColor = Color3.new(0, 0, 0)
	L_1160_.Color = Color3.new(1, 1, 1)
	L_1160_.Visible = false;
	L_1161_.Text = "Gun"
	L_1161_.Size = 13;
	L_1161_.Center = true;
	L_1161_.OutlineColor = Color3.new(0, 0, 0)
	L_1161_.Color = Color3.new(1, 1, 1)
	L_1161_.Visible = false;
	function invis()
		L_1164_.Visible = false;
		L_1162_.Visible = false;
		L_1160_.Visible = false;
		L_1166_.Visible = false;
		L_1163_.Visible = false;
		L_1165_.Visible = false;
		L_1161_.Visible = false
	end;
	function remove()
		L_1164_:Remove()
		L_1161_:Remove()
		L_1162_:Remove()
		L_1160_:Remove()
		L_1166_:Remove()
		L_1163_:Remove()
		L_1165_:Remove()
	end;
	local L_1169_ = {
		text = L_1160_,
		weapon = L_1161_,
		tracer = L_1162_,
		box = L_1164_,
		healthb = L_1166_,
		boxoutline = L_1163_,
		healthbo = L_1165_,
		invis = invis,
		remove = remove,
		type = L_1158_arg0,
		object = L_1159_arg1
	}
	L_56_[L_1167_] = L_1169_;
	return L_1169_
end;
local L_77_ = {}
function ApplyValue(L_1170_arg0, L_1171_arg1, L_1172_arg2, L_1173_arg3)
	if L_1170_arg0 then
		for L_1174_forvar0, L_1175_forvar1 in pairs(game.ReplicatedStorage.Weapons:GetDescendants()) do
			if L_1175_forvar1.Name == L_1171_arg1 then
				L_1172_arg2[L_1175_forvar1] = {
					value = L_1175_forvar1.Value
				}
				L_1175_forvar1.Value = L_1173_arg3;
				for L_1176_forvar0, L_1177_forvar1 in pairs(L_1175_forvar1:GetChildren()) do
					L_1172_arg2[L_1177_forvar1] = {
						value = L_1177_forvar1.Value
					}
					L_1177_forvar1.Value = L_1173_arg3
				end
			end
		end
	else
		for L_1178_forvar0, L_1179_forvar1 in pairs(game.ReplicatedStorage.Weapons:GetDescendants()) do
			if L_1179_forvar1.Name == L_1171_arg1 and L_1172_arg2[L_1179_forvar1] then
				L_1179_forvar1.Value = L_1172_arg2[L_1179_forvar1].value;
				for L_1180_forvar0, L_1181_forvar1 in pairs(L_1179_forvar1:GetChildren()) do
					L_1181_forvar1.Value = L_1172_arg2[L_1181_forvar1].value
				end
			end
		end
	end
end;
L_43_.Name = "bt"
function createPlr(L_1182_arg0)
	if not L_1182_arg0.Character then
		return
	end;
	local L_1183_ = Instance.new("Model", L_43_)
	L_1183_.Name = L_1182_arg0.Name;
	if L_47_[L_1182_arg0.Name] then
		L_47_[L_1182_arg0.Name]:Destroy()
		L_47_[L_1182_arg0.Name] = nil
	end;
	for L_1184_forvar0, L_1185_forvar1 in next, L_1182_arg0.Character:GetChildren() do
		if not L_1185_forvar1:IsA"BasePart" or L_1185_forvar1.Name == "Gun" then
			continue;
		end;
		if L_1185_forvar1.Name ~= "HeadHB" and L_1185_forvar1.Transparency == 1 then
			continue;
		end;
		local L_1186_ = L_1185_forvar1:Clone()
		L_1186_.Transparency = 0;
		L_1186_.Anchored = true;
		L_1186_.CanCollide = false;
		L_1186_.Color = Color3.new(1, 1, 1)
		L_1186_.Size = L_1186_.Size - Vector3.new(0.035, 0.035, 0.035)
		L_1186_.Transparency = 1;
		L_1186_.Name = L_1185_forvar1.Name;
		L_1186_.Parent = L_1183_;
		for L_1187_forvar0, L_1188_forvar1 in next, L_1186_:GetChildren() do
			if not L_1188_forvar1:IsA"BasePart" and not L_1188_forvar1:IsA"DataModelMesh" then
				L_1188_forvar1:Destroy()
			end
		end
	end;
	if # L_1183_:GetChildren() > 0 then
		L_47_[L_1182_arg0.Name] = L_1183_
	end
end;
local L_78_ = false;
function updateSkybox()
	if L_29_:FindFirstChild("SunRays") then
		L_29_.SunRays.Enabled = false
	end;
	local L_1189_ = library_flags["skyboxValue"]
	if library_flags["Skybox Changer"] and Skyboxes[L_1189_] then
		local L_1190_ = Instance.new("Sky", L_29_)
		L_1190_.Name = "customsky"
		L_1190_.SunTextureId = "rbxassetid://"
		L_1190_.CelestialBodiesShown = "rbxassetid://"
		L_78_ = true;
		for L_1191_forvar0, L_1192_forvar1 in next, Skyboxes[L_1189_] do
			L_1190_[L_1191_forvar0] = L_1192_forvar1
		end
	elseif not library_flags["Skybox Changer"] and L_78_ then
		if L_29_:FindFirstChild("customsky") then
			L_29_.customsky:Destroy()
		end;
		local L_1193_ = game:GetService("Lighting"):FindFirstChildOfClass("Sky")
		if L_1193_ then
			L_78_ = false;
			L_1193_.Parent = workspace;
			wait()
			L_1193_.Parent = L_29_
		end
	end
end;
local L_79_ = {
	"HumanoidRootPart",
	"FakeHead",
	"C4",
	"Gun"
}
local L_80_ = false;
function hitChams(L_1194_arg0, L_1195_arg1, L_1196_arg2, L_1197_arg3)
	if L_1194_arg0.Character and not L_80_ then
		L_80_ = true;
		CreateThread(function()
			wait(0.05)
			L_80_ = false
		end)
		for L_1198_forvar0, L_1199_forvar1 in next, L_1194_arg0.Character:GetChildren() do
			if L_1199_forvar1:IsA"MeshPart" and L_1199_forvar1.Transparency ~= 1 or L_1199_forvar1.Name == "Head" then
				if not L_79_[L_1199_forvar1.Name] then
					local L_1200_ = L_1199_forvar1:Clone()
					L_1200_:ClearAllChildren()
					L_1200_.Material = L_1195_arg1 and "SmoothPlastic" or "ForceField"
					L_1200_.CFrame = L_1199_forvar1.CFrame;
					L_1200_.Size = L_1199_forvar1.Name == "Head" and Vector3.new(1.18, 1.18, 1.18) or L_1200_.Size;
					L_1200_.CanCollide = false;
					L_1200_.Color = L_1195_arg1 or library_flags["hitchamsColor"]
					L_1200_.Anchored = true;
					L_1200_.Transparency = L_1196_arg2 or 0;
					L_1200_.Parent = workspace.Debris;
					if hasProperty(L_1200_, "TextureID") then
						L_1200_.TextureID = ""
					end;
					if hasProperty(L_1200_, "UsePartColor") then
						L_1200_.UsePartColor = true
					end;
					L_31_:AddItem(L_1200_, L_1197_arg3 or 1.5)
					if not L_1195_arg1 then
						local L_1201_ = L_27_:Create(L_1200_, TweenInfo.new(1.5), {
							Transparency = 1
						})
						L_1201_:Play()
					end
				end
			end
		end
	end
end;
getgenv().hitChams = hitChams;
local L_81_ = {
	"Head",
	"UpperTorso",
	"LowerTorso",
	"LeftUpperArm",
	"LeftLowerArm",
	"LeftHand",
	"RightUpperArm",
	"RightLowerArm",
	"RightHand",
	"LeftUpperLeg",
	"LeftLowerLeg",
	"LeftFoot",
	"RightUpperLeg",
	"RightLowerLeg",
	"RightFoot"
}
function chamsPlr(L_1202_arg0)
	if L_1202_arg0.Character and teamCheck(L_1202_arg0, L_39_) and L_1202_arg0.Character:FindFirstChild("HumanoidRootPart") then
		for L_1203_forvar0, L_1204_forvar1 in next, L_1202_arg0.Character:GetChildren() do
			if L_1204_forvar1:IsA"Accoutrement" then
				L_1204_forvar1:Destroy()
			end;
			if table.find(L_81_, L_1204_forvar1.Name) then
				if L_1204_forvar1:FindFirstChild("inner") or L_1204_forvar1:FindFirstChild("outer") then
					continue;
				end;
				local L_1205_;
				local L_1206_;
				if L_1204_forvar1.Name == "Head" then
					L_1205_ = Instance.new("CylinderHandleAdornment", L_1204_forvar1)
					L_1206_ = Instance.new("CylinderHandleAdornment", L_1204_forvar1)
					L_1205_.CFrame = L_1205_.CFrame * CFrame.Angles(math.rad(90), 0, 0)
					L_1206_.CFrame = L_1206_.CFrame * CFrame.Angles(math.rad(90), 0, 0)
					L_1205_.Radius = 0.54;
					L_1206_.Radius = 0.62;
					L_1205_.Height = 1.12;
					L_1206_.Height = 1.3
				else
					L_1205_ = Instance.new("BoxHandleAdornment", L_1204_forvar1)
					L_1206_ = Instance.new("BoxHandleAdornment", L_1204_forvar1)
					L_1205_.Size = L_1204_forvar1.Size + Vector3.new(0.02, 0.02, 0.02)
					L_1206_.Size = L_1204_forvar1.Size + Vector3.new(0.12, 0.12, 0.12)
				end;
				L_1205_.Name = "inner"
				L_1206_.Name = "outer"
				L_1205_.Adornee = L_1204_forvar1;
				L_1206_.Adornee = L_1204_forvar1;
				L_1205_.Color3 = library_flags["chamsColor2"]
				L_1206_.Color3 = library_flags["chamsColor"]
				L_1205_.Transparency = 1 - L_5_.options["chamsColor2"].trans;
				L_1206_.Transparency = 1 - L_5_.options["chamsColor"].trans;
				L_1205_.AlwaysOnTop = true;
				L_1206_.AlwaysOnTop = false;
				L_1205_.ZIndex = 5;
				L_1202_arg0.Character.HumanoidRootPart.AncestryChanged:connect(function()
					L_1205_:Destroy()
					L_1206_:Destroy()
				end)
			end
		end
	end
end;
local L_82_ = Instance.new("ScreenGui")
local L_83_ = Instance.new("Frame")
local L_84_ = Instance.new("TextLabel")
local L_85_ = Instance.new("Frame")
local L_86_ = Instance.new("UIListLayout")
L_82_.Enabled = true;
L_82_.Parent = L_32_.PlayerGui;
L_83_.Visible = false;
L_83_.Parent = L_82_;
L_83_.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
L_83_.BorderColor3 = Color3.fromRGB(30, 60, 150)
L_83_.Position = UDim2.new(0, 3, 0.6, -100)
L_83_.Size = UDim2.new(0, 200, 0, 20)
L_84_.Parent = L_83_;
L_84_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
L_84_.BackgroundTransparency = 1;
L_84_.BorderSizePixel = 0;
L_84_.Size = UDim2.new(1, 0, 1, 0)
L_84_.Font = Enum.Font.Ubuntu;
L_84_.Text = "Spectators"
L_84_.TextColor3 = Color3.fromRGB(255, 255, 255)
L_84_.TextSize = 14;
L_85_.Parent = L_83_;
L_85_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
L_85_.BackgroundTransparency = 1;
L_85_.Position = UDim2.new(0, 0, 0, 21)
L_85_.Size = UDim2.new(1, 0, 1, 0)
L_86_.Parent = L_85_;
function addSpectator(L_1207_arg0)
	local L_1208_ = Instance.new("TextLabel")
	L_1208_.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	L_1208_.BorderSizePixel = 0;
	L_1208_.Size = UDim2.new(1, 0, 1, 0)
	L_1208_.Font = Enum.Font.Ubuntu;
	L_1208_.TextColor3 = Color3.fromRGB(255, 255, 255)
	L_1208_.Text = L_1207_arg0;
	L_1208_.TextSize = 13;
	L_1208_.Visible = true;
	L_1208_.Parent = L_85_
end;
function removeSpectators()
	for L_1209_forvar0, L_1210_forvar1 in next, L_85_:GetChildren() do
		if L_1210_forvar1:IsA"TextLabel" then
			L_1210_forvar1:Destroy()
		end
	end
end;
local L_87_ = Instance.new("Frame")
local L_88_ = Instance.new("TextLabel")
local L_89_ = Instance.new("Frame")
local L_90_ = Instance.new("UIListLayout")
L_87_.Visible = false;
L_87_.ZIndex = 0;
L_87_.Parent = L_82_;
L_87_.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
L_87_.BorderColor3 = Color3.fromRGB(30, 60, 150)
L_87_.Position = UDim2.new(0, 4, 0.45, -100)
L_87_.Size = UDim2.new(0, 200, 0, 20)
L_88_.Parent = L_87_;
L_88_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
L_88_.BackgroundTransparency = 1;
L_88_.BorderSizePixel = 0;
L_88_.Size = UDim2.new(1, 0, 1, 0)
L_88_.Font = Enum.Font.Ubuntu;
L_88_.Text = "Keybinds"
L_88_.TextColor3 = Color3.fromRGB(255, 255, 255)
L_88_.TextSize = 14;
L_89_.Parent = L_87_;
L_89_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
L_89_.BackgroundTransparency = 1;
L_89_.Position = UDim2.new(0, 0, 0, 21)
L_89_.Size = UDim2.new(1, 0, 1, 0)
L_90_.Parent = L_89_;
function addBindtext(L_1211_arg0, L_1212_arg1)
	local L_1213_ = L_1212_arg1 == "hold" and " (hold)" or " (toggle)"
	local L_1214_ = Instance.new("TextLabel")
	L_1214_.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	L_1214_.BorderSizePixel = 0;
	L_1214_.Size = UDim2.new(1, 0, 1, 0)
	L_1214_.Font = Enum.Font.Ubuntu;
	L_1214_.TextColor3 = Color3.fromRGB(255, 255, 255)
	L_1214_.Text = L_1211_arg0 .. L_1213_;
	L_1214_.TextSize = 13;
	L_1214_.Visible = true;
	L_1214_.Parent = L_89_
end;
local L_91_ = {}
local L_92_ = {}
local L_93_ = {}
local L_94_ = {
	{
		"TKnife_Stock"
	},
	{
		"CTKnife_Stock"
	}
}
local L_95_ = {
	{
		"TGlove_Stock"
	},
	{
		"CTGlove_Stock"
	}
}
local L_96_ = {}
for L_1215_forvar0, L_1216_forvar1 in pairs(game.Players.LocalPlayer.PlayerGui.Client.Rarities:GetChildren()) do
	table.insert(L_93_, {
		L_1216_forvar1.Name
	})
end;
getgenv().unlockInventory = false;
getgenv().silentAimEnabled = false;
getgenv().antiAimCFrame = CFrame.new()
getgenv().lastKnife = ""
getgenv().lastGlove = ""
getgenv().predictionValue = Vector3.new()
spawn(function()
	wait(3)
	local L_1217_ = game:GetService("Players")
	local L_1218_ = L_1217_.LocalPlayer;
	local L_1219_ = game:GetService("ReplicatedStorage")
	local L_1220_ = workspace.CurrentCamera;
	local L_1221_ = game:GetService("RunService")
	local L_1222_ = game:GetService("Debris")
	pingIntance = game.Stats.PerformanceStats.Ping;
	local L_1223_ = false;
	local L_1224_ = false;
	local L_1225_ = nil;
	local L_1226_ = {}
	local L_1227_ = getgenv().library.flags;
	local L_1228_ = getgenv().hitChams;
	local L_1229_ = getgenv().decodePos;
	local L_1230_ = getgenv().encodePos;
	local L_1231_ = getgenv().hitlog;
	local L_1232_ = getgenv().tracers;
	local L_1233_ = getgenv().predictionValue;
	local L_1234_ = 1;
	local L_1235_ = 0;
	local L_1236_ = 0;
	local L_1237_ = false;
	local L_1238_ = nil;
	local L_1239_ = false;
	L_1221_.RenderStepped:Connect(function(L_1240_arg0)
		L_1235_ = L_1240_arg0;
		L_1236_ = pingIntance:GetValue()
		L_1234_ = getgenv().damagemod;
		L_1226_ = getgenv().oldPositions;
		L_1233_ = getgenv().predictionValue;
		L_1237_ = getgenv().holdE;
		L_1238_ = getgenv().hookJP;
		L_1239_ = getgenv().hookWS
	end)
	oldNewindex = hookmetamethod(game, "__newindex", LPH_NO_VIRTUALIZE(function(L_1241_arg0, L_1242_arg1, L_1243_arg2)
		if L_1241_arg0.Name == "Crosshair" and L_1242_arg1 == "Visible" and L_1227_["Force Crosshair"] then
			L_1243_arg2 = true
		end;
		if L_1241_arg0 == L_1220_ and L_1242_arg1 == "CFrame" then
			if L_1227_["Aspect Ratio"] then
				L_1243_arg2 = L_1243_arg2 * CFrame.new(0, 0, 0, 1, 0, 0, 0, L_1227_["ratioValue"], 0, 0, 0, 1)
			end;
			if L_1227_["Anti Aim"] and L_1227_["Roll"] ~= "None" then
				L_1243_arg2 = L_1243_arg2 + Vector3.new(0, L_1227_["Third Person"] and 2 or 1.5, 0)
			end
		end;
		return oldNewindex(L_1241_arg0, L_1242_arg1, L_1243_arg2)
	end))
	oldNamecall = hookmetamethod(game, "__namecall", LPH_NO_VIRTUALIZE(function(L_1244_arg0, ...)
		local L_1245_ = {
			...
		}
		local L_1246_ = getnamecallmethod()
		local L_1247_ = L_1244_arg0.Name;
		if L_1246_ == "GetService" and L_1245_[1] == "Cuteware" then
			local L_1248_ = {
				HitEvent = onHit,
				KillEvent = onKill,
				Chat = chat,
				SetYaw = setYaw
			}
			function L_1248_:GetTabs()
				local L_1249_ = {
					Legit = L_5_.tabs[1],
					Rage = L_5_.tabs[2],
					Visuals = L_5_.tabs[3],
					Misc = L_5_.tabs[4],
					Exploits = L_5_.tabs[5],
					Scripts = L_5_.tabs[6],
					Settings = L_5_.tabs[100]
				}
				return L_1249_
			end;
			return L_1248_
		end;
		if L_1246_ == "Kick" and L_1244_arg0 == L_1218_ then
			return
		end;
		if string.find(L_1246_, "FindPartOnRay") and (L_1227_["Ragebot"] or getgenv().silentAimEnabled) then
			if getgenv().target then
				local L_1250_ = getgenv().target.CFrame.p;
				local L_1251_ = L_1220_.CFrame.p;
				if not L_1227_["From Camera"] and L_1218_.Character and L_1218_.Character.PrimaryPart then
					L_1251_ = Vector3.new(L_1218_.Character.PrimaryPart.Position.X, L_1218_.Character.Head.Position.Y, L_1218_.Character.PrimaryPart.Position.Z)
				end;
				local L_1252_ = Ray.new(L_1251_, (L_1250_ + Vector3.new(0, (L_1251_ - L_1250_).Magnitude / 500, 0) - L_1251_).unit * 500)
				CreateThread(function()
					L_1225_ = L_1250_;
					wait(0.3)
					L_1225_ = nil
				end)
				return oldNamecall(L_1244_arg0, L_1252_, select(2, ...))
			end
		end;
		if L_1246_ == "FireServer" then
			if L_1247_ == "UpdatePing" and L_1227_["Ping Spoof"] then
				return oldNamecall(L_1244_arg0, math.random(100, 600) / 1000, select(2, ...))
			end;
			if L_1247_ == "RemoteEvent" and typeof(L_1245_[1]) == "table" and L_1245_[1][1] == "kick" then
				return
			end;
			if L_1247_ == "FallDamage" and L_1227_["No Fall Damage"] then
				return
			end;
			if L_1247_ == "BURNME" and L_1227_["No Fire Damage"] then
				return
			end;
			if L_1245_[1] == L_1218_.UserId or string.find(tostring(L_1245_[1]), '{') then
				return
			end;
			if L_1247_ == "ApplyGun" then
				if string.find(L_1245_[1].Name, "Banana") or string.find(L_1245_[1].Name, "Flip") then
					local L_1253_ = ...
					L_1253_ = L_1219_.Weapons[L_1218_.Status.Team.Value .. " Knife"]
					return oldNamecall(L_1244_arg0, L_1253_, select(2, ...))
				end
			end;
			if getgenv().unlockInventory then
				if string.len(tostring(L_1244_arg0)) == 38 then
					if not L_1223_ then
						L_1223_ = true;
						for L_1254_forvar0, L_1255_forvar1 in next, L_93_ do
							local L_1256_;
							for L_1257_forvar0, L_1258_forvar1 in next, L_1245_[1] do
								if L_1255_forvar1[1] == L_1258_forvar1[1] then
									L_1256_ = true
								end
							end;
							if not L_1256_ then
								table.insert(L_1245_[1], L_1255_forvar1)
							end
						end
					end;
					return
				end;
				if L_1247_ == "DataEvent" and L_1245_[1][4] then
					local L_1259_ = string.split(L_1245_[1][4][1], "_")[2]
					local L_1260_ = L_1245_[1][3]
					if L_1245_[1][2] == "Both" then
						L_1218_["SkinFolder"]["CTFolder"][L_1260_].Value = L_1259_;
						L_1218_["SkinFolder"]["TFolder"][L_1260_].Value = L_1259_
					else
						L_1218_["SkinFolder"][L_1245_[1][2] .. "Folder"][L_1260_].Value = L_1259_
					end;
					spawn(function()
						if L_1245_[1][4] and L_1245_[1][5] and L_1245_[1][5][2] then
							if L_1245_[1][3] == "Knife" then
								getgenv().lastKnife = L_1245_[1][4][1]
							elseif L_1245_[1][3] == "Glove" then
								getgenv().lastGlove = L_1245_[1][4][1]
							end
						end
					end)
				end
			end;
			if L_1247_ == "ControlTurn" then
				if L_1227_["Anti Aim"] then
					local L_1261_ = 0;
					if L_1227_["Pitch"] == "Down" then
						L_1261_ = -1
					elseif L_1227_["Pitch"] == "Up" then
						L_1261_ = 1
					elseif L_1227_["Pitch"] == "180" then
						L_1261_ = 2.2
					end;
					if L_1237_ then
						L_1261_ = 0
					end;
					return oldNamecall(L_1244_arg0, L_1261_, select(2, ...))
				end
			end;
			if L_1247_ == "ReplicateCamera" then
				if L_1227_["Spectator Anti Aim"] then
					return oldNamecall(L_1244_arg0, antiAimCFrame, select(2, ...))
				end
			end;
			if L_1247_ == "HitPart" then
				local L_1262_ = false;
				local L_1263_, L_1264_, L_1265_, L_1266_, L_1267_, L_1268_, L_1269_, L_1270_, L_1271_, L_1272_, L_1273_, L_1274_, L_1275_, L_1276_, L_1277_, L_1278_ = ...
				L_1275_ = true;
				L_1264_ = L_1229_(L_1264_)
				local L_1279_ = L_1226_[L_1263_.Parent.Name]
				L_1269_ = L_1227_["Minimum Damage"] and L_1227_["minDamage"] > L_1269_ and L_1227_["minDamage"] or L_1269_;
				L_1269_ = L_1269_ * L_1234_;
				if L_1227_["Force Headshot"] and L_1279_ then
					L_1263_ = L_1263_.Parent.Head;
					L_1264_ = L_1263_.Position
				end;
				if L_1227_["Movement Prediction"] and L_1227_["Ragebot"] and L_1279_ then
					if L_1227_["Prediction Mode"] == "Old" then
						local L_1280_ = (L_1264_ - L_1226_[L_1263_.Parent.Name]) * Vector3.new(1, 0, 1)
						L_1264_ = L_1264_ + L_1280_ * L_1236_ / 1000 * L_1227_["predictAmount"] / 50
					elseif L_1227_["Prediction Mode"] == "Performance" then
						L_1264_ = L_1263_.Position + getgenv().predictionValue;
						getgenv().predictionValue = Vector3.new(0, 0, 0)
					elseif L_1227_["Prediction Mode"] == "Adaptive" then
						coroutine.wrap(function()
							local L_1281_ = L_1263_.Parent.HumanoidRootPart.Position;
							local L_1282_ = L_1226_[L_1263_.Parent.Name]
							local L_1283_ = (Vector3.new(L_1281_.X, 0, L_1281_.Z) - Vector3.new(L_1282_.X, 0, L_1282_.Z)) / L_1235_;
							local L_1284_ = Vector3.new(L_1283_.X / L_1283_.magnitude, 0, L_1283_.Z / L_1283_.magnitude)
							L_1264_ = L_1264_ + L_1284_ * L_1236_ / math.pow(L_1236_, 1.5) * L_1284_ / (L_1284_ / 2)
						end)
					end;
					L_1266_ = 0;
					L_1273_ = L_1273_ - 500;
					L_1262_ = true;
					oldNamecall(L_1244_arg0, L_1263_, L_1230_(L_1264_), L_1265_, L_1266_, L_1267_, L_1268_, L_1269_, L_1270_, L_1271_, L_1272_, L_1273_, L_1274_, L_1275_, L_1276_, L_1277_, L_1278_)
					spawn(function()
						if L_1227_["Show Prediction Position"] then
							local L_1285_ = Instance.new("Part")
							L_1285_.Size = Vector3.new(0.5, 0.5, 0.5)
							L_1285_.Anchored = true;
							L_1285_.CanCollide = false;
							L_1285_.Transparency = 0.6;
							L_1285_.Position = L_1264_;
							L_1285_.Color = Color3.new(1, 0.3, 0.3)
							L_1285_.Material = "Neon"
							L_1285_.Parent = workspace.Ray_Ignore;
							L_1222_:AddItem(L_1285_, 3)
						end
					end)
				end;
				if not L_1224_ then
					local L_1286_ = false;
					if string.find(L_1263_.Parent.Parent.Name, "bt") then
						L_1263_ = L_1217_[L_1263_.Parent.Name].Character[L_1263_.Name]
						L_1264_ = L_1263_.Position;
						L_1286_ = true
					end;
					if string.find(L_1263_.Name, "btHead") then
						L_1263_ = L_1263_.Parent["Head"]
						L_1264_ = L_1263_.Position;
						L_1286_ = true
					end;
					if L_1286_ then
						L_1224_ = true;
						L_1274_ = Vector3.new(420, 5, 69)
						CreateThread(function()
							wait(0.1)
							L_1224_ = false
						end)
					end
				end;
				CreateThread(function()
					if L_1227_["Bullet Tracers"] and L_1218_.Character and L_1220_:FindFirstChild("Arms") then
						local L_1287_;
						if L_1227_["Third Person"] then
							L_1287_ = L_1218_.Character.Gun:FindFirstChild("Flash")
						else
							L_1287_ = L_1220_.Arms:FindFirstChild("Flash")
						end;
						if L_1287_ then
							wait()
							local L_1288_ = Ray.new(L_1220_.CFrame.p, (L_1229_(L_1264_) - L_1220_.CFrame.p).unit * 100)
							local L_1289_, L_1290_, L_1291_ = workspace:FindPartOnRayWithIgnoreList(L_1288_, {
								workspace.Map,
								L_1220_,
								L_1218_.Character,
								workspace.Ray_Ignore,
								workspace.Map:WaitForChild("Clips"),
								workspace.Map:WaitForChild("SpawnPoints")
							}, false, true)
							L_1232_(L_1290_, L_1287_)
						end
					end
				end)
				CreateThread(function()
					if L_1217_:FindFirstChild(L_1263_.Parent.Name) then
						local L_1292_ = L_1217_[L_1263_.Parent.Name]
						onHit:Fire(L_1292_, L_1263_)
						if L_1227_["Hitlogs"] and L_1292_.Team ~= L_1218_.Team then
							CreateThread(function()
								pcall(L_1231_, L_1292_, L_1263_.Name, tostring(L_1265_))
							end)
						end;
						if L_1274_ ~= Vector3.new(420, 5, 69) then
							L_1224_ = true;
							CreateThread(function()
								wait(0.1)
								L_1224_ = false
							end)
						end;
						if L_1227_["Hit Chams"] and teamCheck(L_1292_, L_39_) then
							L_1228_(L_1292_)
						end;
						if L_1227_["Hitsound"] and teamCheck(L_1292_, false) then
							local L_1293_ = Instance.new('Sound', workspace)
							local L_1294_ = L_1227_["hitsoundValue"]
							local L_1295_ = hitSounds[L_1294_]
							if type(L_1295_) == "table" then
								L_1295_ = L_1295_[math.random(1, # L_1294_)]
							end;
							L_1293_.SoundId = L_1295_;
							L_1293_.PlayOnRemove = true;
							L_1293_.Volume = L_1227_["Hitsound Volume"]
							L_1293_:Destroy()
						end
					end
				end)
				if not L_1262_ then
					L_1264_ = L_1230_(L_1264_)
					return oldNamecall(L_1244_arg0, L_1263_, L_1264_, L_1265_, L_1266_, L_1267_, L_1268_, L_1269_, L_1270_, L_1271_, L_1272_, L_1273_, L_1274_, L_1275_, L_1276_, L_1277_, L_1278_)
				end
			end
		end;
		if L_1246_ == "InvokeServer" and L_1247_ == "Hugh" then
			return
		end;
		if L_1246_ == "LoadAnimation" then
			if L_1227_["Slide Walk"] and (L_1245_[1].Name == "RunAnim" or L_1245_[1].Name == "JumpAnim") then
				return wait(387420489)
			end
		end;
		if L_1246_ == "SetPrimaryPartCFrame" then
			if L_1247_ ~= L_1218_.Name and L_1227_["viewmodelEnabled"] then
				local L_1296_ = L_1245_[1]
				L_1296_ = L_1296_ * CFrame.new(L_1227_["viewmodelX"] / 10, L_1227_["viewmodelY"] / 10, - L_1227_["viewmodelZ"] / 10) * CFrame.Angles(0, 0, math.rad(L_1227_["viewmodelRoll"]))
				if L_1225_ and L_1227_["Visualize Silent Angles"] then
					L_1296_ = CFrame.new(L_1296_.p, L_1225_)
				end;
				return oldNamecall(L_1244_arg0, L_1296_, select(2, ...))
			end
		end;
		if L_1247_ == "Filter" and L_1227_["Uncensor Chat"] then
			return L_1245_[1]
		end;
		return oldNamecall(L_1244_arg0, ...)
	end))
end)
local L_97_ = L_5_:AddTab"Legit"
local L_98_ = L_97_:AddColumn()
local L_99_ = L_97_:AddColumn()
local L_100_ = false;
local L_101_ = L_98_:AddSection"Aimbot"
L_101_:AddToggle({
	text = "Enabled",
	flag = "aimbotEnabled"
})
L_101_:AddToggle({
	text = "Aim Assist"
}):AddBind({
	key = "MouseButton1",
	mode = "hold",
	flag = "assistBind",
	callback = function()
		if library_flags["aimbotEnabled"] and library_flags["Aim Assist"] and not L_5_.open then
			L_100_ = true;
			if L_57_.alive then
				local L_1297_ = L_32_.Character.Humanoid:GetState()
				if library_flags["Jump Check"] and L_1297_ == Enum.HumanoidStateType.Freefall then
					return
				end;
				if library_flags["Flash Check"] and L_32_.PlayerGui.Blnd.Blind.Transparency <= 0.6 then
					return
				end;
				local L_1298_, L_1299_ = getNearest(L_57_.FOV, L_38_, library_flags["legitVisOnly"])
				if L_1298_ and L_1299_ > L_57_.deadzone * 2.3 then
					local L_1300_, L_1301_ = L_34_:WorldToScreenPoint(L_57_.baim and L_1298_.Character.PrimaryPart.Position or L_1298_.Character.Head.Position)
					if L_1301_ then
						local L_1302_, L_1303_ = - ((L_33_.X - L_1300_.X) / L_57_.smoothness), - ((L_33_.Y - L_1300_.Y) / L_57_.smoothness)
						mousemoverel(L_1302_, L_1303_)
					end
				end
			end
		end
	end
})
L_101_:AddToggle({
	text = "Visible Only",
	flag = "legitVisOnly"
})
L_101_:AddToggle({
	text = "Teammates",
	flag = "legitteam",
	callback = function(L_1304_arg0)
		L_38_ = L_1304_arg0
	end
})
L_101_:AddToggle({
	text = "Magnet Triggerbot"
})
L_101_:AddToggle({
	text = "Jump Check"
})
L_101_:AddToggle({
	text = "Flash Check"
})
local L_102_ = false;
L_101_:AddBind({
	text = "Triggerbot Keybind",
	key = Enum.KeyCode.LeftAlt,
	mode = "hold",
	callback = function(L_1305_arg0)
		if not L_1305_arg0 then
			L_102_ = true
		else
			L_102_ = false
		end
	end
})
rifles2 = L_99_:AddSection"Rifles"
scout2 = L_99_:AddSection"Scout"
awp2 = L_99_:AddSection"AWP"
heavyp2 = L_99_:AddSection"Heavy Pistols"
pistols2 = L_99_:AddSection"Pistols"
smg = L_99_:AddSection"SMG"
other2 = L_99_:AddSection"Other"
rifles2:AddToggle({
	text = "Triggerbot",
	flag = "riflesTrigger"
})
rifles2:AddToggle({
	text = "Body Aim",
	flag = "riflesBaim"
})
rifles2:AddToggle({
	text = "Silent Aim",
	flag = "riflesSilentAim"
})
rifles2:AddSlider({
	text = "Aim Assist FOV",
	min = 1,
	max = 180,
	flag = "riflesFOV"
})
rifles2:AddSlider({
	text = "Silent Aim FOV",
	min = 1,
	max = 180,
	flag = "riflesSilentFOV"
})
rifles2:AddSlider({
	text = "Deadzone",
	min = 0,
	max = 20,
	flag = "riflesDeadzone"
})
rifles2:AddSlider({
	text = "Smoothness",
	min = 1,
	max = 50,
	flag = "riflesSmoothness"
})
rifles2:AddSlider({
	text = "Triggerbot Delay",
	min = 0,
	max = 100,
	flag = "riflesTriggerDelay"
})
scout2:AddToggle({
	text = "Triggerbot",
	flag = "scoutTrigger"
})
scout2:AddToggle({
	text = "Body Aim",
	flag = "scoutBaim"
})
scout2:AddToggle({
	text = "Silent Aim",
	flag = "scoutSilentAim"
})
scout2:AddSlider({
	text = "Aim Assist FOV",
	min = 1,
	max = 180,
	flag = "scoutFOV"
})
scout2:AddSlider({
	text = "Silent Aim FOV",
	min = 1,
	max = 180,
	flag = "scoutSilentFOV"
})
scout2:AddSlider({
	text = "Deadzone",
	min = 0,
	max = 20,
	flag = "scoutDeadzone"
})
scout2:AddSlider({
	text = "Smoothness",
	min = 1,
	max = 50,
	flag = "scoutSmoothness"
})
scout2:AddSlider({
	text = "Triggerbot Delay",
	min = 0,
	max = 100,
	flag = "scoutTriggerDelay"
})
awp2:AddToggle({
	text = "Triggerbot",
	flag = "awpTrigger"
})
awp2:AddToggle({
	text = "Body Aim",
	flag = "awpBaim"
})
awp2:AddToggle({
	text = "Silent Aim",
	flag = "awpSilentAim"
})
awp2:AddSlider({
	text = "Aim Assist FOV",
	min = 1,
	max = 180,
	flag = "awpFOV"
})
awp2:AddSlider({
	text = "Silent Aim FOV",
	min = 1,
	max = 180,
	flag = "awpSilentFOV"
})
awp2:AddSlider({
	text = "Deadzone",
	min = 0,
	max = 20,
	flag = "awpDeadzone"
})
awp2:AddSlider({
	text = "Smoothness",
	min = 1,
	max = 50,
	flag = "awpSmoothness"
})
awp2:AddSlider({
	text = "Triggerbot Delay",
	min = 0,
	max = 100,
	flag = "awpTriggerDelay"
})
heavyp2:AddToggle({
	text = "Triggerbot",
	flag = "heavypTrigger"
})
heavyp2:AddToggle({
	text = "Body Aim",
	flag = "heavypBaim"
})
heavyp2:AddToggle({
	text = "Silent Aim",
	flag = "heavypSilentAim"
})
heavyp2:AddSlider({
	text = "Aim Assist FOV",
	min = 1,
	max = 180,
	flag = "heavypFOV"
})
heavyp2:AddSlider({
	text = "Silent Aim FOV",
	min = 1,
	max = 180,
	flag = "heavypSilentFOV"
})
heavyp2:AddSlider({
	text = "Deadzone",
	min = 0,
	max = 20,
	flag = "heavypDeadzone"
})
heavyp2:AddSlider({
	text = "Smoothness",
	min = 1,
	max = 50,
	flag = "heavypSmoothness"
})
heavyp2:AddSlider({
	text = "Triggerbot Delay",
	min = 0,
	max = 100,
	flag = "heavypTriggerDelay"
})
pistols2:AddToggle({
	text = "Triggerbot",
	flag = "pistolTrigger"
})
pistols2:AddToggle({
	text = "Body Aim",
	flag = "pistolBaim"
})
pistols2:AddToggle({
	text = "Silent Aim",
	flag = "pistolSilentAim"
})
pistols2:AddSlider({
	text = "Aim Assist FOV",
	min = 1,
	max = 180,
	flag = "pistolFOV"
})
pistols2:AddSlider({
	text = "Silent Aim FOV",
	min = 1,
	max = 180,
	flag = "pistolSilentFOV"
})
pistols2:AddSlider({
	text = "Deadzone",
	min = 0,
	max = 20,
	flag = "pistolDeadzone"
})
pistols2:AddSlider({
	text = "Smoothness",
	min = 1,
	max = 50,
	flag = "pistolSmoothness"
})
pistols2:AddSlider({
	text = "Triggerbot Delay",
	min = 0,
	max = 100,
	flag = "pistolTriggerDelay"
})
smg:AddToggle({
	text = "Triggerbot",
	flag = "smgTrigger"
})
smg:AddToggle({
	text = "Body Aim",
	flag = "smgBaim"
})
smg:AddToggle({
	text = "Silent Aim",
	flag = "smgSilentAim"
})
smg:AddSlider({
	text = "Aim Assist FOV",
	min = 1,
	max = 180,
	flag = "smgFOV"
})
smg:AddSlider({
	text = "Silent Aim FOV",
	min = 1,
	max = 180,
	flag = "smgSilentFOV"
})
smg:AddSlider({
	text = "Deadzone",
	min = 0,
	max = 20,
	flag = "smgDeadzone"
})
smg:AddSlider({
	text = "Smoothness",
	min = 1,
	max = 50,
	flag = "smgSmoothness"
})
smg:AddSlider({
	text = "Triggerbot Delay",
	min = 0,
	max = 100,
	flag = "smgTriggerDelay"
})
other2:AddToggle({
	text = "Triggerbot",
	flag = "otherTrigger"
})
other2:AddToggle({
	text = "Body Aim",
	flag = "otherBaim"
})
other2:AddToggle({
	text = "Silent Aim",
	flag = "otherSilentAim"
})
other2:AddSlider({
	text = "Aim Assist FOV",
	min = 1,
	max = 180,
	flag = "otherFOV"
})
other2:AddSlider({
	text = "Silent Aim FOV",
	min = 1,
	max = 180,
	flag = "otherSilentFOV"
})
other2:AddSlider({
	text = "Deadzone",
	min = 0,
	max = 20,
	flag = "otherDeadzone"
})
other2:AddSlider({
	text = "Smoothness",
	min = 1,
	max = 50,
	flag = "otherSmoothness"
})
other2:AddSlider({
	text = "Triggerbot Delay",
	min = 0,
	max = 100,
	flag = "otherTriggerDelay"
})
L_101_:AddList({
	text = "Weapon",
	values = {
		"Rifles",
		"Scout",
		"AWP",
		"Heavy Pistols",
		"Pistols",
		"SMG",
		"Other"
	},
	max = 10,
	callback = function(L_1306_arg0)
		rifles2.main.Visible = L_1306_arg0 == "Rifles"
		scout2.main.Visible = L_1306_arg0 == "Scout"
		awp2.main.Visible = L_1306_arg0 == "AWP"
		heavyp2.main.Visible = L_1306_arg0 == "Heavy Pistols"
		pistols2.main.Visible = L_1306_arg0 == "Pistols"
		smg.main.Visible = L_1306_arg0 == "SMG"
		other2.main.Visible = L_1306_arg0 == "Other"
	end
})
local L_103_ = L_98_:AddSection"Other"
L_103_:AddToggle({
	text = "Auto Pistol",
	callback = function()
		for L_1307_forvar0, L_1308_forvar1 in next, L_24_.Weapons:GetChildren() do
			if L_1308_forvar1:FindFirstChild("Secondary") and L_1308_forvar1.Name ~= "CZ" then
				L_1308_forvar1.Auto.Value = library_flags["Auto Pistol"]
			end
		end
	end
})
rageTab = L_5_:AddTab"Rage"
rageColumn = rageTab:AddColumn()
rageColumn2 = rageTab:AddColumn()
rageMain = rageColumn:AddSection"Ragebot"
rageAntiaim = rageColumn:AddSection"Anti-Aim"
quickpeeking = false;
qpPartpos = nil;
local L_104_ = false;
local L_105_ = 0;
local L_106_ = false;
local L_107_ = {
	Body = {
		"UpperTorso",
		"LowerTorso"
	},
	Arms = {
		"LeftLowerArm",
		"RightLowerArm",
		"LeftHand",
		"RightHand"
	},
	Legs = {
		"LeftLowerLeg",
		"RightLowerLeg"
	}
}
local L_108_ = {
	"Body",
	"Arms",
	"Legs"
}
function rageShoot(L_1309_arg0, L_1310_arg1, L_1311_arg2, L_1312_arg3)
	if not L_104_ and not L_1312_arg3.melee then
		local L_1313_ = library_flags["Double Tap"] and 2 or 1;
		local L_1314_ = L_1309_arg0["HumanoidRootPart"]
		local L_1315_ = L_1309_arg0["HumanoidRootPart"].Position;
		local L_1316_ = tick()
		if library_flags["Movement Prediction"] and library_flags["Prediction Mode"] == "Performance" then
			L_28_.RenderStepped:Wait()
			L_28_.RenderStepped:Wait()
			local L_1317_ = (L_1314_.Position - L_1315_) / (tick() - L_1316_)
			local L_1318_ = Vector3.new(L_1317_.X, 0, L_1317_.Z)
			getgenv().predictionValue = L_1318_.Unit * L_1318_.Magnitude * L_58_ / 1000 * (L_58_ > 200 and 1.5 or 2)
		end;
		getgenv().target = L_1309_arg0[L_1310_arg1]
		if library_flags["HitPart"] then
			for L_1319_forvar0 = 1, L_1313_ do
				L_28_.RenderStepped:Wait()
				L_75_ = false;
				fireHitpart(target, library_flags["Damage Modifier"] and 1 or L_1311_arg2, L_1311_arg2 > 0.985 and false or true)
			end
		else
			for L_1320_forvar0 = 1, L_1313_ do
				L_75_ = false;
				L_36_.firebullet()
			end
		end;
		CreateThread(function()
			if quickpeeking and qpPartpos then
				if not library_flags["Old Ray Method"] then
					wait(0.1)
				end;
				L_32_.Character.HumanoidRootPart.CFrame = CFrame.new(qpPartpos.X, qpPartpos.Y + 2.75, qpPartpos.Z)
			end
		end)
	end
end;
ragecounter = 0;
skipwait = false;
skippedwaits = 0;
rageMain:AddToggle({
	text = "Enabled",
	flag = "Ragebot",
	callback = function()
		getgenv().target = nil;
		while library_flags["Ragebot"] do
			kan, ker = pcall(function()
				if library_flags["Slower Ragebot"] then
					wait()
				else
					L_28_.RenderStepped:Wait()
				end;
				L_106_ = false;
				getgenv().target = nil;
				if L_57_.alive and not L_104_ and not L_57_.melee then
					L_105_ = L_105_ + 1;
					L_105_ = L_105_ > 3 and 1 or L_105_;
					local L_1321_ = L_108_[L_105_]
					local L_1322_ = L_107_[L_1321_]
					for L_1323_forvar0, L_1324_forvar1 in next, L_30_:GetPlayers() do
						if not teamCheck(L_1324_forvar1, L_37_) or not alive(L_1324_forvar1) then
							continue;
						end;
						if math.abs(L_1324_forvar1.Character.Head.Position.Y - L_32_.Character.Head.Position.Y) >= 30 then
							continue;
						end;
						if L_1324_forvar1.Character:FindFirstChild("ForceField") then
							continue;
						end;
						if L_57_.name == "C4" then
							continue;
						end;
						local L_1325_, L_1326_ = false;
						if L_52_[L_1324_forvar1.Name] then
							L_1325_ = L_52_[L_1324_forvar1.Name].rageWL;
							L_1326_ = L_52_[L_1324_forvar1.Name].ragePL
						end;
						if not L_1326_ and library_flags["Rage Force Priority"] then
							continue;
						end;
						if L_1325_ then
							continue;
						end;
						if L_57_.hitboxes.Head then
							if not L_1324_forvar1.Character:FindFirstChild("HeadHB") and library_flags["HitPart"] or L_1324_forvar1.Character:FindFirstChild("HeadHB") then
								local L_1327_ = calculateWallbang(L_1324_forvar1.Character, "Head", library_flags["Movement Prediction"] and library_flags["HitPart"])
								local L_1328_ = L_57_.clientgun.DMG.Value * L_1327_ * 4;
								if L_1328_ >= L_57_.mindmg or L_57_.mindmg == 1 and L_1327_ > 0 and library_flags["HitPart"] then
									rageShoot(L_1324_forvar1.Character, "Head", L_1327_, L_57_)
									wait(L_57_.clientgun.FireRate.Value * 0.9)
									break
								end
							end
						end;
						if L_57_.hitboxes[L_1321_] then
							for L_1329_forvar0, L_1330_forvar1 in next, L_1322_ do
								if L_1324_forvar1.Character:FindFirstChild(L_1330_forvar1) then
									local L_1331_ = calculateWallbang(L_1324_forvar1.Character, L_1330_forvar1, library_flags["Movement Prediction"] and library_flags["HitPart"])
									local L_1332_ = L_57_.clientgun.DMG.Value * L_1331_;
									if L_1332_ >= L_57_.mindmg or L_57_.mindmg == 1 and L_1331_ > 0 and library_flags["HitPart"] then
										rageShoot(L_1324_forvar1.Character, L_1330_forvar1, L_1331_, L_57_, library_flags["Movement Prediction"] and library_flags["HitPart"])
										L_106_ = true;
										break
									end
								end
							end
						end;
						if L_106_ then
							wait(L_57_.clientgun.FireRate.Value * 0.85)
							break
						end
					end
				end
			end)
			if not kan then
				warn(ker)
			end
		end
	end
})
rageMain:AddToggle({
	text = "Knife Bot",
	callback = function()
		while library_flags["Knife Bot"] do
			wait()
			if L_57_.melee or L_104_ then
			else
				continue;
			end;
			for L_1333_forvar0, L_1334_forvar1 in next, L_30_:GetPlayers() do
				if L_57_.alive and alive(L_1334_forvar1) and teamCheck(L_1334_forvar1, L_37_) and L_57_ and L_57_.melee and L_36_.gun and L_36_.gun:FindFirstChild("Melee") then
					local L_1335_, L_1336_ = false;
					if L_52_[L_1334_forvar1.Name] then
						L_1335_ = L_52_[L_1334_forvar1.Name].rageWL;
						L_1336_ = L_52_[L_1334_forvar1.Name].ragePL
					end;
					if not L_1336_ and library_flags["Rage Force Priority"] then
						continue;
					end;
					if L_1335_ then
						continue;
					end;
					local L_1337_ = L_1334_forvar1.Character.PrimaryPart.Position;
					local L_1338_ = (L_1337_ - L_32_.Character.PrimaryPart.Position).magnitude;
					if L_1338_ <= 8 then
						fireHitpart(L_1334_forvar1.Character.HumanoidRootPart, 1, false)
						wait(0.4)
					end
				end
			end
		end
	end
})
rageMain:AddToggle({
	text = "Hitpart",
	flag = "HitPart"
})
rageMain:AddToggle({
	text = "Movement Prediction"
})
rageMain:AddToggle({
	text = "From Camera"
})
rageMain:AddToggle({
	text = "Resolve Angles"
})
rageMain:AddToggle({
	text = "Rage Force Priority"
})
rageMain:AddToggle({
	text = "Teammates",
	flag = "rageteam",
	callback = function(L_1339_arg0)
		L_37_ = L_1339_arg0
	end
})
rageMain:AddList({
	text = "Prediction Mode",
	values = {
		"Adaptive",
		"Test",
		"Performance",
		"Old"
	}
})
rageMain:AddSlider({
	text = "Prediction Amount",
	min = 0,
	max = 100,
	value = 50,
	flag = "predictAmount"
})
rageOther = rageColumn2:AddSection"Other"
auto = rageColumn2:AddSection"Autosniper"
scout = rageColumn2:AddSection"Scout"
awp = rageColumn2:AddSection"AWP"
rifles = rageColumn2:AddSection"Rifles"
heavyp = rageColumn2:AddSection"Heavy Pistols"
pistols = rageColumn2:AddSection"Pistols"
other = rageColumn2:AddSection"Other"
auto:AddSlider({
	text = "Minimum Damage",
	min = 1,
	max = 120,
	flag = "autoMin"
})
scout:AddSlider({
	text = "Minimum Damage",
	min = 1,
	max = 120,
	flag = "scoutMin"
})
awp:AddSlider({
	text = "Minimum Damage",
	min = 1,
	max = 120,
	flag = "awpMin"
})
rifles:AddSlider({
	text = "Minimum Damage",
	min = 1,
	max = 120,
	flag = "riflesMin"
})
heavyp:AddSlider({
	text = "Minimum Damage",
	min = 1,
	max = 120,
	flag = "heavypMin"
})
pistols:AddSlider({
	text = "Minimum Damage",
	min = 1,
	max = 120,
	flag = "pistolMin"
})
other:AddSlider({
	text = "Minimum Damage",
	min = 1,
	max = 120,
	flag = "otherMin"
})
auto:AddList({
	text = "Hitboxes",
	multiselect = true,
	values = {
		"Head",
		"Body",
		"Arms",
		"Legs"
	},
	max = 4,
	flag = "autoHitboxes"
})
scout:AddList({
	text = "Hitboxes",
	multiselect = true,
	values = {
		"Head",
		"Body",
		"Arms",
		"Legs"
	},
	max = 4,
	flag = "scoutHitboxes"
})
awp:AddList({
	text = "Hitboxes",
	multiselect = true,
	values = {
		"Head",
		"Body",
		"Arms",
		"Legs"
	},
	max = 4,
	flag = "awpHitboxes"
})
rifles:AddList({
	text = "Hitboxes",
	multiselect = true,
	values = {
		"Head",
		"Body",
		"Arms",
		"Legs"
	},
	max = 4,
	flag = "riflesHitboxes"
})
heavyp:AddList({
	text = "Hitboxes",
	multiselect = true,
	values = {
		"Head",
		"Body",
		"Arms",
		"Legs"
	},
	max = 4,
	flag = "heavypHitboxes"
})
pistols:AddList({
	text = "Hitboxes",
	multiselect = true,
	values = {
		"Head",
		"Body",
		"Arms",
		"Legs"
	},
	max = 4,
	flag = "pistolHitboxes"
})
other:AddList({
	text = "Hitboxes",
	multiselect = true,
	values = {
		"Head",
		"Body",
		"Arms",
		"Legs"
	},
	max = 4,
	flag = "otherHitboxes"
})
rageMain:AddList({
	text = "Weapon",
	values = {
		"Autosniper",
		"Scout",
		"AWP",
		"Rifles",
		"Heavy Pistols",
		"Pistols",
		"Other"
	},
	max = 10,
	callback = function(L_1340_arg0)
		auto.main.Visible = L_1340_arg0 == "Autosniper"
		scout.main.Visible = L_1340_arg0 == "Scout"
		awp.main.Visible = L_1340_arg0 == "AWP"
		rifles.main.Visible = L_1340_arg0 == "Rifles"
		heavyp.main.Visible = L_1340_arg0 == "Heavy Pistols"
		pistols.main.Visible = L_1340_arg0 == "Pistols"
		other.main.Visible = L_1340_arg0 == "Other"
	end
})
local L_109_, L_110_, L_111_ = false, false, true;
rageAntiaim:AddToggle({
	text = "Enabled",
	flag = "Anti Aim",
	callback = function()
		updatePitch()
	end
})
rageAntiaim:AddToggle({
	text = "Remove Head"
})
rageAntiaim:AddToggle({
	text = "Spectator Anti Aim"
})
rageAntiaim:AddToggle({
	text = "Manual Indicators",
	callback = function(L_1341_arg0)
		indicatorHolder.Enabled = L_1341_arg0
	end
})
rageAntiaim:AddList({
	text = "Pitch",
	values = {
		"None",
		"Down",
		"Up"
	},
	callback = updatePitch
})
rageAntiaim:AddList({
	text = "Yaw",
	values = {
		"None",
		"Manual",
		"Backwards",
		"Spin",
		"Random",
		"Jitter"
	},
	max = 5,
	callback = updatePitch
})
rageAntiaim:AddList({
	text = "Roll",
	values = {
		"None",
		"Upside Down"
	}
})
rageAntiaim:AddBind({
	text = "Right Manual Key",
	key = "Right",
	callback = function()
		L_109_ = true;
		L_110_ = false;
		L_111_ = false
	end
})
rageAntiaim:AddBind({
	text = "Left Manual Key",
	key = "Left",
	callback = function()
		L_109_ = false;
		L_110_ = true;
		L_111_ = false
	end
})
rageAntiaim:AddBind({
	text = "Backwards Manual Key",
	key = "Down",
	callback = function()
		L_109_ = false;
		L_110_ = false;
		L_111_ = true
	end
})
rageAntiaim:AddSlider({
	text = "Manual Yaw Offset",
	min = -89,
	max = 89
})
rageOther:AddToggle({
	text = "Kill All"
})
rageOther:AddToggle({
	text = "Slide Walk"
})
local L_112_;
rageOther:AddToggle({
	text = "Fake Duck"
}):AddBind({
	key = "V",
	flag = "fakeduckBind",
	mode = "hold",
	callback = function(L_1342_arg0)
		if library_flags["Fake Duck"] and L_57_.alive then
			if not L_1342_arg0 and not L_112_ then
				L_112_ = L_32_.Character.Humanoid:LoadAnimation(L_35_.Idle)
				L_112_:Play()
			elseif L_1342_arg0 and L_112_ then
				L_112_:Stop()
				L_112_ = nil
			end
		end
	end
})
qpPart = Instance.new("MeshPart")
qpPart.Anchored = true;
qpPart.CanCollide = false;
qpPart.Parent = workspace;
qpPart.Size = Vector3.new(0.5, 0.125, 0.5)
qpPart.MeshId = "rbxassetid://5536195161"
rageOther:AddToggle({
	text = "Quickpeek"
}):AddBind({
	key = "LeftAlt",
	flag = "fakeduckBind",
	mode = "hold",
	callback = function(L_1343_arg0)
		if library_flags["Quickpeek"] and L_57_.alive then
			qpPart.Color = library_flags["Menu Accent Color"]
			if not L_1343_arg0 then
				quickpeeking = true;
				if not qpPartpos or (L_32_.Character.HumanoidRootPart.Position - qpPartpos).magnitude >= 15 then
					qpPart.Position = L_32_.Character.HumanoidRootPart.Position - Vector3.new(0, 2.75, 0)
					qpPartpos = qpPart.Position
				end
			else
				quickpeeking = false;
				qpPart.Position = Vector3.new()
				qpPartpos = nil
			end
		end
	end
})
visualsTab = L_5_:AddTab"Visuals"
visualsColumn = visualsTab:AddColumn()
visualsColumn2 = visualsTab:AddColumn()
visualsESP = visualsColumn:AddSection"ESP"
visualsESP:AddToggle({
	text = "Enabled",
	flag = "espEnabled"
})
visualsESP:AddToggle({
	text = "Chams",
	callback = function()
		if library_flags["Chams"] and library_flags["espEnabled"] then
			for L_1344_forvar0, L_1345_forvar1 in next, L_30_:GetPlayers() do
				if L_1345_forvar1.Character then
					chamsPlr(L_1345_forvar1)
				end
			end;
			for L_1346_forvar0, L_1347_forvar1 in next, L_30_:GetPlayers() do
				if L_1347_forvar1.Character then
					local L_1348_ = L_52_[L_1347_forvar1.Name] and L_52_[L_1347_forvar1.Name].TargetESP and "targetchams2" or "chamsColor"
					local L_1349_ = L_52_[L_1347_forvar1.Name] and L_52_[L_1347_forvar1.Name].TargetESP and "Target Chams Color" or "chamsColor2"
					local L_1350_ = library_flags[L_1348_]
					local L_1351_ = library_flags[L_1349_]
					local L_1352_ = 1 - L_5_.options[L_1348_].trans;
					local L_1353_ = 1 - L_5_.options[L_1349_].trans;
					for L_1354_forvar0, L_1355_forvar1 in next, L_1347_forvar1.Character:GetDescendants() do
						if L_1355_forvar1.Name == "inner" then
							L_1355_forvar1.Color3 = L_1351_;
							L_1355_forvar1.Transparency = L_1353_;
							L_1355_forvar1.Visible = not library_flags["Visible Only ESP"]
						elseif L_1355_forvar1.Name == "outer" then
							L_1355_forvar1.Transparency = L_1352_;
							L_1355_forvar1.Color3 = L_1350_;
							L_1355_forvar1.AlwaysOnTop = false
						end
					end;
					if not teamCheck(L_1347_forvar1, L_39_) then
						for L_1356_forvar0, L_1357_forvar1 in next, L_1347_forvar1.Character:GetDescendants() do
							if L_1357_forvar1.Name == "inner" or L_1357_forvar1.Name == "outer" then
								L_1357_forvar1:Destroy()
							end
						end
					end
				end
			end
		else
			if not library_flags["Chams"] or not library_flags["espEnabled"] then
				for L_1358_forvar0, L_1359_forvar1 in next, L_30_:GetPlayers() do
					if L_1359_forvar1.Character then
						for L_1360_forvar0, L_1361_forvar1 in next, L_1359_forvar1.Character:GetDescendants() do
							if L_1361_forvar1.Name == "inner" or L_1361_forvar1.Name == "outer" then
								L_1361_forvar1:Destroy()
							end
						end
					end
				end
			end
		end
	end
}):AddColor({
	color = Color3.new(0.615, 0.613, 0.616),
	flag = "chamsColor2",
	trans = 0.15,
	callback = L_5_.options["Chams"].callback,
	calltrans = L_5_.options["Chams"].callback
})
cbCHAMS = L_5_.options["Chams"].callback;
L_5_.options["espEnabled"].callback = cbCHAMS;
L_5_.options["Chams"]:AddColor({
	color = Color3.new(0.192, 0.581, 0.459),
	flag = "chamsColor",
	trans = 0.6,
	calltrans = L_5_.options["Chams"].callback,
	callback = L_5_.options["Chams"].callback
})
visualsESP:AddToggle({
	text = "Box ESP"
}):AddColor({
	color = Color3.fromRGB(255, 255, 255),
	flag = "boxESPcolor"
})
visualsESP:AddToggle({
	text = "Name ESP"
}):AddColor({
	color = Color3.fromRGB(255, 255, 255),
	flag = "nameESPcolor"
})
visualsESP:AddToggle({
	text = "Weapon ESP"
}):AddColor({
	color = Color3.fromRGB(255, 255, 255),
	flag = "weaponESPcolor"
})
visualsESP:AddToggle({
	text = "Health Bar"
}):AddColor({
	color = Color3.fromRGB(0, 255, 0),
	flag = "healthBar"
})
visualsESP:AddToggle({
	text = "Tracers"
}):AddColor({
	color = Color3.fromRGB(255, 255, 255),
	flag = "tracersColor"
})
visualsESP:AddToggle({
	text = "Outline"
})
visualsESP:AddToggle({
	text = "Visible Only",
	flag = "Visible Only ESP",
	callback = cbCHAMS
})
visualsESP:AddToggle({
	text = "Teammates",
	flag = "visualsteam",
	callback = function(L_1362_arg0)
		L_39_ = L_1362_arg0;
		cbCHAMS()
	end
})
visualsESP:AddList({
	text = "Font",
	values = {
		"UI",
		"System",
		"Plex",
		"Monospace"
	}
})
visualsESP:AddList({
	text = "Text Mode",
	values = {
		"Normal",
		"Upper",
		"Lower"
	}
})
visualsMisc = visualsColumn:AddSection"Misc"
visualsMisc:AddToggle({
	text = "Remove Scope",
	callback = function(L_1363_arg0)
		L_32_.PlayerGui.GUI.Crosshairs.Scope.ImageTransparency = L_1363_arg0 and 1 or 0;
		for L_1364_forvar0 = 1, 4 do
			L_32_.PlayerGui.GUI.Crosshairs["Frame" .. L_1364_forvar0].Transparency = L_1363_arg0 and 1 or 0
		end
	end
})
visualsMisc:AddToggle({
	text = "Beams Face Camera"
})
visualsMisc:AddToggle({
	text = "Bullet Tracers"
}):AddColor({
	color = Color3.fromRGB(150, 20, 60),
	trans = 1,
	flag = "tracerColor"
})
visualsMisc:AddToggle({
	text = "Hit Chams"
}):AddColor({
	color = Color3.fromRGB(200, 30, 80),
	flag = "hitchamsColor"
})
visualsMisc:AddToggle({
	text = "Third Person",
	callback = function()
		if library_flags["Third Person"] then
			L_28_:BindToRenderStep("thirdperson", 1, function()
				if L_34_:FindFirstChild("Arms") then
					if workspace.Camera:FindFirstChild("Arms") then
						for L_1365_forvar0, L_1366_forvar1 in next, workspace.Camera.Arms:GetDescendants() do
							if L_1366_forvar1:IsA"BasePart" or L_1366_forvar1:IsA"Part" or L_1366_forvar1:IsA"MeshPart" then
								if L_1366_forvar1.Name == "StatClock" then
									L_1366_forvar1:ClearAllChildren()
								end;
								L_1366_forvar1.Transparency = 1
							end
						end
					end
				end;
				L_32_.CameraMaxZoomDistance = library_flags["tpDistance"]
				L_32_.CameraMinZoomDistance = library_flags["tpDistance"]
			end)
		else
			L_28_:UnbindFromRenderStep("thirdperson")
			for L_1367_forvar0 = 1, 5 do
				wait()
				L_32_.CameraMaxZoomDistance = 0;
				L_32_.CameraMinZoomDistance = 0
			end;
			if L_57_.alive and L_32_.Character:FindFirstChild("EquippedTool") and workspace.Camera:FindFirstChild("Arms") then
				local L_1368_ = L_32_.Character.EquippedTool.Value;
				local L_1369_ = L_24_.Viewmodels:FindFirstChild("v_" .. L_1368_)
				if L_1369_ then
					for L_1370_forvar0, L_1371_forvar1 in next, workspace.Camera.Arms:GetChildren() do
						if L_1371_forvar1:IsA"Part" or L_1371_forvar1:IsA"MeshPart" then
							if L_1369_:FindFirstChild(L_1371_forvar1.Name) and L_1369_[L_1371_forvar1.Name].Transparency ~= 1 and not string.find(L_1371_forvar1.Name, "Arm") then
								L_1371_forvar1.Transparency = L_1369_[L_1371_forvar1.Name].Transparency
							end
						end;
						if string.find(L_1371_forvar1.Name, "Arms") then
							for L_1372_forvar0, L_1373_forvar1 in next, L_1371_forvar1:GetDescendants() do
								if L_1373_forvar1:IsA"Part" then
									L_1373_forvar1.Transparency = 0
								end
							end
						end
					end
				end
			end;
			updateViewModelVisuals()
		end
	end
}):AddBind({
	key = "X",
	flag = "tpBind",
	toggle = true,
	callback = function()
		L_5_.options["Third Person"]:SetState(not L_5_.options["Third Person"].state)
	end
})
visualsMisc:AddSlider({
	text = "Third Person Distance",
	min = 5,
	max = 15,
	flag = "tpDistance"
})
visualsMisc:AddList({
	text = "Tracer Mode",
	values = {
		"Part",
		"Beam"
	},
	value = "Beam"
})
visualsMisc:AddBox({
	text = "Beam Texture",
	skipflag = true,
	value = "446111271"
})
visualsLocal = visualsColumn2:AddSection"Local"
visualsLocal:AddToggle({
	text = "Force Crosshair"
})
visualsLocal:AddToggle({
	text = "Remove UI Elements",
	callback = function(L_1374_arg0)
		if L_1374_arg0 then
			L_28_:BindToRenderStep("uielements", 1, function()
				L_32_.PlayerGui.GUI.UpperInfo.BackgroundTransparency = 0.8;
				L_32_.PlayerGui.GUI.UpperInfo.Timer.BackgroundTransparency = 0.8;
				L_32_.PlayerGui.GUI.UpperInfo.Timer.BorderSizePixel = 1;
				L_32_.PlayerGui.GUI.UpperInfo.T.Visible = false;
				L_32_.PlayerGui.GUI.UpperInfo.CT.Visible = false;
				L_32_.PlayerGui.GUI.UpperInfo.TScore.BorderSizePixel = 0;
				L_32_.PlayerGui.GUI.UpperInfo.CTScore.BorderSizePixel = 0;
				L_32_.PlayerGui.GUI.UpperInfo.Tplus.Visible = false;
				L_32_.PlayerGui.GUI.UpperInfo.CTplus.Visible = false;
				L_32_.PlayerGui.GUI.UpperInfo.BorderSizePixel = 0;
				L_32_.PlayerGui.GUI.Vitals.bk.Visible = false;
				L_32_.PlayerGui.GUI.Vitals.Plus.TextTransparency = 1;
				L_32_.PlayerGui.GUI.Vitals.APlus.ImageTransparency = 1;
				L_32_.PlayerGui.GUI.AmmoGUI.bk.Visible = false;
				L_32_.PlayerGui.GUI.AmmoGUI.DefuseKit.ImageTransparency = 1;
				L_32_.PlayerGui.GUI.Cash.BuyZone.ImageTransparency = 1;
				L_32_.PlayerGui.GUI.Cash.BackgroundTransparency = 0.8;
				for L_1375_forvar0, L_1376_forvar1 in next, L_32_.PlayerGui.GUI.AmmoGUI:GetChildren() do
					if L_1376_forvar1.Name == "bullet" then
						L_1376_forvar1.ImageTransparency = 1
					end
				end
			end)
		else
			L_28_:UnbindFromRenderStep("uielements")
			L_32_.PlayerGui.GUI.UpperInfo.BackgroundTransparency = 0.1;
			L_32_.PlayerGui.GUI.UpperInfo.Timer.BackgroundTransparency = 0.22;
			L_32_.PlayerGui.GUI.UpperInfo.BorderSizePixel = 2;
			L_32_.PlayerGui.GUI.Vitals.bk.Visible = true;
			L_32_.PlayerGui.GUI.Vitals.Plus.TextTransparency = 0;
			L_32_.PlayerGui.GUI.Vitals.APlus.ImageTransparency = 0;
			L_32_.PlayerGui.GUI.AmmoGUI.bk.Visible = true;
			L_32_.PlayerGui.GUI.AmmoGUI.DefuseKit.ImageTransparency = 0.25;
			L_32_.PlayerGui.GUI.Cash.BuyZone.ImageTransparency = 0;
			L_32_.PlayerGui.GUI.Cash.BackgroundTransparency = 0.22;
			L_32_.PlayerGui.GUI.UpperInfo.TScore.BorderSizePixel = 2;
			L_32_.PlayerGui.GUI.UpperInfo.CTScore.BorderSizePixel = 2;
			L_32_.PlayerGui.GUI.UpperInfo.Timer.BorderSizePixel = 2;
			for L_1377_forvar0, L_1378_forvar1 in next, L_32_.PlayerGui.GUI.AmmoGUI:GetChildren() do
				if L_1378_forvar1.Name == "bullet" then
					L_1378_forvar1.ImageTransparency = 0
				end
			end
		end
	end
})
visualsLocal:AddToggle({
	text = "Remove Radio Commands"
})
visualsLocal:AddToggle({
	text = "Remove Flash",
	callback = function(L_1379_arg0)
		L_32_.PlayerGui.Blnd.Blind.Visible = not L_1379_arg0
	end
})
local L_113_ = Drawing.new("Circle")
local L_114_ = Drawing.new("Circle")
L_113_.Color = Color3.new(1, 1, 1)
L_113_.Thickness = 0.05;
L_113_.NumSides = 100;
L_113_.Radius = 100;
L_113_.Visible = false;
L_113_.Filled = false;
L_114_.Color = Color3.new(1, 1, 1)
L_114_.Thickness = 0.05;
L_114_.NumSides = 100;
L_114_.Radius = 100;
L_114_.Visible = false;
L_114_.Filled = false;
function selfChams()
	if library_flags["Self Chams"] and L_32_.Character then
		for L_1380_forvar0, L_1381_forvar1 in next, L_32_.Character:GetDescendants() do
			local L_1382_ = library_flags["selfChamsMaterial"]
			if L_1381_forvar1.Name == "HumanoidRootPart" or L_1381_forvar1.Name == "Head" or L_1381_forvar1.Name == "HeadHB" or string.find(L_1381_forvar1.Name, "C4") and not L_1381_forvar1.Name == "BackC4" or L_1381_forvar1.Name == "Gun" then
				continue;
			end;
			if (L_1381_forvar1:IsA"Accoutrement" or L_1381_forvar1.Name == "BackC4") and library_flags["Remove Hats"] then
				L_1381_forvar1:Destroy()
			end;
			if L_1381_forvar1:IsA"BasePart" then
				L_1381_forvar1.Color = library_flags["selfChamsColor"]
				L_1381_forvar1.Transparency = 1 - L_5_.options["selfChamsColor"].trans;
				L_1381_forvar1.Material = L_1382_
			end;
			if L_1381_forvar1:IsA"SpecialMesh" then
				local L_1383_ = library_flags["selfChamsColor"]
				L_1381_forvar1.VertexColor = Vector3.new(L_1383_.R, L_1383_.G, L_1383_.B)
			end;
			if L_1381_forvar1.Name == "Shirt" then
				L_1381_forvar1.ShirtTemplate = "rbxassetid://0"
			elseif L_1381_forvar1.Name == "Pants" then
				L_1381_forvar1.PantsTemplate = "rbxassetid://0"
			elseif L_1381_forvar1.Name == "Face" then
				L_1381_forvar1.Texture = "rbxassetid://0"
			end;
			if hasProperty(L_1381_forvar1, "TextureID") then
				L_1381_forvar1.TextureID = L_60_[L_1382_]
			end;
			if hasProperty(L_1381_forvar1, "TextureId") then
				L_1381_forvar1.TextureId = L_60_[L_1382_]
			end
		end
	end
end;
visualsLocal:AddToggle({
	text = "Remove Hats",
	callback = selfChams
})
visualsLocal:AddToggle({
	text = "Remove Sleeves",
	callback = updateViewModelVisuals
})
visualsLocal:AddToggle({
	text = "Self Chams",
	callback = selfChams
}):AddColor({
	flag = "selfChamsColor",
	callback = L_5_.options["Self Chams"].callback,
	calltrans = L_5_.options["Self Chams"].callback,
	trans = 1,
	color = Color3.new(1, 1, 1)
})
L_5_.options["Self Chams"]:AddList({
	flag = "selfChamsMaterial",
	callback = L_5_.options["Self Chams"].callback,
	values = {
		"SmoothPlastic",
		"ForceField"
	}
})
visualsLocal:AddToggle({
	text = "Weapon Chams",
	callback = updateViewModelVisuals
}):AddColor({
	flag = "weaponColor",
	trans = 1,
	color = Color3.new(1, 1, 1),
	callback = updateViewModelVisuals,
	calltrans = updateViewModelVisuals
})
L_5_.options["Weapon Chams"]:AddList({
	flag = "weaponMaterial",
	values = {
		"SmoothPlastic",
		"ForceField",
		"Neon",
		"Glass"
	},
	callback = updateViewModelVisuals
})
visualsLocal:AddToggle({
	text = "Arm Chams",
	callback = updateViewModelVisuals
}):AddColor({
	flag = "armColor",
	trans = 1,
	color = Color3.new(1, 1, 1),
	callback = updateViewModelVisuals,
	calltrans = updateViewModelVisuals
})
visualsLocal:AddToggle({
	text = "Fake Lag Chams"
}):AddColor({
	flag = "fakelagColor",
	trans = 1,
	color = Color3.new(1, 0.4, 0.7)
})
L_5_.options["Arm Chams"]:AddList({
	flag = "armMaterial",
	values = {
		"SmoothPlastic",
		"ForceField",
		"Glass"
	},
	callback = updateViewModelVisuals
})
visualsLocal:AddSlider({
	text = "Weapon Reflectance",
	flag = "weaponReflectance",
	max = 100,
	callback = updateViewModelVisuals
})
visualsLocal:AddToggle({
	text = "FOV Changer",
	callback = function(L_1384_arg0)
		if L_1384_arg0 then
			L_28_:BindToRenderStep("fovchanger", 10, function()
				if not L_32_.PlayerGui.GUI.Crosshairs.Scope.Visible or library_flags["Third Person"] then
					L_34_.FieldOfView = library_flags["fovValue"]
				end
			end)
		else
			L_28_:UnbindFromRenderStep("fovchanger")
		end;
		L_34_.FieldOfView = 80
	end
}):AddSlider({
	flag = "fovValue",
	min = 50,
	max = 120,
	value = 80
})
visualsLocal:AddToggle({
	text = "Aspect Ratio"
}):AddSlider({
	flag = "ratioValue",
	min = 0.1,
	max = 1,
	float = 0.01,
	value = 1
})
visualsLocal:AddToggle({
	text = "FOV Circle",
	callback = function()
		L_113_.Position = Vector2.new(L_34_.ViewportSize.X / 2, L_34_.ViewportSize.Y / 2)
		L_114_.Position = Vector2.new(L_34_.ViewportSize.X / 2, L_34_.ViewportSize.Y / 2)
		L_113_.Visible = library_flags["FOV Circle"]
		L_114_.Visible = library_flags["FOV Circle"]
	end
}):AddColor({
	color = Color3.new(1, 1, 1),
	trans = 0.5,
	flag = "circleColor",
	callback = function()
		L_113_.Color = library_flags["circleColor"]
		L_114_.Color = library_flags["silentCircleColor"]
	end,
	calltrans = function()
		L_113_.Transparency = L_5_.options["circleColor"].trans;
		L_114_.Transparency = L_5_.options["silentCircleColor"].trans
	end
})
cba, cbb = L_5_.options["FOV Circle"].callback, L_5_.options["FOV Circle"].calltrans;
L_5_.options["FOV Circle"]:AddColor({
	flag = "silentCircleColor",
	color = Color3.new(1, 1, 0),
	trans = 0.5,
	callback = cba,
	calltrans = cbb
})
L_24_.Particles.Light.Range = 0;
visualsWorld = visualsColumn2:AddSection"World"
visualsWorld:AddToggle({
	text = "Better Shadows",
	callback = function()
		sethiddenproperty(L_29_, "Technology", library_flags["Better Shadows"] and Enum.Technology.Future or Enum.Technology.Compatibility)
	end
})
visualsWorld:AddToggle({
	text = "Gradient"
}):AddColor({
	flag = "gradientColor",
	color = Color3.fromRGB(90, 90, 90)
})
L_5_.options["Gradient"]:AddColor({
	flag = "gradientColor2",
	color = Color3.fromRGB(150, 150, 150)
})
visualsWorld:AddToggle({
	text = "Grenade Area"
}):AddColor({
	flag = "areaColor",
	color = Color3.fromRGB(150, 20, 75)
})
visualsWorld:AddToggle({
	text = "Saturation"
}):AddSlider({
	min = 0,
	max = 100,
	value = 10,
	flag = "saturationValue"
})
visualsWorld:AddToggle({
	text = "Time Changer"
}):AddSlider({
	min = 0,
	max = 48,
	flag = "time"
})
visualsWorld:AddToggle({
	text = "Asus Walls",
	callback = function()
		if library_flags["Asus Walls"] then
			for L_1385_forvar0, L_1386_forvar1 in pairs(workspace.Map.Geometry:GetDescendants()) do
				if L_1386_forvar1:IsA"BasePart" and L_1386_forvar1.Transparency ~= 1 then
					L_1386_forvar1.Transparency = library_flags["asuswalls"] / 100
				end;
				if L_1385_forvar0 % 75 == 75 then
					wait()
				end
			end
		else
			for L_1387_forvar0, L_1388_forvar1 in pairs(workspace.Map.Geometry:GetDescendants()) do
				if L_1388_forvar1:IsA"BasePart" and L_1388_forvar1.Transparency ~= 1 then
					L_1388_forvar1.Transparency = 0
				end;
				if L_1387_forvar0 % 75 == 75 then
					wait()
				end
			end
		end
	end
})
L_5_.options["Asus Walls"]:AddSlider({
	min = 0,
	max = 99,
	flag = "asuswalls",
	callback = L_5_.options["Asus Walls"].callback
})
visualsWorld:AddToggle({
	text = "Skybox Changer",
	callback = updateSkybox
}):AddList({
	max = 6,
	values = {
		"Purple Nebula",
		"Night Sky",
		"Pink Daylight",
		"Morning Glow",
		"Setting Sun",
		"Elegant Morning",
		"Elegant Morning",
		"Neptune",
		"Redshift",
		"Aesthetic Night"
	},
	flag = "skyboxValue",
	callback = updateSkybox
})
visualsViewmodel = visualsColumn2:AddSection"Viewmodel"
visualsViewmodel:AddToggle({
	text = "Enabled",
	flag = "viewmodelEnabled"
})
visualsViewmodel:AddToggle({
	text = "Visualize Silent Angles"
})
visualsViewmodel:AddSlider({
	text = "X",
	min = -25,
	max = 25,
	flag = "viewmodelX"
})
visualsViewmodel:AddSlider({
	text = "Y",
	min = -25,
	max = 25,
	flag = "viewmodelY"
})
visualsViewmodel:AddSlider({
	text = "Z",
	min = -25,
	max = 25,
	flag = "viewmodelZ"
})
visualsViewmodel:AddSlider({
	text = "Roll",
	min = 0,
	max = 360,
	flag = "viewmodelRoll"
})
miscTab = L_5_:AddTab"Misc"
miscColumn = miscTab:AddColumn()
miscColumn2 = miscTab:AddColumn()
miscMain = miscColumn:AddSection"Main"
fakeLagDebounce = false;
jumpbugging = false;
noclipping = false;
surfing = false;
miscMain:AddToggle({
	text = "Hitlogs"
})
miscMain:AddToggle({
	text = "Keybind Indicators",
	callback = function()
		L_87_.Visible = library_flags["Keybind Indicators"]
		while library_flags["Keybind Indicators"] do
			wait()
			pcall(function()
				for L_1393_forvar0, L_1394_forvar1 in next, L_89_:GetChildren() do
					if L_1394_forvar1:IsA"TextLabel" then
						L_1394_forvar1:Destroy()
					end
				end;
				if not L_57_.alive then
					wait(1)
					return
				end;
				local L_1389_ = L_5_.options["fakeduckBind"]
				local L_1390_ = L_5_.options["Triggerbot Keybind"]
				local L_1391_ = Enum.KeyCode[L_1389_.key] or Enum.UserInputType[L_1389_.key]
				local L_1392_ = Enum.KeyCode[L_1390_.key] or Enum.UserInputType[L_1390_.key]
				if L_100_ then
					addBindtext("Aimbot", "hold")
				end;
				if noclipping then
					addBindtext("Noclip", "hold")
				end;
				if jumpbugging then
					addBindtext("Jumpbug", "hold")
				end;
				if L_50_ then
					addBindtext("Edgebug", "hold")
				end;
				if surfing then
					addBindtext("Pixelsurf", "hold")
				end;
				if L_25_:IsKeyDown(L_1392_) and L_57_.trigger then
					addBindtext("Triggerbot", "hold")
				end;
				if L_112_ and library_flags["Fake Duck"] then
					addBindtext("Fake Duck", "hold")
				end;
				if quickpeeking then
					addBindtext("Quickpeek", "hold")
				end;
				if getgenv().hookWS then
					addBindtext("Slow Walk", "hold")
				end;
				if library_flags["Third Person"] then
					addBindtext("Thirdperson", "toggle")
				end;
				L_100_ = false
			end)
		end
	end
})
miscMain:AddToggle({
	text = "Spectator List",
	callback = function()
		L_83_.Visible = library_flags["Spectator List"]
		while library_flags["Spectator List"] do
			wait()
			removeSpectators()
			if L_32_:FindFirstChild("CameraCF") then
				local L_1395_ = L_32_.CameraCF.Value.p;
				for L_1396_forvar0, L_1397_forvar1 in next, L_30_:GetPlayers() do
					if not L_1397_forvar1.Character or L_1397_forvar1.Character and not L_1397_forvar1.Character:FindFirstChild("HumanoidRootPart") then
						if L_1397_forvar1:FindFirstChild("CameraCF") and L_1397_forvar1 ~= L_32_ and L_32_.Character and L_32_.Character.PrimaryPart then
							local L_1398_ = L_1397_forvar1.CameraCF.Value.p;
							if (L_1398_ - L_1395_).magnitude < 20 then
								addSpectator(L_1397_forvar1.Name)
							end
						end
					end
				end
			end;
			wait()
		end
	end
})
local L_115_ = Instance.new("ScreenGui")
local L_116_ = Instance.new("TextLabel")
L_115_.Enabled = false;
L_115_.Parent = game:GetService("CoreGui")
L_116_.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
L_116_.BorderSizePixel = 1;
L_116_.BorderColor3 = Color3.fromRGB(30, 60, 150)
L_116_.Size = UDim2.new(0, 225, 0, 20)
L_116_.Font = Enum.Font.Ubuntu;
L_116_.TextColor3 = Color3.fromRGB(255, 255, 255)
L_116_.TextSize = 14;
L_116_.Position = UDim2.new(1, -229, 0, -30)
L_116_.Parent = L_115_;
miscMain:AddToggle({
	text = "Watermark",
	callback = function()
		L_115_.Enabled = library_flags["Watermark"]
	end
})
miscMain:AddToggle({
	text = "Old Gun Sounds"
})
miscMain:AddToggle({
	text = "Hitsound"
}):AddList({
	flag = "hitsoundValue",
	max = 8,
	values = {
		"Bameware",
		"Bubble",
		"Pick",
		"Pop",
		"Rust",
		"Sans",
		"Fart",
		"Big",
		"Vine",
		"Bruh",
		"Skeet",
		"Neverlose",
		"Fatality",
		"Bonk",
		"Moan",
		"Minecraft"
	}
})
miscMain:AddSlider({
	text = "Hitsound Volume",
	min = 1,
	max = 10,
	float = 0.5
})
local L_117_ = Instance.new("Part")
btCount = 0;
L_117_.Size = Vector3.new(1, 1, 1)
L_117_.CanCollide = false;
L_117_.Anchored = true;
L_117_.Material = "Neon"
L_117_.Name = "btHead"
L_117_.Rotation = Vector3.new(0, 0, 0)
function updateBT()
	L_117_.Color = library_flags["backtrackColor"]
	L_117_.Transparency = 1.01 - L_5_.options["backtrackColor"].trans
end;
miscMain:AddToggle({
	text = "Backtrack",
	callback = function(L_1399_arg0)
		if L_1399_arg0 then
			for L_1400_forvar0, L_1401_forvar1 in next, L_30_:GetPlayers() do
				createPlr(L_1401_forvar1)
			end;
			while library_flags["Backtrack"] do
				local L_1402_, L_1403_ = getNearest(1000, false, false), library_flags["Only Backtrack Nearest"]
				if library_flags["backtrackMode"] == "Characters" then
					wait()
					for L_1404_forvar0, L_1405_forvar1 in next, L_47_ do
						if L_1403_ and L_1405_forvar1 ~= L_1402_ then
							continue;
						end;
						if not L_30_:FindFirstChild(L_1404_forvar0) then
							L_47_[L_1404_forvar0]:Destroy()
							L_47_[L_1404_forvar0] = nil;
							continue;
						end;
						if not L_30_[L_1404_forvar0].Character or L_30_[L_1404_forvar0].Team == L_32_.Team then
							for L_1406_forvar0, L_1407_forvar1 in next, L_1405_forvar1:GetChildren() do
								L_1407_forvar1.Transparency = 1;
								L_1407_forvar1.Position = Vector3.new(0, 0, 0)
							end;
							continue;
						end;
						CreateThread(function()
							local L_1408_ = {}
							for L_1409_forvar0, L_1410_forvar1 in next, L_1405_forvar1:GetChildren() do
								if not L_30_[L_1404_forvar0].Character:FindFirstChild(L_1410_forvar1.Name) then
									L_1410_forvar1.Transparency = 1;
									continue;
								end;
								L_1408_[L_1410_forvar1] = L_30_[L_1404_forvar0].Character[L_1410_forvar1.Name].CFrame;
								L_1410_forvar1.Color = library_flags["backtrackColor"]
								L_1410_forvar1.Transparency = 1.01 - L_5_.options["backtrackColor"].trans
							end;
							wait(library_flags["backtrackLength"] / 175)
							for L_1411_forvar0, L_1412_forvar1 in next, L_1405_forvar1:GetChildren() do
								if not L_1408_[L_1412_forvar1] then
									continue;
								end;
								L_1412_forvar1.CFrame = L_1408_[L_1412_forvar1]
							end
						end)
					end
				else
					L_28_.RenderStepped:Wait()
					L_28_.RenderStepped:Wait()
					local L_1413_;
					if L_1403_ then
						if L_1402_ and teamCheck(L_1402_, L_38_) and alive(L_1402_) then
							L_1413_ = L_117_:Clone()
							local L_1414_, L_1415_ = L_1402_.Character.Head.Position, L_1402_.Character.HumanoidRootPart.Position;
							L_1413_.Position = Vector3.new(L_1415_.X, L_1414_.Y + 0.1, L_1415_.Z)
							L_1413_.Name = "btHead"
							L_1413_.Parent = L_1402_.Character;
							L_31_:AddItem(L_1413_, library_flags["backtrackLength"] / 1000)
						end
					else
						for L_1416_forvar0, L_1417_forvar1 in next, L_30_:GetPlayers() do
							if teamCheck(L_1417_forvar1, L_38_) and alive(L_1417_forvar1) then
								L_1413_ = L_117_:Clone()
								local L_1418_, L_1419_ = L_1417_forvar1.Character.Head.Position, L_1417_forvar1.Character.HumanoidRootPart.Position;
								L_1413_.Position = Vector3.new(L_1419_.X, L_1418_.Y + 0.1, L_1419_.Z)
								L_1413_.Name = "btHead"
								L_1413_.Parent = L_1417_forvar1.Character;
								L_31_:AddItem(L_1413_, library_flags["backtrackLength"] / 1000)
							end
						end
					end
				end
			end;
			for L_1420_forvar0, L_1421_forvar1 in next, L_47_ do
				L_47_[L_1420_forvar0]:Destroy()
				L_47_[L_1420_forvar0] = nil
			end
		end
	end
}):AddColor({
	color = Color3.new(1, 1, 1),
	flag = "backtrackColor",
	trans = 0.5,
	callback = updateBT,
	calltrans = updateBT
})
L_5_.options["Backtrack"]:AddSlider({
	min = 1,
	max = 500,
	flag = "backtrackLength"
})
miscMain:AddList({
	text = "Backtrack Mode",
	values = {
		"Parts",
		"Characters"
	},
	flag = "backtrackMode",
	callback = function(L_1422_arg0)
		for L_1423_forvar0, L_1424_forvar1 in next, L_30_:GetPlayers() do
			createPlr(L_1424_forvar1)
		end;
		if L_1422_arg0 == "Parts" then
			wait(0.2)
			for L_1425_forvar0, L_1426_forvar1 in next, L_47_ do
				L_47_[L_1425_forvar0]:Destroy()
				L_47_[L_1425_forvar0] = nil
			end
		end
	end
})
miscMain:AddToggle({
	text = "Gravity Changer",
	callback = function(L_1427_arg0)
		workspace.Gravity = L_1427_arg0 and library_flags["gravityValue"] or 80
	end
}):AddSlider({
	flag = "gravityValue",
	min = 0,
	max = 160,
	value = 80,
	callback = function(L_1428_arg0)
		workspace.Gravity = library_flags["Gravity Changer"] and L_1428_arg0 or 80
	end
})
miscOK = L_5_:AddWarning({
	type = "ok"
})
miscMain:AddButton({
	text = "Unlock Inventory",
	callback = function()
		if not getgenv().unlockInventory then
			getgenv().unlockInventory = true;
			L_36_.CurrentInventory = L_93_;
			local L_1429_, L_1430_ = L_32_.SkinFolder.TFolder:Clone(), L_32_.SkinFolder.CTFolder:Clone()
			L_32_.SkinFolder.TFolder:Destroy()
			L_32_.SkinFolder.CTFolder:Destroy()
			L_1429_.Parent = L_32_.SkinFolder;
			L_1430_.Parent = L_32_.SkinFolder;
			miscOK.text = "Unlocked all skins, knives and gloves."
			miscOK:Show()
		end
	end
})
miscMovement = miscColumn:AddSection"Movement"
miscMovement:AddToggle({
	text = "No Crouch Cooldown"
})
miscMovement:AddToggle({
	text = "Auto Strafe"
})
last = Vector3.new()
miscMovement:AddToggle({
	text = "Maintain Velocity"
})
miscMovement:AddToggle({
	text = "Bunny Hop",
	callback = function()
	end
})
miscMovement:AddSlider({
	text = "Bunny Hop Speed",
	min = 18,
	max = 500,
	flag = "Speed Value"
})
oldMove = hookfunction(L_45_.moveFunc, LPH_NO_UPVALUES(function(...)
	local L_1431_ = {
		...
	}
	if getgenv().hookWS then
		L_1431_[2] = L_1431_[2] * library_flags["slowwalkSpeed"] / 100
	end;
	return oldMove(unpack(L_1431_))
end))
miscMovement:AddToggle({
	text = "Slow Walk"
}):AddBind({
	key = Enum.KeyCode.LeftShift,
	mode = "hold",
	callback = function(L_1432_arg0)
		if library_flags["Slow Walk"] then
			if not L_1432_arg0 then
				getgenv().hookWS = true
			else
				getgenv().hookWS = false
			end
		else
			getgenv().hookWS = false
		end
	end
})
L_5_.options["Slow Walk"]:AddSlider({
	min = 1,
	max = 100,
	value = 100,
	flag = "slowwalkSpeed"
})
miscMovement:AddList({
	text = "Bunny Hop Method",
	values = {
		"Auto Hop",
		"Velocity",
		"CFrame"
	}
})
miscPlayers = miscColumn2:AddSection"Players"
changing = false;
AliveT = nil;
AgeT = nil;
TeamT = nil;
thirteenT = nil;
miscPlayers:AddList({
	text = "Player",
	flag = "Player List",
	skipflag = true,
	max = 6,
	values = {},
	callback = function(L_1433_arg0)
		changing = true;
		if L_52_[L_1433_arg0] and L_30_[L_1433_arg0] then
			local L_1434_ = L_30_[L_1433_arg0]
			local L_1435_ = "false"
			if L_1434_.Character and L_1434_.Character.PrimaryPart then
				L_1435_ = "true"
			end;
			thirteenT.main.Text = "<13: ..."
			TeamT.main.Text = "Team: " .. tostring(L_1434_.Team)
			AliveT.main.Text = "Alive: " .. L_1435_;
			AgeT.main.Text = "Account Age: " .. tostring(L_1434_.AccountAge)
			L_5_.options["Loop Kill"]:SetState(L_52_[L_1433_arg0].LoopKill)
			L_5_.options["Target ESP"]:SetState(L_52_[L_1433_arg0].TargetESP)
			L_5_.options["Ragebot Whitelist"]:SetState(L_52_[L_1433_arg0].rageWL)
			L_5_.options["Ragebot Priority"]:SetState(L_52_[L_1433_arg0].ragePL)
			L_5_.options["Prevent Votekick"]:SetState(L_52_[L_1433_arg0].novotekick)
			spawn(function()
				local L_1436_ = L_24_.Functions.Filter:InvokeServer("4", L_1434_)
				local L_1437_ = L_1436_ == "#" and "true" or "false"
				thirteenT.main.Text = "<13: " .. L_1437_
			end)
		end;
		changing = false
	end
})
miscPlayers:AddToggle({
	text = "Loop Kill",
	skipflag = true,
	callback = function(L_1438_arg0)
		local L_1439_ = library_flags["Player List"]
		if not changing and L_52_[L_1439_] then
			L_52_[L_1439_].LoopKill = L_1438_arg0
		end
	end
})
miscPlayers:AddToggle({
	text = "Target ESP",
	skipflag = true,
	callback = function(L_1440_arg0)
		local L_1441_ = library_flags["Player List"]
		if not changing and L_52_[L_1441_] then
			L_52_[L_1441_].TargetESP = L_1440_arg0;
			cbCHAMS()
		end
	end
})
miscPlayers:AddToggle({
	text = "Ragebot Whitelist",
	skipflag = true,
	callback = function(L_1442_arg0)
		local L_1443_ = library_flags["Player List"]
		if not changing and L_52_[L_1443_] then
			L_52_[L_1443_].rageWL = L_1442_arg0
		end
	end
})
miscPlayers:AddToggle({
	text = "Ragebot Priority",
	skipflag = true,
	callback = function(L_1444_arg0)
		local L_1445_ = library_flags["Player List"]
		if not changing and L_52_[L_1445_] then
			L_52_[L_1445_].ragePL = L_1444_arg0
		end
	end
})
miscPlayers:AddToggle({
	text = "Prevent Votekick",
	skipflag = true,
	callback = function(L_1446_arg0)
		local L_1447_ = library_flags["Player List"]
		if not changing and L_52_[L_1447_] then
			L_52_[L_1447_].novotekick = L_1446_arg0
		end
	end
})
miscPlayers:AddColor({
	text = "Target Box Color",
	color = Color3.new(0.8, 0.8, 0)
})
miscPlayers:AddColor({
	text = "Target Name Color",
	color = Color3.new(0.8, 0.8, 0.2)
})
miscPlayers:AddColor({
	text = "Target Weapon Color",
	color = Color3.new(0.8, 0.8, 0.2)
})
miscPlayers:AddColor({
	text = "Target Tracer Color",
	color = Color3.new(0.8, 0.8, 0.2)
})
miscPlayers:AddColor({
	text = "Target Health Bar Color",
	color = Color3.new(0.2, 0.35, 0.1)
})
miscPlayers:AddColor({
	text = "Target Chams Color",
	color = Color3.new(0.65, 0.65, 0.65),
	trans = 1,
	callback = L_5_.options["Chams"].callback,
	calltrans = L_5_.options["Chams"].callback
})
L_5_.options["Target Chams Color"]:AddColor({
	flag = "targetchams2",
	color = Color3.new(1, 1, 1),
	trans = 1,
	callback = L_5_.options["Chams"].callback,
	calltrans = L_5_.options["Chams"].callback
})
thirteenT = miscPlayers:AddLabel("<13:")
TeamT = miscPlayers:AddLabel("Team:")
AliveT = miscPlayers:AddLabel("Alive:")
AgeT = miscPlayers:AddLabel("Account Age:")
blindParts = {
	"FakeHead",
	"Gun",
	"UpperTorso",
	"LowerTorso",
	"LeftUpperArm",
	"RightUpperArm"
}
spawn(function()
	while wait(1) do
		cbCHAMS()
		for L_1448_forvar0, L_1449_forvar1 in next, L_5_.options["Player List"].values do
			if not L_30_:FindFirstChild(L_1449_forvar1) then
				L_5_.options["Player List"]:RemoveValue(L_1449_forvar1)
				if L_52_[L_1449_forvar1] then
					L_52_[L_1449_forvar1] = nil
				end
			end
		end;
		for L_1450_forvar0, L_1451_forvar1 in next, L_30_:GetPlayers() do
			if not table.find(L_5_.options["Player List"].values, L_1451_forvar1.Name) and L_1451_forvar1.Name ~= L_32_.Name then
				if L_1451_forvar1.Name == L_32_.Name then
					continue;
				end;
				L_52_[L_1451_forvar1.Name] = {
					name = plrName,
					LoopKill = false,
					TargetESP = false,
					rageWL = false,
					ragePL = false,
					novotekick = false
				}
				L_5_.options["Player List"]:AddValue(L_1451_forvar1.Name)
			end
		end;
		if library_flags["Anti Votekick"] then
			local L_1452_ = {}
			for L_1453_forvar0, L_1454_forvar1 in next, L_30_:GetPlayers() do
				if L_1454_forvar1 ~= L_32_ and not L_52_[L_1454_forvar1.Name].novotekick then
					table.insert(L_1452_, L_1454_forvar1)
				end
			end;
			if # L_1452_ > 1 then
				local L_1455_ = L_1452_[math.random(1, # L_1452_)]
				if L_1455_ then
					L_41_:FireServer(L_1455_.Name)
				end
			end
		end
	end
end)
local L_118_ = miscColumn2:AddSection"Other"
L_118_:AddToggle({
	text = "Remove Recoil"
})
L_118_:AddToggle({
	text = "Remove Spread",
	callback = function()
		if library_flags["Remove Spread"] then
			ApplyValue(true, "Spread", L_77_, 0)
		else
			ApplyValue(false, "Spread", L_77_, 0)
		end
	end
})
local L_119_ = {
	Standard = {
		"cipex! cipex! cipex! cipex! cipex! cipex! cipex! cipex! cipex! cipex! cipex!",
		"cipex.solutions",
		"$$$",
		"1 sit nn 1 sit nn 1 sit nn 1 sit nn 1 sit nn",
		"who? who? who? who? who? who? who? who? who? who? who?"
	},
	Emojis = {
		"ðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒðŸ˜ƒ",
		"ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€ðŸ˜€",
		"ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­ðŸ˜­",
		"ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘ðŸ˜‘",
		"ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼ðŸ˜¼",
		"ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘ðŸ‘",
		"ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡ðŸ˜¡"
	}
}
L_118_:AddToggle({
	text = "Uncensor Chat"
})
L_118_:AddToggle({
	text = "Chat Spammer",
	callback = function()
		L_55_ = 0
	end
}):AddList({
	values = {
		"Standard",
		"Emojis",
		"Custom"
	},
	flag = "chatMode"
})
miscMeme = miscColumn:AddSection"Meme Features"
local L_120_ = L_34_.ViewportSize.Y - 50;
local L_121_ = L_120_;
local L_122_ = {}
local L_123_ = Drawing.new("Text")
L_123_.Center = true;
L_123_.Outline = true;
L_123_.Color = Color3.new(1, 1, 1)
L_123_.Font = 3;
L_123_.Size = 20;
L_123_.Visible = false;
oldWalk = L_36_.walkupdate;
oldSpeedUpdate = L_36_.speedupdate;
miscMeme:AddToggle({
	text = "Flashlight",
	callback = function()
		if not library_flags["Flashlight"] and L_57_.alive and L_32_.Character.Head.SpotLight.Enabled then
			game.ReplicatedStorage.Events.Flashlight:FireServer()
		end
	end
})
miscMeme:AddToggle({
	text = "Drawing Enabled",
	callback = function()
		while library_flags["Drawing Enabled"] do
			wait()
			L_123_.Position = Vector2.new(L_34_.ViewportSize.X / 2, L_34_.ViewportSize.Y - 40)
			L_120_ = L_34_.ViewportSize.Y - 50;
			local L_1456_ = 0;
			if L_57_.alive then
				L_1456_ = math.floor(math.clamp((L_32_.Character.HumanoidRootPart.Velocity * Vector3.new(1, 0, 1)).magnitude * 14.85, 0, 400))
			end;
			if library_flags["Velocity Indicator"] then
				L_123_.Visible = true;
				L_123_.Text = tostring(L_1456_)
			else
				L_123_.Visible = false
			end;
			if library_flags["Velocity Graph"] then
				local L_1457_ = Drawing.new("Line")
				table.insert(L_122_, L_1457_)
				L_1457_.From = Vector2.new(L_34_.ViewportSize.X / 2 + 110 - 2, L_121_)
				L_1457_.To = Vector2.new(L_34_.ViewportSize.X / 2 + 110, L_120_ - L_1456_ / 6.5)
				L_1457_.Thickness = 1;
				L_1457_.Transparency = 1;
				L_1457_.Color = library_flags["graphColor"]
				L_1457_.Visible = true;
				if # L_122_ > 1 then
					if # L_122_ > 110 then
						L_122_[1]:Remove()
						table.remove(L_122_, 1)
						for L_1459_forvar0 = 2, 8 do
							L_122_[L_1459_forvar0].Transparency = L_1459_forvar0 / 10
						end;
						local L_1458_ = 0;
						for L_1460_forvar0 = 110, 104, -1 do
							L_1458_ = L_1458_ + 1;
							L_122_[L_1460_forvar0].Transparency = L_1458_ / 10
						end;
						L_122_[103].Transparency = 1
					end;
					for L_1461_forvar0, L_1462_forvar1 in ipairs(L_122_) do
						L_1462_forvar1.To = L_1462_forvar1.To - Vector2.new(2, 0)
						L_1462_forvar1.From = L_1462_forvar1.From - Vector2.new(2, 0)
					end
				end;
				L_121_ = L_1457_.To.Y
			else
				for L_1463_forvar0, L_1464_forvar1 in ipairs(L_122_) do
					L_1464_forvar1:Remove()
					table.remove(L_122_, L_1463_forvar0)
				end
			end
		end;
		L_123_.Visible = false;
		for L_1465_forvar0, L_1466_forvar1 in ipairs(L_122_) do
			L_1466_forvar1:Remove()
			table.remove(L_122_, L_1465_forvar0)
		end
	end
})
spawn(function()
	while wait(0.2) do
		if not library_flags["Drawing Enabled"] or not library_flags["Velocity Graph"] then
			for L_1467_forvar0, L_1468_forvar1 in ipairs(L_122_) do
				L_1468_forvar1:Remove()
				table.remove(L_122_, L_1467_forvar0)
			end
		end
	end
end)
miscMeme:AddToggle({
	text = "Velocity Indicator"
})
miscMeme:AddToggle({
	text = "Velocity Graph"
}):AddColor({
	color = Color3.new(1, 1, 1),
	flag = "graphColor"
})
edgebugDebounce = false;
strafedir = Vector3.new()
miscMeme:AddToggle({
	text = "Edgebug"
}):AddBind({
	key = Enum.KeyCode.E,
	mode = "hold",
	callback = function(L_1469_arg0)
		if library_flags["Edgebug"] and not L_1469_arg0 then
			L_50_ = true;
			if not L_57_.alive then
				return
			end;
			local L_1470_ = L_32_.Character.HumanoidRootPart;
			if not edgebugDebounce and L_32_.Character.Humanoid:GetState() == Enum.HumanoidStateType.Landed then
				L_36_.walkupdate = oldWalk;
				L_36_.speedupdate = oldSpeedUpdate;
				edgebugDebounce = true;
				getgenv().hookJP = 0;
				wait()
				local L_1471_ = L_32_.Character.HumanoidRootPart.Velocity;
				L_32_.Character.HumanoidRootPart.Velocity = Vector3.new(L_1471_.X * 1.8, -7, L_1471_.Z * 1.8)
				local L_1472_ = L_32_.Character.HumanoidRootPart.Velocity;
				local L_1473_ = library_flags["Override Game Movement"] and (strafedir - L_32_.Character.HumanoidRootPart.Position).unit * L_32_.Character.Humanoid.WalkSpeed or Vector3.new()
				for L_1474_forvar0 = 1, 4 do
					wait()
					L_32_.Character.HumanoidRootPart.Velocity = L_1472_ + L_1473_ - Vector3.new(0, 2, 0)
				end;
				wait()
				L_32_.Character.HumanoidRootPart.Velocity = L_32_.Character.HumanoidRootPart.Velocity * Vector3.new(1.8, 1, 1.8)
				getgenv().hookJP = nil;
				delay(0.2, function()
					edgebugDebounce = false
				end)
			end
		else
			L_50_ = false;
			getgenv().hookJP = nil
		end
	end
})
local L_124_ = {
	CFrame.new(1, 0, 0),
	CFrame.new(-1, 0, 0)
}
local L_125_ = Instance.new("BodyVelocity")
function isTouchingWall()
	local L_1475_ = L_32_.Character.HumanoidRootPart;
	for L_1476_forvar0, L_1477_forvar1 in next, L_124_ do
		local L_1478_ = (L_1475_.CFrame * L_1477_forvar1).p;
		local L_1479_ = Ray.new(L_1475_.CFrame.p, (L_1478_ - L_1475_.CFrame.p).unit * 1.8)
		local L_1480_, L_1481_ = workspace:FindPartOnRayWithIgnoreList(L_1479_, {
			L_34_,
			L_32_.Character,
			workspace.Ray_Ignore,
			workspace.Map:WaitForChild("Clips"),
			workspace.Map:WaitForChild("SpawnPoints")
		})
		if L_1480_ then
			return true
		end
	end;
	return false
end;
miscMeme:AddToggle({
	text = "Pixelsurf"
}):AddBind({
	key = Enum.KeyCode.F,
	mode = "hold",
	callback = function(L_1482_arg0)
		if L_125_ == nil then
			L_125_ = Instance.new("BodyVelocity")
		end;
		if library_flags["Pixelsurf"] and not L_1482_arg0 then
			if not L_57_.alive then
				return
			end;
			local L_1483_ = L_32_.Character.HumanoidRootPart;
			surfing = true;
			if isTouchingWall() then
				L_125_.MaxForce = Vector3.new(1500, 1500, 1500)
				L_125_.Velocity = Vector3.new()
				L_125_.Parent = L_32_.Character.HumanoidRootPart
			else
				L_125_.MaxForce = Vector3.new(0, 0, 0)
				L_125_.Parent = nil
			end
		else
			surfing = false;
			L_125_.MaxForce = Vector3.new(0, 0, 0)
			L_125_.Parent = nil
		end
	end
})
miscMeme:AddToggle({
	text = "Jumpbug"
}):AddBind({
	key = Enum.UserInputType.MouseButton3,
	mode = "hold",
	callback = function(L_1484_arg0)
		if library_flags["Jumpbug"] and not L_1484_arg0 then
			getgenv().hookJP = L_5_.flags["jbheight"]
			jumpbugging = true
		else
			getgenv().hookJP = 2.5;
			jumpbugging = false
		end
	end
})
miscMeme:AddToggle({
	text = "Noclip"
}):AddBind({
	key = Enum.KeyCode.V,
	mode = "hold",
	callback = function(L_1485_arg0)
		if not L_57_.alive or not library_flags["Noclip"] then
			noclipping = false;
			return
		end;
		noclipping = not L_1485_arg0
	end
})
miscMeme:AddToggle({
	text = "Airstuck",
	callback = function()
		if L_5_.flags["Airstuck"] and L_57_.alive then
			L_32_.Character.HumanoidRootPart.Anchored = false
		end
	end
}):AddBind({
	key = Enum.KeyCode.C,
	mode = "hold",
	callback = function(L_1486_arg0)
		if L_5_.flags["Airstuck"] and L_57_.alive then
			L_32_.Character.HumanoidRootPart.Anchored = not L_1486_arg0;
			L_32_.Character.UpperTorso.Velocity = L_1486_arg0 and L_32_.Character.UpperTorso.Velocity or Vector3.new()
			L_32_.Character.HumanoidRootPart.Velocity = L_1486_arg0 and L_32_.Character.HumanoidRootPart.Velocity or Vector3.new()
		end
	end
})
miscMeme:AddSlider({
	text = "Jumpbug Height",
	min = 2.5,
	max = 4,
	float = 0.25,
	flag = "jbheight"
})
exploitTab = L_5_:AddTab"Exploits"
exploitColumn = exploitTab:AddColumn()
exploitMain = exploitColumn:AddSection"Main"
oldcash = L_32_.Cash.Value;
loadingCFG = false;
exploitMain:AddToggle({
	text = "Infinite Cash",
	callback = function()
		if library_flags["Infinite Cash"] then
			oldcash = L_32_.Cash.Value;
			while library_flags["Infinite Cash"] do
				wait()
				L_32_.Cash.Value = 16000
			end
		else
			if loadingCFG then
				return
			end;
			for L_1487_forvar0 = 1, 5 do
				wait()
				L_32_.Cash.Value = oldcash
			end
		end
	end
})
exploitMain:AddToggle({
	text = "Infinite Ammo",
	callback = function()
		pcall(function()
			if not library_flags["Infinite Ammo"] and L_36_ and L_36_.gun and L_36_.gun:FindFirstChild("Ammo") and L_36_.ammocount then
				if loadingCFG then
					return
				end;
				L_36_.ammocount = L_36_.gun.Ammo.Value;
				if L_36_.ammocount2 then
					L_36_.ammocount2 = 0
				end
			end
		end)
	end
})
exploitMain:AddToggle({
	text = "Instant Reload"
})
exploitMain:AddToggle({
	text = "Double Tap"
})
exploitMain:AddToggle({
	text = "Force Headshot"
})
exploitMain:AddToggle({
	text = "No Fall Damage"
})
exploitMain:AddToggle({
	text = "No Fire Damage"
})
exploitMain:AddToggle({
	text = "Evade Bullets"
})
exploitMain:AddToggle({
	text = "Ping Spoof"
})
exploitMain:AddToggle({
	text = "Anti Votekick"
})
exploitMain:AddToggle({
	text = "Fake Lag",
	callback = function()
		L_26_:SetOutgoingKBPSLimit(0)
		while library_flags["Fake Lag"] do
			wait(library_flags["fakelag"])
			fakeLagDebounce = not fakeLagDebounce;
			L_26_:SetOutgoingKBPSLimit(fakeLagDebounce and 1 or 0)
			if not fakeLagDebounce and library_flags["Third Person"] and library_flags["Fake Lag Chams"] then
				hitChams(L_32_, library_flags["fakelagColor"], 1 - L_5_.options["fakelagColor"].trans, library_flags["fakelag"] * 2)
			end
		end;
		L_26_:SetOutgoingKBPSLimit(0)
	end
}):AddSlider({
	min = 0.05,
	max = 1,
	float = 0.05,
	flag = "fakelag",
	value = 0.25
})
exploitMod = exploitColumn:AddSection"Gun mod"
exploitMod:AddToggle({
	text = "Damage Modifier",
	callback = function()
		if library_flags["Damage Modifier"] then
			getgenv().damagemod = library_flags["modvalue"]
		else
			getgenv().damagemod = 1
		end
	end
}):AddSlider({
	min = 1,
	max = 5,
	float = 0.01,
	flag = "modvalue",
	value = 1,
	callback = L_5_.options["Damage Modifier"].callback
})
exploitMod:AddToggle({
	text = "Minimum Damage"
}):AddSlider({
	min = 0,
	max = 1,
	float = 0.01,
	flag = "minDamage",
	value = 1
})
exploitMod:AddSlider({
	text = "Autowall Modifier",
	min = 1,
	max = 2,
	float = 0.1,
	flag = "awallMod",
	value = 1
})
local L_126_ = L_5_:AddTab("Settings", 100)
local L_127_ = L_126_:AddColumn()
local L_128_ = L_126_:AddColumn()
local L_129_ = L_127_:AddSection"Menu"
L_129_:AddBind({
	text = "Open / Close",
	flag = "UI Toggle",
	nomouse = true,
	key = "Delete",
	callback = function()
		L_5_:Close()
	end
})
L_129_:AddColor({
	text = "Accent Color",
	flag = "Menu Accent Color",
	color = Color3.fromRGB(30, 60, 150),
	callback = function(L_1488_arg0)
		L_83_.BorderColor3 = L_1488_arg0;
		L_116_.BorderColor3 = L_1488_arg0;
		L_87_.BorderColor3 = L_1488_arg0;
		if L_5_.currentTab then
			L_5_.currentTab.button.TextColor3 = L_1488_arg0
		end;
		for L_1489_forvar0, L_1490_forvar1 in next, L_5_.theme do
			L_1490_forvar1[L_1490_forvar1.ClassName == "TextLabel" and "TextColor3" or L_1490_forvar1.ClassName == "ImageLabel" and "ImageColor3" or "BackgroundColor3"] = L_1488_arg0
		end
	end
})
local L_130_ = {
	["Floral"] = 5553946656,
	["Flowers"] = 6071575925,
	["Circles"] = 6071579801,
	["Hearts"] = 6073763717
}
L_129_:AddList({
	text = "Background",
	flag = "UI Background",
	values = {
		"Floral",
		"Flowers",
		"Circles",
		"Hearts"
	},
	callback = function(L_1491_arg0)
		if L_130_[L_1491_arg0] then
			L_5_.main.Image = "rbxassetid://" .. L_130_[L_1491_arg0]
		end
	end
}):AddColor({
	flag = "Menu Background Color",
	color = Color3.new(),
	callback = function(L_1492_arg0)
		L_5_.main.ImageColor3 = L_1492_arg0
	end,
	trans = 1,
	calltrans = function(L_1493_arg0)
		L_5_.main.ImageTransparency = 1 - L_1493_arg0
	end
})
L_129_:AddSlider({
	text = "Tile Size",
	value = 90,
	min = 50,
	max = 500,
	callback = function(L_1494_arg0)
		L_5_.main.TileSize = UDim2.new(0, L_1494_arg0, 0, L_1494_arg0)
	end
})
local L_131_ = L_127_:AddSection"Debug"
L_131_:AddToggle({
	text = "Only Backtrack Nearest"
})
L_131_:AddToggle({
	text = "Show Prediction Position"
})
L_131_:AddToggle({
	text = "Slower Ragebot"
})
local L_132_ = L_128_:AddSection"Configs"
L_132_:AddBox({
	text = "Config Name",
	skipflag = true
})
local L_133_ = L_5_:AddWarning({
	type = "confirm"
})
L_132_:AddList({
	text = "Configs",
	skipflag = true,
	value = "",
	flag = "Config List",
	values = L_5_:GetConfigs()
})
L_132_:AddButton({
	text = "Create",
	callback = function()
		L_5_:GetConfigs()
		writefile(L_5_.foldername .. "/" .. library_flags["Config Name"] .. L_5_.fileext, "{}")
		L_5_.options["Config List"]:AddValue(library_flags["Config Name"])
	end
})
L_132_:AddButton({
	text = "Save",
	callback = function()
		local L_1495_, L_1496_, L_1497_ = L_5_.round(library_flags["Menu Accent Color"])
		L_133_.text = "Are you sure you want to save the current settings to config <font color='rgb(" .. L_1495_ .. "," .. L_1496_ .. "," .. L_1497_ .. ")'>" .. library_flags["Config List"] .. "</font>?"
		if L_133_:Show() then
			L_5_:SaveConfig(library_flags["Config List"])
		end
	end
})
L_132_:AddButton({
	text = "Load",
	callback = function()
		local L_1498_, L_1499_, L_1500_ = L_5_.round(library_flags["Menu Accent Color"])
		L_133_.text = "Are you sure you want to load config <font color='rgb(" .. L_1498_ .. "," .. L_1499_ .. "," .. L_1500_ .. ")'>" .. library_flags["Config List"] .. "</font>?"
		if L_133_:Show() then
			L_5_.options["Loop Kill"]:SetState(false)
			L_5_.options["Target ESP"]:SetState(false)
			L_5_.options["Ragebot Whitelist"]:SetState(false)
			L_5_.options["Ragebot Priority"]:SetState(false)
			L_5_:LoadConfig(library_flags["Config List"])
		end
	end
})
L_132_:AddButton({
	text = "Delete",
	callback = function()
		local L_1501_, L_1502_, L_1503_ = L_5_.round(library_flags["Menu Accent Color"])
		L_133_.text = "Are you sure you want to delete config <font color='rgb(" .. L_1501_ .. "," .. L_1502_ .. "," .. L_1503_ .. ")'>" .. library_flags["Config List"] .. "</font>?"
		if L_133_:Show() then
			local L_1504_ = library_flags["Config List"]
			if table.find(L_5_:GetConfigs(), L_1504_) and isfile(L_5_.foldername .. "/" .. L_1504_ .. L_5_.fileext) then
				L_5_.options["Config List"]:RemoveValue(L_1504_)
				delfile(L_5_.foldername .. "/" .. L_1504_ .. L_5_.fileext)
			end
		end
	end
})
for L_1505_forvar0, L_1506_forvar1 in next, L_24_.Viewmodels:GetDescendants() do
	if L_1506_forvar1.Name == "HumanoidRootPart" and L_1506_forvar1:IsA("BasePart") then
		L_1506_forvar1.Transparency = 1
	end
end;
local L_134_ = L_127_:AddSection"Skin"
local L_135_ = L_24_.Viewmodels:Clone()
L_135_.Name = "Viewmodel_Save"
L_135_.Parent = L_24_;
local L_136_, L_137_ = {}, {}
if not isfile("cipex_configs/custommodels.txt") then
	writefile("cipex_configs/custommodels.txt", [[
[
{"modelid":"rbxassetid://6476897690","weaponname":"Karambit","modelname":"Old Karambit"},
{"modelid":"rbxassetid://6422093888","weaponname":"Butterfly Knife","modelname":"Old Butterfly Knife"},
{"modelid":"rbxassetid://6477596645","weaponname":"Gut Knife","modelname":"Old Gut Knife"},
{"modelid":"rbxassetid://6421375318","weaponname":"defaultknife","modelname":"Flip Knife"},
{"modelid":"rbxassetid://6476945399","weaponname":"defaultknife","modelname":"Sword"},
{"modelid":"rbxassetid://6477297801","weaponname":"defaultknife","modelname":"Energy Blade"},
{"modelid":"rbxassetid://6478215819","weaponname":"defaultknife","modelname":"Pickaxe"},
{"modelid":"rbxassetid://6477284418","weaponname":"AWP","modelname":"Railgun"},
{"modelid":"rbxassetid://6476965169","weaponname":"AWP","modelname":"Pulse Musket"},
{"modelid":"rbxassetid://6477308219","weaponname":"AWP","modelname":"Barett"},
{"modelid":"rbxassetid://6477587469","weaponname":"Scout","modelname":"M1 Garand"},
{"modelid":"rbxassetid://6477313539","weaponname":"Glock","modelname":"Soul Pistol"},
{"modelid":"rbxassetid://6481976224","weaponname":"USP","modelname":"Silenced Pistol"}
]
	]])
end;
local L_138_, L_139_ = pcall(function()
	local L_1507_ = readfile("cipex_configs/custommodels.txt")
	L_136_ = game:service("HttpService"):JSONDecode(L_1507_)
	L_137_ = {}
	for L_1508_forvar0, L_1509_forvar1 in next, L_136_ do
		table.insert(L_137_, L_1509_forvar1.modelname)
	end
end)
if not L_138_ then
	warn("[cipex] could not load custom models! reason: " .. L_139_)
end;
function equipCustomModel(L_1510_arg0)
	for L_1511_forvar0, L_1512_forvar1 in next, L_136_ do
		if L_1512_forvar1.modelname == L_1510_arg0 then
			if L_1512_forvar1.weaponname == "defaultknife" then
				for L_1513_forvar0 = 1, 2 do
					local L_1514_ = L_1513_forvar0 == 1 and "T" or "CT"
					local L_1515_ = game:GetObjects(L_1512_forvar1.modelid)[1]
					L_1515_.Name = "v_" .. L_1514_ .. " Knife"
					L_24_.Viewmodels["v_" .. L_1514_ .. " Knife"]:Destroy()
					L_1515_.Parent = L_24_.Viewmodels;
					L_1515_.HumanoidRootPart.Transparency = 1;
					if not L_1515_:FindFirstChild("stab") then
						local L_1516_ = L_1515_.fire:Clone()
						L_1516_.Parent = L_1515_;
						L_1516_.Name = "stab"
					end;
					if L_1515_:FindFirstChild("AIM") then
						L_1515_.AIM:Destroy()
					end;
					table.insert(L_91_, L_1514_ .. " Knife")
				end
			else
				local L_1517_ = game:GetObjects(L_1512_forvar1.modelid)[1]
				L_1517_.Name = "v_" .. L_1512_forvar1.weaponname;
				L_24_.Viewmodels["v_" .. L_1512_forvar1.weaponname]:Destroy()
				L_1517_.Parent = L_24_.Viewmodels;
				L_1517_.HumanoidRootPart.Transparency = 1;
				table.insert(L_91_, L_1512_forvar1.weaponname)
			end;
			table.insert(L_92_, L_1510_arg0)
		end
	end
end;
custommodeltextthingy = nil;
L_134_:AddList({
	text = "Custom Models",
	values = L_137_,
	max = 8,
	callback = function(L_1518_arg0)
		custommodeltextthingy.main.TextSize = 14;
		for L_1519_forvar0, L_1520_forvar1 in next, L_136_ do
			if L_1520_forvar1.modelname == L_1518_arg0 then
				custommodeltextthingy.main.Text = "Custom model for: " .. L_1520_forvar1.weaponname
			end
		end
	end
})
L_134_:AddButton({
	text = "Apply Custom Model",
	callback = function()
		equipCustomModel(library_flags["Custom Models"])
	end
})
L_134_:AddButton({
	text = "Revert All Custom Models",
	callback = function()
		L_24_.Viewmodels:Destroy()
		local L_1521_ = L_135_:Clone()
		L_1521_.Name = "Viewmodels"
		L_1521_.Parent = L_24_;
		L_91_ = {}
		L_92_ = {}
	end
})
L_134_:AddButton({
	text = "Refresh Custom Models",
	callback = function()
		local L_1522_ = readfile("cipex_configs/custommodels.txt")
		L_136_ = game:service("HttpService"):JSONDecode(L_1522_)
		L_137_ = {}
		for L_1523_forvar0, L_1524_forvar1 in next, L_136_ do
			table.insert(L_137_, L_1524_forvar1.modelname)
		end;
		for L_1525_forvar0, L_1526_forvar1 in next, L_137_ do
			if not table.find(L_5_.options["Custom Models"].values, L_1526_forvar1) then
				L_5_.options["Custom Models"]:AddValue(L_1526_forvar1)
			end
		end;
		for L_1527_forvar0, L_1528_forvar1 in next, L_5_.options["Custom Models"].values do
			if not table.find(L_137_, L_1528_forvar1) then
				L_5_.options["Custom Models"]:RemoveValue(L_1528_forvar1)
			end
		end
	end
})
custommodeltextthingy = L_134_:AddLabel("Custom model for: ---")
L_134_:AddButton({
	text = "Save Equipped Skins",
	callback = function()
		L_133_.text = "Are you sure you want to save your current skins?"
		if L_133_:Show() then
			if isfile("cipex_configs/skins.txt") then
				local L_1530_ = game:GetService"HttpService":JSONDecode(readfile("cipex_configs/skins.txt"))
				if L_1530_.Knife and getgenv().lastKnife == "" and L_1530_.Knife ~= "" then
					getgenv().lastKnife = L_1530_.Knife
				end;
				if L_1530_.Glove and getgenv().lastGlove == "" and L_1530_.Glove ~= "" then
					getgenv().lastGlove = L_1530_.Glove
				end
			end;
			local L_1529_ = {
				["CTFolder"] = {},
				["TFolder"] = {},
				["Knife"] = tostring(getgenv().lastKnife),
				["Glove"] = tostring(getgenv().lastGlove),
				["Models"] = game:GetService"HttpService":JSONEncode(L_92_)
			}
			for L_1531_forvar0, L_1532_forvar1 in next, L_32_.SkinFolder.CTFolder:GetChildren() do
				L_1529_.CTFolder[L_1532_forvar1.Name] = L_1532_forvar1.Value
			end;
			for L_1533_forvar0, L_1534_forvar1 in next, L_32_.SkinFolder.TFolder:GetChildren() do
				L_1529_.TFolder[L_1534_forvar1.Name] = L_1534_forvar1.Value
			end;
			print(game:GetService"HttpService":JSONEncode(L_1529_))
			writefile("cipex_configs/skins.txt", game:GetService"HttpService":JSONEncode(L_1529_))
		end
	end
})
L_134_:AddButton({
	text = "Load Saved Skins",
	callback = function()
		L_133_.text = "Are you sure you want to load your saved skins?"
		if L_133_:Show() then
			if isfile("cipex_configs/skins.txt") then
				local L_1535_ = game:GetService"HttpService":JSONDecode(readfile("cipex_configs/skins.txt"))
				for L_1536_forvar0, L_1537_forvar1 in next, L_1535_.TFolder do
					local L_1538_ = {
						[1] = "EquipItem",
						[2] = "T",
						[3] = L_1536_forvar0,
						[4] = {
							[1] = L_1536_forvar0 .. "_" .. L_1537_forvar1
						}
					}
					L_23_:FireServer(L_1538_)
				end;
				for L_1539_forvar0, L_1540_forvar1 in next, L_1535_.CTFolder do
					local L_1541_ = {
						[1] = "EquipItem",
						[2] = "CT",
						[3] = L_1539_forvar0,
						[4] = {
							[1] = L_1539_forvar0 .. "_" .. L_1540_forvar1
						}
					}
					L_23_:FireServer(L_1541_)
				end;
				for L_1542_forvar0, L_1543_forvar1 in pairs(L_36_.CurrentInventory) do
					pcall(function()
						local L_1544_ = L_36_.CurrentInventory;
						local L_1545_ = L_1544_[L_1542_forvar0]
						local L_1546_ = L_1545_[1]
						if L_1545_ and L_1546_ then
							local L_1547_ = string.split(L_1546_, "_")
							local L_1548_ = L_1547_[1]
							if L_1546_ == L_1535_.Glove or L_1546_ == L_1535_.Knife then
								L_36_.equipitem(L_1542_forvar0, "Both")
							end
						end
					end)
				end;
				if L_1535_.Models then
					L_24_.Viewmodels:Destroy()
					local L_1549_ = L_135_:Clone()
					L_1549_.Name = "Viewmodels"
					L_1549_.Parent = L_24_;
					L_91_ = {}
					L_92_ = {}
					local L_1550_ = game:GetService"HttpService":JSONDecode(L_1535_.Models)
					for L_1551_forvar0, L_1552_forvar1 in next, L_1550_ do
						equipCustomModel(L_1552_forvar1)
					end
				end
			end
		end
	end
})
ConfigSectionOther = L_128_:AddSection"Other"
ConfigSectionOther:AddButton({
	text = "Copy To Clipboard",
	callback = function()
		L_5_:SaveConfig("", true)
	end
})
ConfigSectionOther:AddButton({
	text = "Load From Clipboard",
	callback = function()
		L_133_.text = "Are you sure you want to load config from clipboard?"
		if L_133_:Show() then
			local L_1553_ = Instance.new("ScreenGui", game.CoreGui)
			local L_1554_ = Instance.new("TextBox", L_1553_)
			L_1554_.Size = UDim2.new(1, 0, 1, 0)
			L_1554_.Text = ""
			L_1554_.BackgroundTransparency = 0.99;
			L_1554_.TextTransparency = 1;
			wait()
			mouse1click()
			wait()
			keypress(17)
			keypress(86)
			wait()
			keyrelease(17)
			keyrelease(86)
			wait()
			local L_1555_ = L_1554_.Text;
			L_1553_:Destroy()
			L_5_.options["Loop Kill"]:SetState(false)
			L_5_.options["Target ESP"]:SetState(false)
			L_5_.options["Ragebot Whitelist"]:SetState(false)
			L_5_.options["Ragebot Priority"]:SetState(false)
			local L_1556_ = L_5_:LoadConfig("", L_1555_)
			if L_1556_ then
				local L_1557_ = Drawing.new("Text")
				L_1557_.Size = 45;
				L_1557_.Center = false;
				L_1557_.Position = Vector2.new(20, 20)
				L_1557_.Visible = true;
				L_1557_.Color = Color3.fromRGB(255, 100, 100)
				L_1557_.Outline = true;
				L_1557_.Text = "Invalid config!"
				CreateThread(function()
					wait(2)
					L_1557_:Remove()
				end)
			end
		end
	end
})
function roundNumber(L_1558_arg0, L_1559_arg1)
	return tonumber(string.format("%." .. (L_1559_arg1 or 0) .. "f", L_1558_arg0))
end;
local L_140_ = {
	"Bayonet",
	"Huntsman Knife",
	"Falchion Knife",
	"Karambit",
	"Gut Knife",
	"Butterfly Knife",
	"M9 Bayonet",
	"Banana",
	"Flip Knife",
	"Sickle",
	"Bearded Axe",
	"Cleaver"
}
if L_1_ then
	local L_1560_ = game:GetService("Players")
	local L_1561_ = L_1560_.LocalPlayer;
	local L_1562_ = workspace.KillFeed;
	local L_1563_ = {}
	local L_1564_ = Instance.new("IntValue")
	L_1564_.Name = "jig"
	local L_1565_ = {
		"FakeHead",
		"UpperTorso",
		"LowerTorso",
		"LeftFoot",
		"LeftHand",
		"LeftLowerArm",
		"LeftLowerLeg",
		"LeftUpperArm",
		"LeftUpperLeg",
		"RightFoot",
		"RightHand",
		"RightLowerArm",
		"RightLowerLeg",
		"RightUpperArm",
		"RightUpperLeg"
	}
	local L_1566_ = {
		["HE Grenade"] = "rbxassetid://2473861397",
		["Smoke Grenade"] = "rbxassetid://2465359739",
		["Incendiary Grenade"] = "rbxassetid://2465356425",
		["Molotov"] = "rbxassetid://2465357373",
		["Flashbang"] = "rbxassetid://2472169712",
		["Decoy Grenade"] = "rbxassetid://454821354"
	}
	function addTick()
		local L_1573_ = tick()
		local L_1574_ = {}
		for L_1575_forvar0, L_1576_forvar1 in next, L_1560_:GetPlayers() do
			local L_1577_ = {
				name = L_1576_forvar1.Name,
				alive = alive(L_1576_forvar1),
				gunState = "None"
			}
			if L_1577_.alive then
				L_1577_.armsModel = (L_1561_.Status.Team.Value == "CT" and workspace.Map.CeeT.Value or workspace.Map.Tee.Value) .. "Arms"
				L_1577_.gunName = L_1576_forvar1.Character.EquippedTool.Value;
				L_1577_.health = L_1576_forvar1.Character.Humanoid.Health;
				L_1577_.localplayer = L_1576_forvar1 == L_1561_;
				L_1577_.userid = L_1576_forvar1.UserId;
				L_1577_.kevlar = L_1576_forvar1:FindFirstChild("Kevlar") and L_1576_forvar1.Kevlar.Value or 0;
				L_1577_.plrModel = L_1576_forvar1.Ragdoll.Appearance.Value;
				L_1577_.scoped = L_1576_forvar1.Character:FindFirstChild("AIMING") and true or false;
				L_1577_.team = tostring(L_1576_forvar1.Team)
				L_1577_.skinName = "Stock"
				L_1577_.partCF = {}
				L_1577_.gunCF = {}
				L_1577_.hatCF = {}
				L_1577_.camCF = "0 0 0 0 0 0"
				L_1577_.forcefield = L_1576_forvar1.Character:FindFirstChild("ForceField") and true or false;
				local L_1578_ = L_1576_forvar1.Character.UpperTorso.Velocity;
				L_1577_.velocity = {
					L_1578_.X,
					L_1578_.Y,
					L_1578_.Z
				}
				if L_1577_.localplayer then
					L_1577_.ammo = tonumber(L_1561_.PlayerGui.GUI.AmmoGUI.AmmoClip.Text)
					L_1577_.ammoreserve = tonumber(L_1561_.PlayerGui.GUI.AmmoGUI.AmmoReserve.Text)
				end;
				if L_1576_forvar1:FindFirstChild("CameraCF") then
					local L_1579_, L_1580_;
					if L_1576_forvar1 == L_1561_ then
						L_1579_ = L_34_.CFrame.p;
						L_1580_ = L_1579_ + L_34_.CFrame.LookVector
					else
						L_1579_ = L_1576_forvar1.CameraCF.Value.p;
						L_1580_ = L_1579_ + L_1576_forvar1.CameraCF.Value.LookVector
					end;
					L_1577_.camCF = roundNumber(L_1579_.X, 3) .. " " .. roundNumber(L_1579_.Y, 3) .. " " .. roundNumber(L_1579_.Z, 3) .. " " .. roundNumber(L_1580_.X, 3) .. " " .. roundNumber(L_1580_.Y, 3) .. " " .. roundNumber(L_1580_.Z, 3)
				end;
				for L_1581_forvar0, L_1582_forvar1 in next, L_1576_forvar1.Character:GetChildren() do
					if table.find(L_1565_, L_1582_forvar1.Name) then
						local L_1583_ = tostring(L_1582_forvar1.CFrame):split(", ")
						L_1577_.partCF[L_1582_forvar1.Name] = roundNumber(L_1583_[1], 3) .. " " .. roundNumber(L_1583_[2], 3) .. " " .. roundNumber(L_1583_[3], 3) .. " " .. roundNumber(L_1583_[4], 3) .. " " .. roundNumber(L_1583_[5], 3) .. " " .. roundNumber(L_1583_[6], 3) .. " " .. roundNumber(L_1583_[7], 3) .. " " .. roundNumber(L_1583_[8], 3) .. " " .. roundNumber(L_1583_[9], 3) .. " " .. roundNumber(L_1583_[10], 3) .. " " .. roundNumber(L_1583_[11], 3) .. " " .. roundNumber(L_1583_[12], 3)
					elseif L_1582_forvar1.Name == "Gun" then
						if L_1582_forvar1:FindFirstChild("AnimateValue") then
							local L_1584_ = L_1582_forvar1.AnimateValue:GetChildren()
							if # L_1584_ > 0 then
								local L_1585_ = L_1584_[# L_1584_]
								if not L_1585_:FindFirstChild("jig") then
									local L_1586_ = L_1564_:Clone()
									L_1586_.Parent = L_1585_;
									L_1577_.gunState = L_1585_.Name
								end
							end
						end;
						for L_1587_forvar0, L_1588_forvar1 in next, L_1582_forvar1:GetChildren() do
							if L_1588_forvar1.ClassName == "MeshPart" then
								local L_1589_ = tostring(L_1588_forvar1.CFrame):split(", ")
								L_1577_.gunCF[L_1588_forvar1.Name] = roundNumber(L_1589_[1], 3) .. " " .. roundNumber(L_1589_[2], 3) .. " " .. roundNumber(L_1589_[3], 3) .. " " .. roundNumber(L_1589_[4], 3) .. " " .. roundNumber(L_1589_[5], 3) .. " " .. roundNumber(L_1589_[6], 3) .. " " .. roundNumber(L_1589_[7], 3) .. " " .. roundNumber(L_1589_[8], 3) .. " " .. roundNumber(L_1589_[9], 3) .. " " .. roundNumber(L_1589_[10], 3) .. " " .. roundNumber(L_1589_[11], 3) .. " " .. roundNumber(L_1589_[12], 3)
								if L_1577_.localplayer then
									local L_1590_ = L_1577_.team == "Terrorists" and L_1561_.SkinFolder.TFolder or L_1561_.SkinFolder.CTFolder;
									if L_1590_:FindFirstChild(L_1577_.gunName) then
										L_1577_.skinName = L_1590_[L_1577_.gunName].Value
									elseif table.find(L_140_, L_1577_.gunName) then
										L_1577_.skinName = L_1590_.Knife.Value
									end
								else
									if L_24_.Skins:FindFirstChild(L_1577_.gunName) then
										if L_1588_forvar1.Name == "Handle" or L_1588_forvar1.Name == "Handle2" then
											for L_1591_forvar0, L_1592_forvar1 in next, L_24_.Skins[L_1577_.gunName]:GetChildren() do
												local L_1593_ = L_1592_forvar1:FindFirstChild("Handle") or L_1592_forvar1:FindFirstChild("Handle2")
												if L_1593_ and L_1593_.Value == L_1582_forvar1[L_1588_forvar1.Name].TextureID then
													L_1577_.skinName = L_1592_forvar1.Name
												end
											end
										end
									end
								end
							end
						end
					end;
					if L_1582_forvar1.ClassName == "Accessory" and L_1582_forvar1:FindFirstChild("Handle") and (L_1582_forvar1.Handle:FindFirstChild("Mesh") or L_1582_forvar1.Handle.ClassName == "MeshPart") then
						if L_1582_forvar1.Handle.ClassName == "UnionOperation" then
							continue;
						end;
						local L_1594_ = L_1582_forvar1.Handle.ClassName == "Part" and L_1582_forvar1.Handle.Mesh.MeshId or L_1582_forvar1.Handle.ClassName == "MeshPart" and L_1582_forvar1.Handle.MeshId or ""
						local L_1595_ = tostring(L_1582_forvar1.Handle.CFrame):split(", ")
						L_1577_.hatCF[L_1594_] = roundNumber(L_1595_[1], 3) .. " " .. roundNumber(L_1595_[2], 3) .. " " .. roundNumber(L_1595_[3], 3) .. " " .. roundNumber(L_1595_[4], 3) .. " " .. roundNumber(L_1595_[5], 3) .. " " .. roundNumber(L_1595_[6], 3) .. " " .. roundNumber(L_1595_[7], 3) .. " " .. roundNumber(L_1595_[8], 3) .. " " .. roundNumber(L_1595_[9], 3) .. " " .. roundNumber(L_1595_[10], 3) .. " " .. roundNumber(L_1595_[11], 3) .. " " .. roundNumber(L_1595_[12], 3)
					end
				end
			else
				L_1577_.ragdoll = {
					found = false,
					positions = {},
					hatPos = {}
				}
				if workspace.Debris:FindFirstChild(L_1577_.name) then
					L_1577_.ragdoll.found = true;
					for L_1596_forvar0, L_1597_forvar1 in next, workspace.Debris[L_1577_.name]:GetChildren() do
						if L_1597_forvar1:IsA("BasePart") then
							local L_1598_ = tostring(L_1597_forvar1.CFrame):split(", ")
							L_1577_.ragdoll.positions[L_1597_forvar1.Name] = roundNumber(L_1598_[1], 3) .. " " .. roundNumber(L_1598_[2], 3) .. " " .. roundNumber(L_1598_[3], 3) .. " " .. roundNumber(L_1598_[4], 3) .. " " .. roundNumber(L_1598_[5], 3) .. " " .. roundNumber(L_1598_[6], 3) .. " " .. roundNumber(L_1598_[7], 3) .. " " .. roundNumber(L_1598_[8], 3) .. " " .. roundNumber(L_1598_[9], 3) .. " " .. roundNumber(L_1598_[10], 3) .. " " .. roundNumber(L_1598_[11], 3) .. " " .. roundNumber(L_1598_[12], 3)
						end;
						if L_1597_forvar1.ClassName == "Accessory" then
							local L_1599_ = L_1597_forvar1.Handle.ClassName == "Part" and L_1597_forvar1.Handle.Mesh.MeshId or L_1597_forvar1.Handle.ClassName == "MeshPart" and L_1597_forvar1.Handle.MeshId or ""
							local L_1600_ = tostring(L_1597_forvar1.Handle.CFrame):split(", ")
							L_1577_.ragdoll.hatPos[L_1599_] = roundNumber(L_1600_[1], 3) .. " " .. roundNumber(L_1600_[2], 3) .. " " .. roundNumber(L_1600_[3], 3) .. " " .. roundNumber(L_1600_[4], 3) .. " " .. roundNumber(L_1600_[5], 3) .. " " .. roundNumber(L_1600_[6], 3) .. " " .. roundNumber(L_1600_[7], 3) .. " " .. roundNumber(L_1600_[8], 3) .. " " .. roundNumber(L_1600_[9], 3) .. " " .. roundNumber(L_1600_[10], 3) .. " " .. roundNumber(L_1600_[11], 3) .. " " .. roundNumber(L_1600_[12], 3)
						end
					end
				end
			end;
			L_1574_[L_1576_forvar1.Name] = L_1577_
		end;
		L_1574_.nades = {}
		L_1574_.nadePos = {}
		L_1574_.droppedWeapons = {}
		L_1574_.bombPlanted = workspace:FindFirstChild("C4") and true or false;
		L_1574_.roundInfo = {
			round = workspace.Status.Rounds.Value,
			T = workspace.Status.TWins.Value,
			CT = workspace.Status.CTWins.Value,
			time = L_1561_.PlayerGui.GUI.UpperInfo.Timer.Text,
			TWin = {
				vis = L_1561_.PlayerGui.GUI.TWin.Visible,
				mvpimage = L_1561_.PlayerGui.GUI.TWin.MVPPlayer.Image,
				mvptext = L_1561_.PlayerGui.GUI.TWin.TextLabel.Text,
				infotext = L_1561_.PlayerGui.GUI.TWin.Info.TextLabel.Text
			},
			CTWin = {
				vis = L_1561_.PlayerGui.GUI.CTWin.Visible,
				mvpimage = L_1561_.PlayerGui.GUI.CTWin.MVPPlayer.Image,
				mvptext = L_1561_.PlayerGui.GUI.CTWin.TextLabel.Text,
				infotext = L_1561_.PlayerGui.GUI.CTWin.Info.TextLabel.Text
			}
		}
		L_1574_.regen = {
			props = {},
			glasses = {},
			doors = {}
		}
		if L_1574_.bombPlanted then
			local L_1601_ = workspace.C4:GetModelCFrame()
			L_1574_.bombPos = roundNumber(L_1601_.X, 3) .. " " .. roundNumber(L_1601_.Y, 3) .. " " .. roundNumber(L_1601_.Z, 3)
		else
			L_1574_.bombPos = "0 -100 0"
		end;
		if workspace.Map.Regen:FindFirstChild("Props") then
			for L_1602_forvar0, L_1603_forvar1 in next, workspace.Map.Regen.Props:GetChildren() do
				local L_1604_ = L_1603_forvar1.Position;
				table.insert(L_1574_.regen.props, roundNumber(L_1604_.X, 3) .. " " .. roundNumber(L_1604_.Y, 3) .. " " .. roundNumber(L_1604_.Z, 3))
			end
		end;
		if workspace.Map.Regen:FindFirstChild("Glasses") then
			for L_1605_forvar0, L_1606_forvar1 in next, workspace.Map.Regen.Glasses:GetChildren() do
				local L_1607_ = L_1606_forvar1.Position;
				table.insert(L_1574_.regen.glasses, roundNumber(L_1607_.X, 3) .. " " .. roundNumber(L_1607_.Y, 3) .. " " .. roundNumber(L_1607_.Z, 3))
			end
		end;
		if workspace.Map.Regen:FindFirstChild("Doors") then
			for L_1608_forvar0, L_1609_forvar1 in pairs(workspace.Map.Regen.Doors:GetChildren()) do
				local L_1610_ = L_1609_forvar1.HumanoidRootPart.Position;
				local L_1611_ = L_1609_forvar1.HumanoidRootPart.Orientation;
				table.insert(L_1574_.regen.doors, roundNumber(L_1610_.X, 3) .. " " .. roundNumber(L_1610_.Y, 3) .. " " .. roundNumber(L_1610_.Z, 3) .. " " .. roundNumber(L_1611_.X, 3) .. " " .. roundNumber(L_1611_.Y, 3) .. " " .. roundNumber(L_1611_.Z, 3))
			end
		end;
		for L_1612_forvar0, L_1613_forvar1 in next, workspace.Debris:GetChildren() do
			pcall(function()
				if L_1613_forvar1.ClassName == "MeshPart" then
					for L_1614_forvar0, L_1615_forvar1 in next, L_1566_ do
						if L_1615_forvar1 == L_1613_forvar1.TextureID and L_1613_forvar1.Model.Handle2.Transparency ~= 1 then
							local L_1616_ = L_1613_forvar1.Position;
							local L_1617_ = L_1613_forvar1.Orientation;
							table.insert(L_1574_.nades, {
								nade = L_1614_forvar0,
								pos = roundNumber(L_1616_.X, 3) .. " " .. roundNumber(L_1616_.Y, 3) .. " " .. roundNumber(L_1616_.Z, 3) .. " " .. roundNumber(L_1617_.X, 3) .. " " .. roundNumber(L_1617_.Y, 3) .. " " .. roundNumber(L_1617_.Z, 3)
							})
						else
							continue;
						end
					end
				end
			end)
			if L_24_.Viewmodels:FindFirstChild("v_" .. L_1613_forvar1.Name) then
				local L_1618_ = {}
				for L_1619_forvar0, L_1620_forvar1 in next, L_1613_forvar1:GetChildren() do
					if L_1620_forvar1.ClassName == "MeshPart" then
						local L_1621_ = L_1620_forvar1.Position;
						local L_1622_ = L_1620_forvar1.Orientation;
						L_1618_[L_1620_forvar1.Name] = roundNumber(L_1621_.X, 3) .. " " .. roundNumber(L_1621_.Y, 3) .. " " .. roundNumber(L_1621_.Z, 3) .. " " .. roundNumber(L_1622_.X, 3) .. " " .. roundNumber(L_1622_.Y, 3) .. " " .. roundNumber(L_1622_.Z, 3)
					else
						continue;
					end
				end;
				table.insert(L_1574_.droppedWeapons, {
					name = L_1613_forvar1.Name,
					positions = L_1618_
				})
			end
		end;
		for L_1623_forvar0, L_1624_forvar1 in next, workspace["Ray_Ignore"]:GetDescendants() do
			if L_1624_forvar1:IsA("BasePart") and (L_1624_forvar1.Parent.Name == "Fires" or L_1624_forvar1.Parent.Name == "Smokes") then
				local L_1625_ = L_1624_forvar1.Position;
				local L_1626_ = L_1624_forvar1.Orientation;
				table.insert(L_1574_.nadePos, {
					type = L_1624_forvar1.Name,
					pos = roundNumber(L_1625_.X, 3) .. " " .. roundNumber(L_1625_.Y, 3) .. " " .. roundNumber(L_1625_.Z, 3) .. " " .. roundNumber(L_1626_.X, 3) .. " " .. roundNumber(L_1626_.Y, 3) .. " " .. roundNumber(L_1626_.Z, 3)
				})
			else
				continue;
			end
		end;
		L_1574_.killfeed = {}
		for L_1627_forvar0 = 1, 10 do
			local L_1628_ = L_1562_[L_1627_forvar0]
			if L_1628_:FindFirstChild("Weapon") and L_1628_:FindFirstChild("Assist") and L_1628_:FindFirstChild("Killer") and L_1628_:FindFirstChild("Weapon") and L_1628_:FindFirstChild("Victim") then
				if 10 > workspace.DistributedTime.Value - L_1628_.time.Value and L_1628_.Active.Value then
					local L_1629_ = {}
					local L_1630_ = L_1628_.Assist.TeamColor.Value;
					local L_1631_ = L_1628_.Killer.TeamColor.Value;
					local L_1632_ = L_1628_.Victim.TeamColor.Value;
					L_1629_.weapon = L_1628_.Weapon.Value;
					L_1629_.assist = L_1628_.Assist.Value;
					L_1629_.assistcolor = {
						L_1630_.R,
						L_1630_.G,
						L_1630_.B
					}
					L_1629_.killer = L_1628_.Killer.Value;
					L_1629_.killercolor = {
						L_1631_.R,
						L_1631_.G,
						L_1631_.B
					}
					L_1629_.victim = L_1628_.Victim.Value;
					L_1629_.victimcolor = {
						L_1632_.R,
						L_1632_.G,
						L_1632_.B
					}
					L_1629_.headshot = L_1628_.Weapon.Headshot.Value == "true"
					L_1629_.wallbang = L_1628_.Weapon.Wallbang.Value == "true"
					table.insert(L_1574_.killfeed, L_1629_)
				end
			end
		end;
		L_1574_["delay"] = tick() - L_1573_;
		wait()
		table.insert(L_1563_, L_1574_)
	end;
	local L_1567_ = nil;
	local L_1568_ = false;
	local L_1569_ = workspace.Map.Origin;
	local L_1570_ = ""
	local L_1571_ = ""
	local L_1572_ = L_128_:AddSection"Demo Recorder"
	L_1572_:AddBox({
		text = "Demo Name",
		flag = "demoName",
		skipflag = true
	})
	L_1572_:AddButton({
		text = "Toggle Recording",
		callback = function()
			if library_flags["demoName"] == "" and not L_1568_ then
				return
			end;
			L_1568_ = not L_1568_;
			if L_1568_ then
				L_1570_ = workspace.Map.Origin.Value;
				L_1567_.main.Text = "Status: Recording...."
				L_1563_ = {}
				L_1571_ = library_flags["demoName"]
				while L_1568_ do
					addTick()
				end
			else
				if isfolder("cipex_configs/demos/" .. L_1571_) then
					delfolder("cipex_configs/demos/" .. L_1571_)
					makefolder("cipex_configs/demos/" .. L_1571_)
				else
					makefolder("cipex_configs/demos/" .. L_1571_)
				end;
				for L_1635_forvar0, L_1636_forvar1 in next, L_1563_ do
					if L_1635_forvar0 % 50 == 0 then
						wait()
					end;
					local L_1637_ = game:service("HttpService"):JSONEncode(L_1636_forvar1)
					writefile("cipex_configs/demos/" .. L_1571_ .. "/" .. tostring(L_1635_forvar0) .. ".tick", L_1637_)
					L_1567_.main.Text = "Status: Creating " .. tostring(L_1635_forvar0) .. ".tick"
				end;
				midpos = Vector3.new(0, 0, 0)
				count = 0;
				for L_1638_forvar0, L_1639_forvar1 in next, workspace.Map:GetDescendants() do
					pcall(function()
						if not L_1639_forvar1:IsDescendantOf(workspace.Map.Regen) then
							midpos = midpos + L_1639_forvar1.Position;
							count = count + 1
						end
					end)
				end;
				midpos = midpos / count;
				local L_1633_ = {
					mapName = L_1570_,
					sky = false,
					sides = {}
				}
				local L_1634_ = game:GetService("Lighting"):FindFirstChildOfClass("Sky")
				if L_1634_ then
					L_1633_.sky = true;
					L_1633_.sides["SkyboxBk"] = L_1634_.SkyboxBk;
					L_1633_.sides["SkyboxDn"] = L_1634_.SkyboxDn;
					L_1633_.sides["SkyboxFt"] = L_1634_.SkyboxFt;
					L_1633_.sides["SkyboxLf"] = L_1634_.SkyboxLf;
					L_1633_.sides["SkyboxRt"] = L_1634_.SkyboxRt;
					L_1633_.sides["SkyboxUp"] = L_1634_.SkyboxUp
				end;
				writefile("cipex_configs/demos/" .. L_1571_ .. "/ver.tick", "1")
				writefile("cipex_configs/demos/" .. L_1571_ .. "/map.tick", game:service("HttpService"):JSONEncode(L_1633_))
			end;
			L_1567_.main.Text = "Status: Not recording"
		end
	})
	L_1572_:AddButton({
		text = "Copy Demo Viewer Link",
		callback = function()
			setclipboard("https://roblox.com/games/8065776277/")
		end
	})
	L_1567_ = L_1572_:AddLabel("Status: Not recording")
	L_1569_:GetPropertyChangedSignal("Value"):connect(function(L_1640_arg0)
		if L_1640_arg0 ~= workspace.Map.Origin.Value then
			L_1568_ = false
		end
	end)
end;
ScriptTab = L_5_:AddTab("Scripts")
ScriptColumn = ScriptTab:AddColumn()
ScriptColumn1 = ScriptTab:AddColumn()
local L_141_ = {}
ScriptSection = ScriptColumn:AddSection"Scripts"
ScriptSection:AddList({
	text = "Script",
	flag = "scriptlist",
	skipflag = true,
	value = "",
	values = {
		"script"
	}
})
ScriptSection:AddButton({
	text = "Run Script",
	callback = function()
		for L_1641_forvar0, L_1642_forvar1 in next, listfiles("cipex_configs/scripts") do
			if not table.find(L_141_, L_1642_forvar1) and L_1642_forvar1:split(".")[1] == "cipex_configs/scripts\\" .. library_flags["scriptlist"] then
				if string.find(L_1642_forvar1:split(".")[2], "lua") then
					table.insert(L_141_, L_1642_forvar1)
					loadstring(readfile(L_1642_forvar1))()
				end
			end
		end
	end
})
L_4_.mainFrame.topname.TextButton.MouseButton1Click:connect(function()
	L_4_.mainFrame.Visible = false
end)
L_5_:Init()
spawn(function()
	wait(5)
	if not isfolder("cipex_configs/autoexec") then
		makefolder("cipex_configs/autoexec")
	end;
	for L_1643_forvar0, L_1644_forvar1 in next, listfiles("cipex_configs/autoexec") do
		if string.find(L_1644_forvar1:split(".")[2], "lua") then
			pcall(function()
				spawn(function()
					loadstring(readfile(L_1644_forvar1))()
				end)
			end)
		end
	end
end)
corehusband = Instance.new("ScreenGui", game:service("CoreGui"))
logholder = game:GetObjects("rbxassetid://6502006065")[1]
logholder.log.main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
logholder.log.main.text.TextColor3 = Color3.new(0.8, 0.8, 0.8)
logholder.Parent = corehusband;
logcount = 0;
logDebounce = false;
function hitlog(L_1645_arg0, L_1646_arg1, L_1647_arg2)
	L_1646_arg1 = string.find(L_1646_arg1, "Head") and "Head" or L_1646_arg1;
	if logDebounce then
		return
	end;
	logDebounce = true;
	spawn(function()
		wait()
		logDebounce = false
	end)
	logcount = logcount + 1;
	if logcount >= 7 then
		for L_1651_forvar0, L_1652_forvar1 in next, logholder:GetChildren() do
			if L_1652_forvar1.Name == "logged" then
				L_1652_forvar1:Destroy()
				logcount = logcount - 1;
				break
			end
		end
	end;
	local L_1648_ = logholder.log:Clone()
	L_1648_.Parent = logholder;
	L_1648_.Visible = true;
	L_1648_.Name = "logged"
	L_1648_.BackgroundColor3 = library_flags["Menu Accent Color"]
	L_1648_.main.text.Text = "Hit " .. L_1645_arg0.Name .. " in the " .. tostring(L_1646_arg1) .. " with a " .. tostring(L_1647_arg2)
	local L_1649_ = game:service("TweenService"):Create(L_1648_.main, TweenInfo.new(0.75), {
		Size = UDim2.new(0, L_1648_.main.text.TextBounds.X + 7, 0, 25)
	})
	L_1649_:Play()
	L_1649_.Completed:Wait()
	wait(2)
	local L_1650_ = game:service("TweenService"):Create(L_1648_.main, TweenInfo.new(1), {
		Size = UDim2.new(0, 0, 0, 25)
	})
	L_1650_:Play()
	L_1650_.Completed:Wait()
	L_1648_:Destroy()
	logcount = logcount - 1
end;
getgenv().hitlog = hitlog;
L_5_.main.Modal = true;
auto.main.Visible = true;
scout.main.Visible = false;
awp.main.Visible = false;
rifles.main.Visible = false;
heavyp.main.Visible = false;
pistols.main.Visible = false;
other.main.Visible = false;
if not isfile("cipex_configs/chatspam.txt") then
	writefile("cipex_configs/chatspam.txt", "Message1\nMessage2\nMessage3\nMessage4\nMessage5")
end;
for L_1653_forvar0, L_1654_forvar1 in next, L_30_:GetPlayers() do
	L_5_:AddConnection(L_1654_forvar1.CharacterAdded, function(L_1655_arg0)
		wait(0.25)
		if L_1654_forvar1 == L_32_ then
			if library_flags["autoBuyEnabled"] then
				wait(0.5)
				local L_1656_, L_1657_, L_1658_, L_1659_, L_1660_, L_1661_ = false, false, false, false, false, false;
				if not L_32_.PlayerGui.GUI.Inventory.Item1.Visible then
					buyWeapon(library_flags["Primary Weapon"])
					L_1661_ = true
				end;
				if string.find(string.lower(L_32_.PlayerGui.GUI.Inventory.Item2.ToolName.Text), "glock") or string.find(string.lower(L_32_.PlayerGui.GUI.Inventory.Item2.ToolName.Text), "usp") or string.find(string.lower(L_32_.PlayerGui.GUI.Inventory.Item2.ToolName.Text), "px") then
					buyWeapon(library_flags["Secondary Weapon"])
					L_1661_ = true
				end;
				if L_32_:FindFirstChild("Kevlar") and L_1654_forvar1.Kevlar.Value < 100 then
					buyWeapon(library_flags["Armor"])
					L_1661_ = true
				end;
				local L_1662_ = 0;
				for L_1663_forvar0 = 4, 6 do
					local L_1664_ = L_32_.PlayerGui.GUI.Inventory["Item" .. tostring(L_1663_forvar0)]
					local L_1665_ = L_1664_.ToolName.Text;
					if L_1664_.Visible and L_1665_ == "Molotov" or L_1664_.Visible and L_1665_ == "Incendiary Grenade" then
						L_1658_ = true;
						L_1662_ = L_1662_ + 1
					elseif L_1664_.Visible and L_1665_ == "HE Grenade" then
						L_1657_ = true;
						L_1662_ = L_1662_ + 1
					elseif L_1664_.Visible and L_1665_ == "Decoy Grenade" then
						L_1660_ = true;
						L_1662_ = L_1662_ + 1
					elseif L_1664_.Visible and L_1665_ == "Smoke Grenade" then
						L_1659_ = true;
						L_1662_ = L_1662_ + 1
					elseif L_1664_.Visible and L_1665_ == "Flashbang" then
						L_1656_ = true;
						L_1662_ = L_1662_ + 1
					end
				end;
				for L_1666_forvar0, L_1667_forvar1 in next, library_flags["Grenades"] do
					if L_1667_forvar1 and L_1662_ < 3 then
						if L_1666_forvar0 == "Fire Grenade" and not L_1658_ or L_1666_forvar0 == "HE Grenade" and not L_1657_ or L_1666_forvar0 == "Decoy Grenade" and not L_1660_ or L_1666_forvar0 == "Smoke Grenade" and not L_1659_ or L_1666_forvar0 == "Flashbang" and not L_1656_ then
							buyWeapon(L_1666_forvar0)
							L_1662_ = L_1662_ + 1;
							L_1661_ = true
						end
					end
				end;
				wait()
				if L_1661_ then
					L_36_.Back()
				end
			end
		end;
		wait(0.75)
		L_49_ = true;
		L_5_.options["Self Chams"].callback()
		if library_flags["Backtrack"] and L_1654_forvar1 ~= L_32_ then
			createPlr(L_1654_forvar1)
		end;
		if library_flags["Chams"] and L_1654_forvar1 ~= L_32_ then
			chamsPlr(L_1654_forvar1)
			cbCHAMS()
		end
	end)
end;
L_5_:AddConnection(L_30_.PlayerAdded, function(L_1668_arg0)
	L_5_:AddConnection(L_1668_arg0.CharacterAdded, function(L_1669_arg0)
		wait(1)
		L_49_ = true;
		if library_flags["Backtrack"] and L_1668_arg0 ~= L_32_ then
			createPlr(L_1668_arg0)
		end;
		if library_flags["Chams"] and L_1668_arg0 ~= L_32_ then
			chamsPlr(L_1668_arg0)
			cbCHAMS()
		end
	end)
end)
local L_142_, L_143_ = 0, 90;
local L_144_ = L_36_.firebullet;
L_36_.firebullet = function(L_1670_arg0, ...)
	if not L_5_.open or getgenv().target then
		local L_1671_ = false;
		if getgenv().target and not L_57_.melee then
			L_144_(L_1670_arg0, ...)
			L_1671_ = true
		elseif not getgenv().target and not L_1671_ then
			L_144_(L_1670_arg0, ...)
			L_1671_ = true
		end;
		if library_flags["Third Person"] then
			if L_57_.alive and not L_57_.melee and L_57_.ammo > 0 and L_57_.name ~= "M4A1" and L_57_.Name ~= "Scout" then
				playAudio(L_57_.name)
			end
		end
	end
end;
L_5_:AddConnection(L_34_.ChildAdded, function(L_1672_arg0)
	updateViewModelVisuals()
end)
L_5_:AddConnection(workspace.Debris.ChildAdded, function(L_1673_arg0)
	local L_1674_ = false;
	if L_24_.Weapons:FindFirstChild(L_1673_arg0.Name) and not L_1673_arg0:FindFirstChild("Folder") then
		f = Instance.new("Folder", L_1673_arg0)
		createEsp("weapon", L_1673_arg0)
	end;
	for L_1675_forvar0 = 1, 10 do
		wait()
		if L_1673_arg0:FindFirstChild("ball") then
			L_1674_ = true
		end
	end;
	if L_1674_ and library_flags["Grenade Area"] then
		local L_1676_ = Instance.new("Part", L_1673_arg0)
		L_1676_.Color = library_flags["areaColor"]
		L_1676_.Size = Vector3.new(12, 12, 12)
		L_1676_.Shape = "Ball"
		L_1676_.Material = "ForceField"
		L_1676_.CanCollide = false;
		L_1676_.Anchored = true;
		repeat
			L_28_.RenderStepped:Wait()
			if L_1676_ and L_1673_arg0 and L_1673_arg0:FindFirstChild("Handle2") then
				L_1676_.Position = L_1673_arg0.Handle2.Position
			else
				break
			end
		until L_1673_arg0:FindFirstChild("Explode1Playing")
		L_1676_:Destroy()
	end
end)
for L_1677_forvar0, L_1678_forvar1 in next, game.Teams:GetChildren() do
	L_1678_forvar1.PlayerAdded:connect(function(L_1679_arg0)
		if L_1679_arg0 == L_32_ then
			wait(0.5)
			for L_1680_forvar0, L_1681_forvar1 in next, L_30_:GetPlayers() do
				if L_1681_forvar1.Character then
					for L_1682_forvar0, L_1683_forvar1 in next, L_1681_forvar1.Character:GetDescendants() do
						if L_1683_forvar1:IsA"CylinderHandleAdornment" or L_1683_forvar1:IsA"BoxHandleAdornment" then
							L_1683_forvar1:Destroy()
						end
					end
				end
			end;
			wait(1)
			for L_1684_forvar0, L_1685_forvar1 in next, L_30_:GetPlayers() do
				if L_1685_forvar1.Character then
					chamsPlr(L_1685_forvar1)
				end
			end
		end
	end)
end;
L_32_.Status.Kills.Changed:Connect(function(L_1686_arg0)
	if L_1686_arg0 ~= 0 then
		onKill:Fire()
	end
end)
draggable(L_83_)
draggable(L_87_)
draggable(L_116_)
draggable(L_4_.mainFrame)
spawn(function()
	while wait(3.5) do
		updateSkybox()
	end
end)
if isfile("cipex_configs/temp.tmp") then
	L_5_:LoadConfig(readfile("cipex_configs/temp.tmp"))
	delfile("cipex_configs/temp.tmp")
end;
L_32_.OnTeleport:Connect(function(L_1687_arg0)
end)
L_30_.PlayerRemoving:Connect(function(L_1688_arg0)
	if L_1688_arg0 == L_32_ then
		for L_1689_forvar0, L_1690_forvar1 in next, listfiles("cipex_configs/tempimages") do
			delfile(L_1690_forvar1)
		end
	end
end)
knifeDebounce = false;
invissed = false;
chatspamDebounce = 0;
textbounded = false;
tpdebounce = false;
reloading = false;
reloaddebounce = false;
strafing = false;
oldLook = Vector3.new()
oldAmbient = L_29_.Ambient;
oldOutdoorAmbient = L_29_.OutdoorAmbient;
testpart = Instance.new("Part", workspace)
testpart.Anchored = true;
testpart.Size = Vector3.new(1, 1, 1)
testpart.CanCollide = false;
L_25_.InputChanged:Connect(function(L_1691_arg0)
	if not library_flags["Override Game Movement"] then
		return
	end;
	if not L_57_.alive then
		return
	end;
	if L_1691_arg0.UserInputType == Enum.UserInputType.MouseMovement then
		local L_1692_ = L_32_.Character.Humanoid:GetState()
		if L_1692_ == Enum.HumanoidStateType.Freefall or L_1692_ == Enum.HumanoidStateType.Jumping then
		else
			return
		end;
		strafing = true;
		if not L_25_:IsKeyDown(Enum.KeyCode.W) and not L_25_:IsKeyDown(Enum.KeyCode.S) then
			if L_1691_arg0.Delta.X < 0 then
				if L_1691_arg0.Delta.X > -11 and L_25_:IsKeyDown(Enum.KeyCode.A) then
					local L_1693_ = math.abs(L_1691_arg0.Delta.X) / 25 * library_flags["Air Acceleration"]
					L_32_.Character.Humanoid.WalkSpeed = L_32_.Character.Humanoid.WalkSpeed + L_1693_
				elseif L_25_:IsKeyDown(Enum.KeyCode.A) then
					local L_1694_ = - (math.abs(L_1691_arg0.Delta.X) / 7.5)
					L_32_.Character.Humanoid.WalkSpeed = L_32_.Character.Humanoid.WalkSpeed + L_1694_
				end
			elseif L_1691_arg0.Delta.X > 0 then
				if L_1691_arg0.Delta.X < 11 and L_25_:IsKeyDown(Enum.KeyCode.D) then
					local L_1695_ = math.abs(L_1691_arg0.Delta.X) / 25 * library_flags["Air Acceleration"]
					L_32_.Character.Humanoid.WalkSpeed = L_32_.Character.Humanoid.WalkSpeed + L_1695_
				elseif L_25_:IsKeyDown(Enum.KeyCode.D) then
					local L_1696_ = - (math.abs(L_1691_arg0.Delta.X) / 7.5)
					L_32_.Character.Humanoid.WalkSpeed = L_32_.Character.Humanoid.WalkSpeed + L_1696_
				end
			end
		end;
		L_32_.Character.Humanoid.WalkSpeed = math.clamp(L_32_.Character.Humanoid.WalkSpeed, 0, 120)
		spawn(function()
			strafing = false
		end)
	end
end)
L_28_.Stepped:Connect(function()
	if alive() then
		local L_1697_, L_1698_ = L_32_.Character, not noclipping;
		L_1697_.Head.CanCollide = L_1698_;
		L_1697_.UpperTorso.CanCollide = L_1698_;
		L_1697_.LowerTorso.CanCollide = L_1698_;
		L_1697_.HumanoidRootPart.CanCollide = L_1698_
	end
end)
pcall(function()
	L_5_.base.TextLabel.Visible = false
end)
pingIntance = game.Stats.PerformanceStats.Ping;
noscroll = false;
oldmovedown = L_36_.moveDown;
oldmoveup = L_36_.moveUp;
oldmakevisible = L_36_.makeVisible;
L_28_.RenderStepped:Connect(function(L_1699_arg0)
	L_59_ = L_1699_arg0;
	L_58_ = pingIntance:GetValue()
	if # L_30_:GetPlayers() ~= countESP() then
		for L_1700_forvar0, L_1701_forvar1 in next, L_30_:GetPlayers() do
			if not L_56_[L_1701_forvar1.Name] then
				createEsp("plr", L_1701_forvar1)
			end
		end
	end;
	if L_5_.open and not noscroll then
		noscroll = true;
		L_36_.moveDown = function()
		end;
		L_36_.moveUp = function()
		end
	elseif not L_5_.open and noscroll then
		noscroll = false;
		L_36_.moveDown = oldmovedown;
		L_36_.moveUp = oldmoveup
	end;
	if library_flags["espEnabled"] then
		invissed = false;
		for L_1702_forvar0, L_1703_forvar1 in next, L_56_ do
			local L_1704_ = L_1703_forvar1.type == "plr"
			if L_1704_ and not L_30_:FindFirstChild(L_1702_forvar0) or not L_1704_ and L_1703_forvar1.object == nil then
				L_1703_forvar1.invis()
				L_1703_forvar1.remove()
				L_56_[L_1702_forvar0] = nil;
				continue;
			end;
			if L_1703_forvar1.type == "weapon" and not library_flags["Dropped Weapon ESP"] then
				L_1703_forvar1.text.Visible = false;
				continue;
			end;
			if L_1704_ and teamCheck(L_30_[L_1702_forvar0], L_39_) and L_30_[L_1702_forvar0].Character and L_30_[L_1702_forvar0].Character:FindFirstChild("Humanoid") and L_30_[L_1702_forvar0].Character:FindFirstChild("HumanoidRootPart") and L_30_[L_1702_forvar0].Character:FindFirstChild("Head") or not L_1704_ and L_1703_forvar1.object then
				if not alive() or L_1704_ and math.abs(L_30_[L_1702_forvar0].Character.Head.Position.Y - L_32_.Character.Head.Position.Y) >= 30 then
					L_1703_forvar1.invis()
					continue;
				end;
				local L_1705_;
				local L_1706_ = L_48_;
				local L_1707_ = L_48_;
				local L_1708_;
				if L_1704_ then
					L_1705_ = L_30_[L_1702_forvar0]
					local L_1720_ = L_1705_.Character.HumanoidRootPart.Position;
					L_1706_ = Vector3.new(L_1720_.x, L_1720_.y + 2.45, L_1720_.z)
					L_1707_ = Vector3.new(L_1720_.x, L_1720_.y - 3.1, L_1720_.z)
					L_1708_ = math.clamp(L_1705_.Character.Humanoid.Health, 0, 100)
				elseif L_1703_forvar1.type == "weapon" and L_1703_forvar1.object and L_1703_forvar1.object then
					L_1706_ = L_1703_forvar1.object.Position;
					L_1707_ = L_1703_forvar1.object.Position
				end;
				local L_1709_, L_1710_ = L_34_:WorldToViewportPoint(L_1706_)
				local L_1711_, L_1712_ = L_34_:WorldToViewportPoint(L_1707_)
				if L_1710_ or L_1712_ then
				else
					L_1703_forvar1.invis()
					continue;
				end;
				local L_1713_ = (L_1711_.y - L_1709_.y) / 2;
				local L_1714_ = true;
				if library_flags["Visible Only ESP"] and L_32_.Character or not L_1704_ and L_1703_forvar1.object then
					L_1714_ = false;
					local L_1721_ = L_1704_ and L_1705_.Character.Head.Position or L_1703_forvar1.object.Position;
					local L_1722_ = Ray.new(L_34_.CFrame.p, (L_1721_ - L_34_.CFrame.p).unit * 500)
					local L_1723_, L_1724_ = workspace:FindPartOnRayWithIgnoreList(L_1722_, {
						L_34_,
						L_32_.Character,
						workspace.Ray_Ignore,
						workspace.Map:WaitForChild("Clips"),
						workspace.Map:WaitForChild("SpawnPoints")
					})
					if L_1704_ and L_1705_.Character then
						L_1714_ = L_1723_:IsDescendantOf(L_1705_.Character)
					elseif L_1723_ then
						L_1714_ = L_1723_ == L_1703_forvar1.object
					end
				end;
				if L_57_.alive and L_1705_ then
					if math.abs(L_1705_.Character.HumanoidRootPart.Position.Y - L_32_.Character.HumanoidRootPart.Position.Y) > 45 then
						L_1714_ = false
					end
				end;
				if not L_1714_ then
					L_1703_forvar1.invis()
					continue;
				end;
				local L_1715_ = library_flags["Font"]
				local L_1716_ = ""
				if L_1704_ then
					if L_1705_.Character:FindFirstChild("EquippedTool") then
						L_1716_ = tostring(L_1705_.Character.EquippedTool.Value)
					end;
					local L_1725_ = library_flags["Box ESP"]
					local L_1726_ = library_flags["Health Bar"]
					L_1703_forvar1.text.Visible = library_flags["Name ESP"]
					L_1703_forvar1.weapon.Text = L_1716_;
					L_1703_forvar1.weapon.Visible = library_flags["Weapon ESP"]
					L_1703_forvar1.tracer.Visible = library_flags["Tracers"]
					L_1703_forvar1.boxoutline.Visible = L_1725_ and library_flags["Outline"] and true or false;
					L_1703_forvar1.box.Visible = L_1725_;
					L_1703_forvar1.healthb.Visible = L_1726_;
					L_1703_forvar1.healthbo.Visible = L_1726_;
					L_1703_forvar1.tracer.To = L_5_.round(Vector2.new(L_1711_.X, L_1711_.Y))
					if L_1726_ then
						L_1703_forvar1.healthb.Position = L_5_.round(Vector2.new(L_1709_.X - L_1713_ / 2 - 4, L_1711_.Y - 1))
						L_1703_forvar1.healthb.Size = L_5_.round(Vector2.new(2, - L_1708_ / 100 * (L_1711_.Y - L_1709_.Y) + 2))
						L_1703_forvar1.healthbo.Position = L_5_.round(Vector2.new(L_1709_.X - L_1713_ / 2 - 4, L_1711_.Y - 1))
						L_1703_forvar1.healthbo.Size = L_5_.round(Vector2.new(2, - (L_1711_.Y - L_1709_.Y) + 2))
					end;
					if L_1725_ then
						L_1703_forvar1.boxoutline.Size = L_5_.round(Vector2.new(L_1713_, L_1711_.y - L_1709_.Y))
						L_1703_forvar1.boxoutline.Position = L_5_.round(Vector2.new(L_1709_.X - L_1713_ / 2, L_1709_.Y))
						L_1703_forvar1.box.Position = L_5_.round(Vector2.new(L_1709_.X - L_1713_ / 2, L_1709_.Y))
						L_1703_forvar1.box.Size = L_5_.round(Vector2.new(L_1713_, L_1711_.y - L_1709_.Y))
					end;
					if L_52_[L_1705_.Name] and L_52_[L_1705_.Name].TargetESP then
						L_1703_forvar1.box.Color = library_flags["Target Box Color"]
						L_1703_forvar1.text.Color = library_flags["Target Name Color"]
						L_1703_forvar1.weapon.Color = library_flags["Target Weapon Color"]
						L_1703_forvar1.tracer.Color = library_flags["Target Tracer Color"]
						L_1703_forvar1.healthb.Color = library_flags["Target Health Bar Color"]
					else
						L_1703_forvar1.box.Color = library_flags["boxESPcolor"]
						L_1703_forvar1.text.Color = library_flags["nameESPcolor"]
						L_1703_forvar1.weapon.Color = library_flags["weaponESPcolor"]
						L_1703_forvar1.tracer.Color = library_flags["tracersColor"]
						L_1703_forvar1.healthb.Color = library_flags["healthBar"]
					end
				else
					L_1703_forvar1.text.Visible = library_flags["Dropped Weapon ESP"]
					L_1703_forvar1.text.Color = library_flags["dropESPcolor"]
				end;
				local L_1717_ = L_1704_ and L_1702_forvar0 or L_1703_forvar1.object.Name;
				local L_1718_ = library_flags["Outline"]
				L_1703_forvar1.text.Position = Vector2.new(L_1709_.X, L_1709_.Y - 15)
				L_1703_forvar1.text.Font = fonts[L_1715_]
				L_1703_forvar1.text.Outline = L_1718_;
				L_1703_forvar1.weapon.Position = L_5_.round(Vector2.new(L_1709_.X, L_1711_.Y + 3))
				L_1703_forvar1.weapon.Outline = L_1718_;
				L_1703_forvar1.weapon.Font = fonts[L_1715_]
				local L_1719_ = library_flags["Text Mode"]
				if L_1719_ == "Upper" then
					L_1703_forvar1.text.Text = string.upper(L_1717_)
					L_1703_forvar1.weapon.Text = string.upper(L_1716_)
				end;
				if L_1719_ == "Lower" then
					L_1703_forvar1.text.Text = string.lower(L_1717_)
					L_1703_forvar1.weapon.Text = string.lower(L_1716_)
				end;
				if L_1719_ == "Normal" then
					L_1703_forvar1.text.Text = L_1717_
				end
			else
				L_1703_forvar1.invis()
			end
		end
	else
		if not invissed then
			invissed = true;
			for L_1727_forvar0, L_1728_forvar1 in next, L_56_ do
				L_1728_forvar1.invis()
			end
		end
	end;
	if library_flags["Chat Spammer"] then
		chatspamDebounce = chatspamDebounce + 1;
		if chatspamDebounce == 175 then
			chatspamDebounce = 0;
			local L_1729_ = library_flags["chatMode"]
			if L_1729_ == "Custom" and isfile("cipex_configs/chatspam.txt") then
				local L_1730_ = readfile("cipex_configs/chatspam.txt")
				local L_1731_ = string.split(L_1730_, "\n")
				if # L_1731_ >= 1 then
					L_55_ = L_55_ + 1;
					L_55_ = L_55_ >= # L_1731_ + 1 and 1 or L_55_;
					chat(L_1731_[L_55_])
				end
			else
				L_55_ = L_55_ + 1;
				L_55_ = L_55_ >= # L_119_[L_1729_] + 1 and 1 or L_55_;
				chat(L_119_[L_1729_][L_55_])
			end
		end
	end;
	for L_1732_forvar0, L_1733_forvar1 in next, L_30_:GetPlayers() do
		if alive(L_1733_forvar1) then
			getgenv().oldPositions[L_1733_forvar1.Name] = L_1733_forvar1.Character.HumanoidRootPart.Position
		end;
		if library_flags["Kill All"] or L_52_[L_1733_forvar1.Name] and L_52_[L_1733_forvar1.Name].LoopKill then
			if teamCheck(L_1733_forvar1, L_37_) and L_1733_forvar1.Character and L_1733_forvar1.Character:FindFirstChild("Head") and L_32_.Character and L_32_.Character:FindFirstChild("EquippedTool") then
				if L_1733_forvar1.Character:FindFirstChild("Humanoid") and L_1733_forvar1.Character.Humanoid.Health > 0 then
					fireHitpart(L_1733_forvar1.Character.Head, 5, false, true)
				end
			end
		end;
		if library_flags["Resolve Angles"] then
			if teamCheck(L_1733_forvar1, L_37_) and L_1733_forvar1.Character and L_1733_forvar1.Character:FindFirstChild("UpperTorso") and L_1733_forvar1.Character.UpperTorso:FindFirstChild("Waist") then
				L_1733_forvar1.Character.UpperTorso.Waist.C0 = CFrame.Angles(0, 0, 0)
			end
		end
	end;
	if library_flags["Grenade Area"] and workspace["Ray_Ignore"]:FindFirstChild("Fires") then
		for L_1734_forvar0, L_1735_forvar1 in next, workspace["Ray_Ignore"].Fires:GetChildren() do
			if not L_1735_forvar1:FindFirstChild("Part") then
				local L_1736_ = library_flags["areaColor"]
				local L_1737_ = Instance.new("Part", L_1735_forvar1)
				L_1737_.Position = L_1735_forvar1.Position;
				L_1737_.Color = Color3.fromRGB(L_1736_.R / 4, L_1736_.G / 4, L_1736_.B / 4)
				L_1737_.Size = Vector3.new(0.15, 1, 1)
				L_1737_.Shape = "Cylinder"
				L_1737_.Material = "Neon"
				L_1737_.Transparency = 0.5;
				L_1737_.Orientation = Vector3.new(0, 0, 90)
				L_1737_.CanCollide = false;
				L_1737_.Anchored = true;
				local L_1738_ = L_27_:Create(L_1737_, TweenInfo.new(1.5), {
					Size = Vector3.new(0.15, 24, 24),
					Color = L_1736_
				})
				L_1738_:Play()
			end
		end
	end;
	L_57_ = getWeaponInfo()
	if library_flags["Bunny Hop"] and L_57_.alive and not L_54_ then
		local L_1739_ = L_32_.Character and L_32_.Character:FindFirstChild("HumanoidRootPart")
		local L_1740_ = L_48_;
		local L_1741_;
		local L_1742_;
		if L_1739_ then
			L_1741_ = library_flags["Anti Aim"] and L_34_.CFrame.LookVector or L_32_.Character.HumanoidRootPart.CFrame.LookVector;
			L_1742_ = library_flags["Anti Aim"] and L_34_.CFrame.p or L_1739_.Position
		end;
		if library_flags["Override Game Movement"] and not edgebugDebounce then
			return
		end;
		if not L_25_:GetFocusedTextBox() and L_1739_ and L_25_:IsKeyDown(Enum.KeyCode.Space) and L_32_.Character:FindFirstChild("Humanoid") then
			L_53_ = true;
			if library_flags["Bunny Hop Method"] == "CFrame" or library_flags["Bunny Hop Method"] == "Velocity" then
				L_1740_ = L_25_:IsKeyDown(Enum.KeyCode.W) and L_1740_ + L_1741_ or L_1740_;
				L_1740_ = L_25_:IsKeyDown(Enum.KeyCode.S) and L_1740_ - L_1741_ or L_1740_;
				L_1740_ = L_25_:IsKeyDown(Enum.KeyCode.D) and L_1740_ + Vector3.new(- L_1741_.Z, 0, L_1741_.X) or L_1740_;
				L_1740_ = L_25_:IsKeyDown(Enum.KeyCode.A) and L_1740_ + Vector3.new(L_1741_.Z, 0, - L_1741_.X) or L_1740_;
				local L_1743_ = library_flags["Speed Value"]
				if library_flags["Bunny Hop Method"] == "CFrame" and L_1740_ ~= L_48_ then
					L_1743_ = L_1743_ / 300;
					L_1740_ = L_1740_.Unit;
					L_32_.Character.HumanoidRootPart.CFrame = L_32_.Character.HumanoidRootPart.CFrame + Vector3.new(L_1740_.X * L_1743_, 0, L_1740_.Z * L_1743_)
					L_32_.Character.Humanoid.Jump = true;
					return
				end;
				local L_1744_ = L_25_:IsKeyDown(Enum.KeyCode.S) or L_25_:IsKeyDown(Enum.KeyCode.D) or L_25_:IsKeyDown(Enum.KeyCode.A)
				if L_1740_.Unit.X == L_1740_.Unit.X and not library_flags["Auto Strafe"] or L_1740_.Unit.X == L_1740_.Unit.X and library_flags["Auto Strafe"] and L_1744_ then
					L_1740_ = L_1740_.Unit;
					L_1739_.Velocity = Vector3.new(L_1740_.X * L_1743_, L_1739_.Velocity.Y, L_1740_.Z * L_1743_)
				elseif library_flags["Auto Strafe"] and not L_25_:IsKeyDown(Enum.KeyCode.S) and not L_25_:IsKeyDown(Enum.KeyCode.D) and not L_25_:IsKeyDown(Enum.KeyCode.A) then
					L_1740_ = L_1740_ + L_1741_;
					L_1740_ = L_1740_.Unit;
					L_1739_.Velocity = Vector3.new(L_1740_.X * L_1743_, L_1739_.Velocity.Y, L_1740_.Z * L_1743_)
					L_32_.Character.Humanoid:MoveTo(L_1742_ + L_1741_)
				end;
				last = L_1739_.Velocity
			end;
			L_32_.Character.Humanoid.Jump = true
		else
			if L_53_ and library_flags["Maintain Velocity"] then
				local L_1745_ = 0;
				L_54_ = true;
				repeat
					wait()
					L_1745_ = L_1745_ + 1;
					local L_1746_ = L_32_.Character and L_32_.Character:FindFirstChild("HumanoidRootPart")
					if L_1746_ then
						L_1746_.Velocity = Vector3.new(last.X, L_1746_.Velocity.Y, last.Z)
					end
				until not L_57_.alive or L_25_:IsKeyDown(Enum.KeyCode.Space) or L_32_.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall or L_32_.Character.Humanoid:GetState() == Enum.HumanoidStateType.Landed or L_1745_ == 15;
				last = Vector3.new()
				L_54_ = false
			end;
			L_53_ = false
		end
	end;
	if L_57_.alive then
		L_32_.Character.Humanoid.JumpHeight = getgenv().hookJP and getgenv().hookJP or 2.5
	end;
	if L_57_.alive and library_flags["Old Gun Sounds"] then
		replaceAudio(L_57_.name)
	end;
	if library_flags["Flashlight"] and L_57_.alive and not L_32_.Character.Head.SpotLight.Enabled then
		game.ReplicatedStorage.Events.Flashlight:FireServer()
	end;
	if table.find(L_91_, L_57_.name) and L_34_:FindFirstChild("Arms") and L_34_.Arms:FindFirstChild("Guy") and not reloading and not reloaddebounce then
		local L_1747_ = workspace.Camera.Arms.Guy:GetPlayingAnimationTracks()
		for L_1748_forvar0, L_1749_forvar1 in next, L_1747_ do
			if tostring(L_1749_forvar1) == "reload" then
				reloading = true;
				wait(library_flags["Instant Reload"] and 0 or L_24_.Weapons[L_57_.name].ReloadTime.Value * 0.8)
				local L_1750_ = getWeaponInfo()
				if L_1750_.name == L_57_.name then
					if L_57_.type == "main" then
						setupvalue(L_36_.countammo, 6, L_24_.Weapons[L_57_.name].Ammo.Value)
					elseif L_57_.type == "secondary" then
						setupvalue(L_36_.countammo, 5, L_24_.Weapons[L_57_.name].Ammo.Value)
					end;
					L_36_.countammo()
					reloaddebounce = true;
					spawn(function()
						wait(L_24_.Weapons[L_57_.name].ReloadTime.Value * 0.5)
						reloaddebounce = false
					end)
				end;
				reloading = false
			end
		end
	end;
	if not L_57_.alive then
		quickpeeking = false;
		qpPart.Position = Vector3.new()
		qpPartpos = nil
	end;
	getgenv().silentAimEnabled = library_flags["aimbotEnabled"] and L_57_.alive and L_57_.silentAim;
	if L_25_:IsMouseButtonPressed(0) and L_57_.alive and L_57_.silentAim then
		local L_1751_, L_1752_ = getNearest(L_57_.silentFOV * 3, L_38_, library_flags["legitVisOnly"])
		a = L_1752_ > L_57_.deadzone * 2.3;
		b = L_1752_ > L_57_.silentFOV * 3;
		if L_1751_ and a and not b then
			getgenv().target = L_57_.baim and L_1751_.Character.PrimaryPart or L_1751_.Character.Head
		end
	elseif not library_flags["Ragebot"] then
		getgenv().target = nil
	end;
	if library_flags["Infinite Ammo"] then
		pcall(function()
			setupvalue(L_36_.countammo, 5, 387420489)
			setupvalue(L_36_.countammo, 6, 387420489)
		end)
	else
		if L_57_.type == "main" then
			if getupvalue(L_36_.countammo, 6) > L_24_.Weapons[L_57_.name].Ammo.Value then
				setupvalue(L_36_.countammo, 6, L_24_.Weapons[L_57_.name].Ammo.Value)
				L_36_.countammo()
			end
		elseif L_57_.type == "secondary" then
			if getupvalue(L_36_.countammo, 5) > L_24_.Weapons[L_57_.name].Ammo.Value then
				setupvalue(L_36_.countammo, 5, L_24_.Weapons[L_57_.name].Ammo.Value)
				L_36_.countammo()
			end
		end
	end;
	if L_57_.alive and L_24_.Weapons:FindFirstChild(L_32_.Character.EquippedTool.Value) then
		local L_1753_ = L_24_.Weapons:FindFirstChild(L_32_.Character.EquippedTool.Value)
		if L_1753_:FindFirstChild("Melee") then
			L_104_ = true
		elseif L_104_ and not knifeDebounce then
			knifeDebounce = true;
			CreateThread(function()
				wait(0.05)
				L_104_ = false;
				knifeDebounce = false
			end)
		end
	end;
	getgenv().holdE = not L_25_:GetFocusedTextBox() and L_25_:IsKeyDown(Enum.KeyCode.E)
	if library_flags["No Crouch Cooldown"] then
		L_36_.crouchcooldown = 0
	end;
	if library_flags["Remove Radio Commands"] then
		L_32_.PlayerGui.GUI.SuitZoom.Visible = false
	end;
	if library_flags["Remove Recoil"] then
		L_36_.RecoilX = 0;
		L_36_.RecoilY = 0
	end;
	if library_flags["Gradient"] then
		L_29_.Ambient = library_flags["gradientColor"]
		L_29_.OutdoorAmbient = library_flags["gradientColor2"]
	else
		L_29_.Ambient = oldAmbient;
		L_29_.OutdoorAmbient = oldOutdoorAmbient
	end;
	L_44_.Saturation = library_flags["Saturation"] and library_flags["saturationValue"] / 50 or 0;
	L_29_.TimeOfDay = library_flags["Time Changer"] and library_flags["time"] / 2 or 14;
	if library_flags["Anti Aim"] and L_32_.Character and L_32_.Character.PrimaryPart and L_32_.Character:FindFirstChild("Humanoid") then
		L_142_ = L_142_ + 15;
		L_143_ = L_143_ == 90 and -90 or 90;
		L_32_.Character.Humanoid.AutoRotate = false;
		local L_1754_ = true;
		if library_flags["Pitch"] == "Down" or library_flags["Pitch"] == "None" then
			L_1754_ = false
		end;
		if library_flags["Yaw"] == "None" then
			setYaw(L_1754_ and 180 or 0)
		elseif library_flags["Yaw"] == "Backwards" then
			setYaw(L_1754_ and 0 or 180)
		elseif library_flags["Yaw"] == "Manual" then
			if library_flags["Manual Indicators"] then
				local L_1756_, L_1757_ = L_111_ or L_109_, L_111_ or L_110_;
				indicatorHolder.Enabled = true;
				leftIndicator.TextColor3 = L_1756_ and Color3.new(1, 1, 1) or library_flags["Menu Accent Color"]
				rightIndicator.TextColor3 = L_1757_ and Color3.new(1, 1, 1) or library_flags["Menu Accent Color"]
			end;
			local L_1755_ = nil;
			if L_111_ then
				setYaw(L_1754_ and 0 or 180)
			end;
			if library_flags["Pitch"] == "Down" or library_flags["Pitch"] == "None" then
				if L_109_ then
					L_1755_ = -90 + library_flags["Manual Yaw Offset"]
				elseif L_110_ then
					L_1755_ = 90 - library_flags["Manual Yaw Offset"]
				elseif L_111_ then
					L_1755_ = 180
				end
			else
				if L_109_ then
					L_1755_ = 90 + library_flags["Manual Yaw Offset"]
				elseif L_110_ then
					L_1755_ = -90 - library_flags["Manual Yaw Offset"]
				elseif L_111_ then
					L_1755_ = 0
				end
			end;
			setYaw(L_1755_, L_1755_ + 180)
		elseif library_flags["Yaw"] == "Spin" then
			setYaw(L_142_, L_142_ + 180)
		elseif library_flags["Yaw"] == "Random" then
			local L_1758_ = math.random(0, 360)
			setYaw(L_1758_, L_1758_ + 180)
		elseif library_flags["Yaw"] == "Jitter" then
			setYaw(L_143_, - L_143_)
		end
	else
		if L_57_.alive then
			L_32_.Character.Humanoid.AutoRotate = true;
			L_32_.Character.Humanoid.HipHeight = 2
		end
	end;
	if L_57_.alive then
		local L_1759_ = L_32_.Character.Head;
		local L_1760_ = getgenv().target or L_1759_;
		local L_1761_ = library_flags["Roll"] ~= "None" and library_flags["Anti Aim"]
		getgenv().antiAimCFrame = CFrame.new(L_1759_.Position, L_1760_.Position + L_1760_.CFrame.LookVector) * CFrame.Angles(0, 0, L_1761_ and math.rad(180) or 0)
	end;
	if library_flags["Watermark"] then
		local L_1762_, L_1763_, L_1764_ = returntime("sec"), returntime("min"), returntime("hour")
		local L_1765_ = string.len(L_1762_) == 2 and L_1762_ or "0" .. L_1762_;
		local L_1766_ = string.len(L_1763_) == 2 and L_1763_ or "0" .. L_1763_;
		local L_1767_ = string.len(L_1764_) == 2 and L_1764_ or "0" .. L_1764_;
		L_116_.Text = " cipex | " .. L_1767_ .. ":" .. L_1766_ .. ":" .. L_1765_ .. " | " .. L_32_.Name;
		if L_116_.TextBounds.X > 210 then
			L_116_.TextSize = L_116_.TextSize - 1
		end
	end;
	if L_57_.alive then
		local L_1768_ = not L_57_.melee and library_flags["FOV Circle"] and library_flags["aimbotEnabled"]
		L_113_.Radius = L_57_.FOV * 3;
		L_113_.Position = L_1768_ and library_flags["aimbotEnabled"] and Vector2.new(L_34_.ViewportSize.X / 2, L_34_.ViewportSize.Y / 2) or Vector2.new(-2000, -2000)
		L_114_.Radius = L_57_.silentFOV * 3;
		L_114_.Position = L_1768_ and L_57_.silentAim and Vector2.new(L_34_.ViewportSize.X / 2, L_34_.ViewportSize.Y / 2) or Vector2.new(-2000, -2000)
	end
end)    
end