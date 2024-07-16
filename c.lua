
local EgoId = {
	[0] = true,
}

local fedId = {
	[0] = true,
}

local ThugId = {
	[5837453825] = true,
  [3261017455] = true,
}

local StarId = {
	[0] = true,
}

local SkidId = {
    [0] = true,
}

local OwnerId = {
	[5620806196] = true,
}

local EnemyId = {
	[0] = true,
} 

function premium()
	for _,v in pairs(game:GetService('Players'):GetChildren()) do
		if StarId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐]'..v.DisplayName)
				end
			end
		elseif SkidId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💩]'..v.DisplayName)
				end
			end
        elseif ThugId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🛡️]'..v.DisplayName)
				end
			end
	elseif EgoId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('null'..v.DisplayName)
				end
			end
        elseif fedId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('null'..v.DisplayName)
				end
			end
		elseif OwnerId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑]'..v.DisplayName)
				end
			end
		elseif EnemyId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('null')
				end
			end
		elseif v.Character then
			if v.Character.Parent.Name == 'Players' then
				if not v.Character.UpperTorso:FindFirstChild('BodyBackAttachment') then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😎]'..v.DisplayName)
				end
			end
		end
	end
end
local success,err = pcall(premium)
return StarId
