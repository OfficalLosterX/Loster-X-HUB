local a=Instance.new("ScreenGui")local b=Instance.new("Frame")local c=Instance.new("UICorner")local d=Instance.new("TextLabel")local e=Instance.new("TextLabel")local f=Instance.new("Frame")local g=Instance.new("Frame")local h=Instance.new("UICorner")local i=Instance.new("UIGradient")local j=Instance.new("UICorner")local k=Instance.new("UIGradient")local l=Instance.new("TextLabel")a.Parent=game.CoreGui;a.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;b.Name="lR0aDGsThllQhWODPEwUgcQZOcnj3jbv"b.Parent=a;b.AnchorPoint=Vector2.new(0.5,0.5)b.BackgroundColor3=Color3.fromRGB(255,255,255)b.Position=UDim2.new(0.499742657,0,0.5,0)b.Size=UDim2.new(0,235,0,235)c.CornerRadius=UDim.new(0,10)c.Parent=b;d.Name="Title"d.Parent=b;d.BackgroundColor3=Color3.fromRGB(255,255,255)d.BackgroundTransparency=1.000;d.Size=UDim2.new(0,235,0,30)d.Font=Enum.Font.SourceSansBold;d.Text="[Error - 0]"d.TextColor3=Color3.fromRGB(255,255,255)d.TextSize=24.000;d.TextStrokeTransparency=0.000;e.Name="Version"e.Parent=b;e.BackgroundColor3=Color3.fromRGB(255,255,255)e.BackgroundTransparency=1.000;e.Position=UDim2.new(0.0255319141,0,0.893617034,0)e.Size=UDim2.new(0,87,0,25)e.Font=Enum.Font.SourceSansBold;e.Text="[Error - 0]"e.TextColor3=Color3.fromRGB(255,255,255)e.TextSize=12.000;e.TextTransparency=0.800;e.TextXAlignment=Enum.TextXAlignment.Left;f.Name="Bar"f.Parent=b;f.BackgroundColor3=Color3.fromRGB(255,255,255)f.BackgroundTransparency=0.800;f.BorderColor3=Color3.fromRGB(27,42,53)f.ClipsDescendants=true;f.Position=UDim2.new(0.136170208,0,0.740425527,0)f.Size=UDim2.new(0,170,0,30)g.Name="Bar"g.Parent=f;g.BackgroundColor3=Color3.fromRGB(255,255,255)g.Position=UDim2.new(0.00588235259,0,0,0)g.Size=UDim2.new(0,170,0,30)h.CornerRadius=UDim.new(0,10)h.Parent=g;i.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.00,Color3.fromRGB(70,255,70)),ColorSequenceKeypoint.new(1.00,Color3.fromRGB(0,225,0))}i.Rotation=90;i.Parent=g;j.CornerRadius=UDim.new(0,10)j.Parent=f;k.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.00,Color3.fromRGB(155,65,255)),ColorSequenceKeypoint.new(1.00,Color3.fromRGB(125,0,208))}k.Rotation=90;k.Parent=b;l.Name="Info"l.Parent=b;l.BackgroundColor3=Color3.fromRGB(255,255,255)l.BackgroundTransparency=1.000;l.Position=UDim2.new(0.314893633,0,0.608510673,0)l.Size=UDim2.new(0,87,0,25)l.Font=Enum.Font.SourceSansBold;l.Text=_G.LoadingInfo[1]l.TextColor3=Color3.fromRGB(255,255,255)l.TextSize=14.000;l.TextTransparency=0.500;local function m()local n=Instance.new('LocalScript',b)local d=n.Parent.Title;local o=n.Parent.Version;local b=n.Parent;local p=n.Parent.Bar;local f=p.Bar;local q=n.Parent.Info;local r=game:GetService("TweenService")d.Text="Loster X ".._G.UIName;o.Text=_G.Version;b.Size=UDim2.new(0,0,0,0)d.Transparency=1;d.TextStrokeTransparency=1;o.Transparency=1;p.Transparency=1;f.Size=UDim2.new(0,0,0,30)f.Visible=false;q.TextTransparency=1;wait(1)r:Create(b,TweenInfo.new(0.75,Enum.EasingStyle.Quint,Enum.EasingDirection.Out,0,false,0),{Size=UDim2.new(0,235,0,235)}):Play()wait(1)r:Create(d,TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.Out,0,false,0),{TextTransparency=0,TextStrokeTransparency=0}):Play()r:Create(o,TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.Out,0,false,0),{TextTransparency=0.8}):Play()r:Create(p,TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.Out,0,false,0),{Transparency=0.75}):Play()r:Create(q,TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.Out,0,false,0),{TextTransparency=0.5}):Play()wait(0.45)f.Visible=true;r:Create(f,TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0),{Size=UDim2.new(0,30,0,30)}):Play()q.Text=_G.LoadingInfo[1]wait(0.35)r:Create(f,TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0),{Size=UDim2.new(0,85,0,30)}):Play()q.Text=_G.LoadingInfo[2]wait(0.35)r:Create(f,TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,0),{Size=UDim2.new(0,100,0,30)}):Play()q.Text=_G.LoadingInfo[9]wait(1)wait(1)r:Create(d,TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.In,0,false,0),{TextTransparency=1,TextStrokeTransparency=1}):Play()r:Create(o,TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.In,0,false,0),{TextTransparency=1}):Play()r:Create(p,TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.In,0,false,0),{Transparency=1}):Play()r:Create(q,TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.In,0,false,0),{TextTransparency=1}):Play()r:Create(f,TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.In,0,false,0),{Transparency=1}):Play()wait(0.75)r:Create(b,TweenInfo.new(0.75,Enum.EasingStyle.Quint,Enum.EasingDirection.In,0,false,0),{Size=UDim2.new(0,0,0,0)}):Play()wait(5)b:Destroy()end;coroutine.wrap(m)()