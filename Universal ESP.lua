local Main = Instance.new("BillboardGui");
Main.Name = "";
Main.AlwaysOnTop = true;
Main.LightInfluence = 0;
Main.Size = UDim2.new(1.75, 0, 1.75, 0);
local mainFrame = Instance.new("Frame", Main);
mainFrame.BackgroundColor3 = Color3.fromRGB(0, 4, 255);
mainFrame.Size = UDim2.new(1, 0, 1, 0);
mainFrame.BorderSizePixel = 4;
mainFrame.BorderColor3 = Color3.fromRGB(0, 4, 255);
local Other = Main:Clone();
local Body = mainFrame:Clone();
Body.Parent = Other;
Body.BackgroundColor3 = Color3.fromRGB(0, 4, 255);

for _, v in pairs(game:GetService("Players"):GetPlayers()) do
    if v.Name ~= game:GetService("Players").LocalPlayer.Name and v.Character and v.Character:FindFirstChild("Head") then
        Main:Clone().Parent = v.Character.Head;
    end
end