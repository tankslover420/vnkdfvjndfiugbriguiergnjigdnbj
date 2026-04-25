shared.LoaderTitle = 'barbecue blox kid'
shared.LoaderKeyFrames = {
    {1, 10},
    {2, 30},
    {3, 60},
    {2, 100},
}

-- Color palette
local _C = {
    BG        = Color3.fromRGB(10,  11,  15),
    Card      = Color3.fromRGB(16,  17,  23),
    Border    = Color3.fromRGB(30,  32,  42),
    Accent    = Color3.fromRGB(255, 110, 40),
    AccentDim = Color3.fromRGB(120, 50,  15),
    White     = Color3.fromRGB(255, 255, 255),
    Grey      = Color3.fromRGB(140, 145, 160),
    DarkGrey  = Color3.fromRGB(35,  37,  48),
    BarBG     = Color3.fromRGB(22,  23,  30),
}

local u2 = {
    'Waiting for character...',
    'Waiting for player data...',
    'Loading UI library...',
    'Done!',
}

local _TS = game:GetService('TweenService')

function TweenObject(p3, p4, p5)
    _TS:Create(p3, TweenInfo.new(p4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), p5):Play()
end
function TweenObjectLinear(p3, p4, p5)
    _TS:Create(p3, TweenInfo.new(p4, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), p5):Play()
end
function CreateObject(p6, p7)
    local v8 = Instance.new(p6)
    local v9, v10, v11 = pairs(p7)
    local v12 = nil
    while true do
        local v13
        v11, v13 = v9(v10, v11)
        if v11 == nil then break end
        if v11 == 'Parent' then v12 = v13 else v8[v11] = v13 end
    end
    v8.Parent = v12
    return v8
end
local function v17(p14, p15)
    local _c = Instance.new('UICorner')
    _c.CornerRadius = UDim.new(0, p14)
    _c.Parent = p15
end
local function AddStroke(parent, color, thickness)
    local s = Instance.new('UIStroke')
    s.Color = color
    s.Thickness = thickness
    s.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    s.Parent = parent
end

-- Root ScreenGui
local _ScreenGui = CreateObject('ScreenGui', {
    Name = 'BarbecueLoader',
    Parent = game.CoreGui,
    DisplayOrder = 999,
    IgnoreGuiInset = true,
})

-- Full-screen dark backdrop
local _Backdrop = CreateObject('Frame', {
    Name = 'Backdrop',
    Parent = _ScreenGui,
    BackgroundColor3 = Color3.fromRGB(0, 0, 0),
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    Size = UDim2.fromScale(1, 1),
})

-- Main card
local _Frame = CreateObject('Frame', {
    Name = 'Card',
    Parent = _ScreenGui,
    BackgroundColor3 = _C.Card,
    BorderSizePixel = 0,
    ClipsDescendants = false,
    Position = UDim2.new(0.5, 0, 0.5, 0),
    AnchorPoint = Vector2.new(0.5, 0.5),
    Size = UDim2.new(0, 0, 0, 0),
})
v17(16, _Frame)
AddStroke(_Frame, _C.Border, 1.5)

-- Glowing top accent bar
local _AccentBar = CreateObject('Frame', {
    Name = 'AccentBar',
    Parent = _Frame,
    BackgroundColor3 = _C.Accent,
    BorderSizePixel = 0,
    Position = UDim2.new(0, 0, 0, 0),
    Size = UDim2.new(1, 0, 0, 3),
})
v17(16, _AccentBar)

-- Subtle inner glow behind logo
local _LogoBG = CreateObject('Frame', {
    Name = 'LogoBG',
    Parent = _Frame,
    BackgroundColor3 = _C.AccentDim,
    BackgroundTransparency = 0.6,
    BorderSizePixel = 0,
    Position = UDim2.new(0, 18, 0, 18),
    Size = UDim2.new(0, 64, 0, 64),
})
v17(14, _LogoBG)

-- Logo image
local _Logo = CreateObject('ImageLabel', {
    Name = 'Logo',
    Parent = _Frame,
    BackgroundTransparency = 1,
    Image = 'rbxassetid://78400481570002',
    Position = UDim2.new(0, 18, 0, 18),
    Size = UDim2.new(0, 64, 0, 64),
    ScaleType = Enum.ScaleType.Fit,
})
v17(12, _Logo)

-- Title: "barbecue"
local _Title1 = CreateObject('TextLabel', {
    Name = 'Title1',
    Parent = _Frame,
    BackgroundTransparency = 1,
    Text = 'barbecue',
    Font = Enum.Font.GothamBlack,
    TextColor3 = _C.Accent,
    TextSize = 22,
    TextXAlignment = Enum.TextXAlignment.Left,
    TextTransparency = 1,
    Position = UDim2.new(0, 96, 0, 16),
    Size = UDim2.new(0, 240, 0, 26),
})

-- Title: "blox kid hub"
local _Title2 = CreateObject('TextLabel', {
    Name = 'Title2',
    Parent = _Frame,
    BackgroundTransparency = 1,
    Text = 'blox kid hub',
    Font = Enum.Font.GothamBold,
    TextColor3 = _C.White,
    TextSize = 16,
    TextXAlignment = Enum.TextXAlignment.Left,
    TextTransparency = 1,
    Position = UDim2.new(0, 96, 0, 42),
    Size = UDim2.new(0, 240, 0, 20),
})

-- Community tag
local _Tag = CreateObject('TextLabel', {
    Name = 'Tag',
    Parent = _Frame,
    BackgroundTransparency = 1,
    Text = 'community edition',
    Font = Enum.Font.Gotham,
    TextColor3 = _C.Grey,
    TextSize = 11,
    TextXAlignment = Enum.TextXAlignment.Left,
    TextTransparency = 1,
    Position = UDim2.new(0, 96, 0, 63),
    Size = UDim2.new(0, 240, 0, 16),
})

-- Divider
local _Divider = CreateObject('Frame', {
    Name = 'Divider',
    Parent = _Frame,
    BackgroundColor3 = _C.Border,
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    Position = UDim2.new(0, 18, 0, 96),
    Size = UDim2.new(1, -36, 0, 1),
})

-- Progress bar track
local _Frame2 = CreateObject('Frame', {
    Name = 'BarTrack',
    Parent = _Frame,
    BackgroundColor3 = _C.BarBG,
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    Position = UDim2.new(0, 18, 0, 112),
    Size = UDim2.new(1, -36, 0, 8),
})
v17(4, _Frame2)

-- Progress bar fill
local _Frame3 = CreateObject('Frame', {
    Name = 'BarFill',
    Parent = _Frame2,
    BackgroundColor3 = _C.Accent,
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    Size = UDim2.new(0, 0, 1, 0),
})
v17(4, _Frame3)

-- Shimmer overlay on bar fill
local _Shimmer = CreateObject('Frame', {
    Name = 'Shimmer',
    Parent = _Frame3,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 0.7,
    BorderSizePixel = 0,
    Position = UDim2.new(-0.4, 0, 0, 0),
    Size = UDim2.new(0.35, 0, 1, 0),
})
v17(4, _Shimmer)

-- Step text (left-aligned)
local _TextLabel3 = CreateObject('TextLabel', {
    Name = 'StepLabel',
    Parent = _Frame,
    BackgroundTransparency = 1,
    Text = '',
    Font = Enum.Font.Gotham,
    TextColor3 = _C.Grey,
    TextSize = 11,
    TextXAlignment = Enum.TextXAlignment.Left,
    TextTransparency = 1,
    Position = UDim2.new(0, 18, 0, 128),
    Size = UDim2.new(0.7, 0, 0, 16),
})

-- Percentage label (right-aligned, orange)
local _PctLabel = CreateObject('TextLabel', {
    Name = 'PctLabel',
    Parent = _Frame,
    BackgroundTransparency = 1,
    Text = '0%',
    Font = Enum.Font.GothamBold,
    TextColor3 = _C.Accent,
    TextSize = 11,
    TextXAlignment = Enum.TextXAlignment.Right,
    TextTransparency = 1,
    Position = UDim2.new(0, 18, 0, 128),
    Size = UDim2.new(1, -36, 0, 16),
})

-- Four step dots
local _DotsFrame = CreateObject('Frame', {
    Name = 'Dots',
    Parent = _Frame,
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    Position = UDim2.new(0.5, 0, 0, 152),
    AnchorPoint = Vector2.new(0.5, 0),
    Size = UDim2.new(0, 80, 0, 8),
})
local _Dots = {}
for _di = 1, 4 do
    local _dot = CreateObject('Frame', {
        Name = 'Dot' .. _di,
        Parent = _DotsFrame,
        BackgroundColor3 = _C.DarkGrey,
        BackgroundTransparency = 0,
        BorderSizePixel = 0,
        Position = UDim2.new(0, (_di - 1) * 22, 0, 0),
        Size = UDim2.new(0, 8, 0, 8),
    })
    v17(4, _dot)
    _Dots[_di] = _dot
end

function UpdateStepText(p25)
    _TextLabel3.Text = u2[p25] or ''
    for _di2 = 1, 4 do
        if _di2 <= p25 then
            TweenObjectLinear(_Dots[_di2], 0.3, { BackgroundColor3 = _C.Accent })
        end
    end
end
function UpdatePercentage(p26, p27)
    TweenObject(_Frame3, 0.6, {
        Size = UDim2.new(p26 / 100, 0, 1, 0),
    })
    _PctLabel.Text = tostring(p26) .. '%'
    UpdateStepText(p27)
    _Shimmer.Position = UDim2.new(-0.4, 0, 0, 0)
    TweenObjectLinear(_Shimmer, 0.9, { Position = UDim2.new(1.1, 0, 0, 0) })
end

-- Entrance animation
TweenObjectLinear(_Backdrop, 0.3, { BackgroundTransparency = 0.45 })
TweenObject(_Frame, 0.35, {
    Size = UDim2.new(0, 420, 0, 172),
})
task.wait(0.38)
TweenObjectLinear(_Title1,  0.4, { TextTransparency = 0 })
task.wait(0.07)
TweenObjectLinear(_Title2,  0.4, { TextTransparency = 0 })
task.wait(0.07)
TweenObjectLinear(_Tag,     0.4, { TextTransparency = 0 })
task.wait(0.07)
TweenObjectLinear(_Divider, 0.4, { BackgroundTransparency = 0 })
TweenObjectLinear(_Frame2,  0.4, { BackgroundTransparency = 0 })
TweenObjectLinear(_Frame3,  0.4, { BackgroundTransparency = 0 })
TweenObjectLinear(_TextLabel3, 0.4, { TextTransparency = 0 })
TweenObjectLinear(_PctLabel,   0.4, { TextTransparency = 0 })
task.wait(0.45)

local v31 = _Frame3

-- Aliases so original variable names in step logic still resolve
local _TextLabel  = _Title1
local _TextLabel2 = _Title2

-- -- STEP 1: Wait for character & HumanoidRootPart ----------------------------
UpdatePercentage(10, 1)
local _lp = game:GetService('Players').LocalPlayer
if not _lp.Character or not _lp.Character:FindFirstChildOfClass('Humanoid') then
    _lp.CharacterAdded:Wait()
end
_lp.Character:WaitForChild('HumanoidRootPart', 15)
_lp.Character:WaitForChild('Humanoid', 15)
UpdatePercentage(25, 1)

-- -- STEP 2: Wait for player Data & Level to replicate ------------------------
UpdatePercentage(30, 2)
local _data = _lp:WaitForChild('Data', 15)
if _data then
    _data:WaitForChild('Level', 10)
end
-- Also wait for PlayerGui to be ready (needed by quest checks later)
_lp:WaitForChild('PlayerGui', 10)
UpdatePercentage(50, 2)

-- -- STEP 3: BarbecueUI -------------------------------------------------------
UpdatePercentage(55, 3)
local u33 = (function()

local TweenService     = game:GetService("TweenService")
local UIS              = game:GetService("UserInputService")
local RunService       = game:GetService("RunService")
local Players          = game:GetService("Players")
local lp               = Players.LocalPlayer

-- colours
local C = {
    WIN     = Color3.fromRGB(15,  16,  24),
    DARK    = Color3.fromRGB(12,  13,  19),
    BORDER  = Color3.fromRGB(30,  32,  48),
    BORDER2 = Color3.fromRGB(26,  27,  39),
    ACCENT  = Color3.fromRGB(255, 110,  40),
    ACCENT2 = Color3.fromRGB(255, 154,  92),
    HOVER   = Color3.fromRGB(19,  20,  30),
    TEXT    = Color3.fromRGB(200, 204, 216),
    TSEC    = Color3.fromRGB(90,  94, 116),
    THOV    = Color3.fromRGB(156, 161, 184),
    TDIM    = Color3.fromRGB(106, 110, 136),
    TRK     = Color3.fromRGB(30,  32,  48),
    KN      = Color3.fromRGB(58,  61,  82),
    SCR     = Color3.fromRGB(42,  43,  58),
    -- pre-baked button colours (rgba(255,110,40,0.1) on WIN)
    BTN_BG  = Color3.fromRGB(38,  19,   9),
    BTN_HV  = Color3.fromRGB(55,  28,  12),
    BTN_BR  = Color3.fromRGB(90,  42,  18),
    -- active tab bg
    TAB_ACT = Color3.fromRGB(48,  24,   8),
    -- toggle ON bg
    TGL_ON  = Color3.fromRGB(21,  14,  10),
    TGL_TRK = Color3.fromRGB(80,  34,  10),
}

local function N(cls, props, parent)
    local i = Instance.new(cls)
    for k,v in pairs(props or {}) do pcall(function() i[k]=v end) end
    if parent then i.Parent = parent end
    return i
end
local function TW(i,t,g) pcall(function()
    TweenService:Create(i,TweenInfo.new(t,Enum.EasingStyle.Quart,Enum.EasingDirection.Out),g):Play()
end) end
local function Corner(r,p) N("UICorner",{CornerRadius=UDim.new(0,r)},p) end
local function Stroke(col,thick,p)
    return N("UIStroke",{Color=col,Thickness=thick or 1,ApplyStrokeMode=Enum.ApplyStrokeMode.Border},p)
end
local function List(gap,dir,p)
    return N("UIListLayout",{Padding=UDim.new(0,gap or 0),FillDirection=dir or Enum.FillDirection.Vertical,SortOrder=Enum.SortOrder.LayoutOrder},p)
end
local function AutoCanvas(sf,lay)
    lay:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        sf.CanvasSize = UDim2.new(0,0,0,lay.AbsoluteContentSize.Y+4)
    end)
end
local function Safe(fn,...) if type(fn)=="function" then pcall(fn,...) end end

-- ── Library ──────────────────────────────────────────────────────────────────
local Lib = { Options={}, GUI=nil, _min=false }

-- ── Notifications ─────────────────────────────────────────────────────────────
function Lib:Notify(cfg)
    if not self.GUI then return end
    local holder = self.GUI:FindFirstChild("_NH")
    if not holder then
        holder = N("Frame",{Name="_NH",Size=UDim2.new(0,280,1,-16),Position=UDim2.new(1,-292,0,8),BackgroundTransparency=1,ZIndex=200},self.GUI)
        local l=List(8,nil,holder); l.VerticalAlignment=Enum.VerticalAlignment.Bottom
    end
    local f=N("Frame",{Size=UDim2.new(1,0,0,66),BackgroundColor3=C.DARK,ZIndex=200,Parent=holder})
    Corner(8,f); Stroke(C.BORDER2,1,f)
    N("Frame",{Size=UDim2.new(1,0,0,2),BackgroundColor3=C.ACCENT,ZIndex=201},f)
    N("TextLabel",{Text=cfg.Title or"Notice",Font=Enum.Font.GothamBold,TextSize=12,TextColor3=C.ACCENT,BackgroundTransparency=1,Size=UDim2.new(1,-16,0,16),Position=UDim2.fromOffset(10,8),TextXAlignment=Enum.TextXAlignment.Left,ZIndex=201},f)
    N("TextLabel",{Text=cfg.Content or"",Font=Enum.Font.Gotham,TextSize=11,TextColor3=C.TEXT,BackgroundTransparency=1,Size=UDim2.new(1,-20,0,34),Position=UDim2.fromOffset(10,26),TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,ZIndex=201},f)
    task.delay(cfg.Duration or 4,function()
        TW(f,0.3,{BackgroundTransparency=1,Size=UDim2.new(1,0,0,0)})
        task.wait(0.35); pcall(function() f:Destroy() end)
    end)
end

-- ── Element builders ──────────────────────────────────────────────────────────
local function mkToggle(con,lib,id,cfg)
    cfg=cfg or {}
    local val=cfg.Default or false
    local row=N("TextButton",{Size=UDim2.new(1,-20,0,34),BackgroundColor3=C.WIN,AutoButtonColor=false,Text="",BorderSizePixel=0})
    Corner(8,row)
    local sk=Stroke(C.BORDER2,1,row)

    N("TextLabel",{Text=cfg.Title or id,Font=Enum.Font.Gotham,TextSize=12,TextColor3=C.TEXT,BackgroundTransparency=1,Size=UDim2.new(1,-50,1,0),Position=UDim2.fromOffset(12,0),TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center},row)

    local trk=N("Frame",{Size=UDim2.fromOffset(34,18),AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,0,0.5,0),BackgroundColor3=C.TRK,BorderSizePixel=0},row)
    Corner(9,trk)
    local kn=N("Frame",{Size=UDim2.fromOffset(13,13),Position=UDim2.fromOffset(3,2.5),BackgroundColor3=C.KN,BorderSizePixel=0},trk)
    Corner(7,kn)

    local obj={Value=val,Callback=cfg.Callback,Type="Toggle"}

    local function apply(v,fire)
        if v then
            row.BackgroundColor3=C.TGL_ON; sk.Color=C.ACCENT; sk.Transparency=0.7
            trk.BackgroundColor3=C.TGL_TRK
            TW(kn,0.22,{Position=UDim2.fromOffset(18,2.5),BackgroundColor3=C.ACCENT})
        else
            row.BackgroundColor3=C.WIN; sk.Color=C.BORDER2; sk.Transparency=0
            trk.BackgroundColor3=C.TRK
            TW(kn,0.22,{Position=UDim2.fromOffset(3,2.5),BackgroundColor3=C.KN})
        end
        if fire then Safe(obj.Callback,v); Safe(obj.Changed,v) end
    end

    function obj:SetValue(v) v=not not v; self.Value=v; apply(v,true) end
    function obj:OnChanged(fn) self.Changed=fn; fn(self.Value); return self end
    function obj:Destroy() row:Destroy(); if lib then lib.Options[id]=nil end end

    apply(val,false)
    row.MouseButton1Click:Connect(function() obj:SetValue(not obj.Value) end)
    row.MouseEnter:Connect(function() if not obj.Value then row.BackgroundColor3=C.HOVER end end)
    row.MouseLeave:Connect(function() if not obj.Value then row.BackgroundColor3=C.WIN end end)

    row.Parent=con
    if lib then lib.Options[id]=obj end
    return obj
end

local function mkButton(con,cfg)
    cfg=cfg or {}
    local b=N("TextButton",{Size=UDim2.new(1,-20,0,34),BackgroundColor3=C.BTN_BG,AutoButtonColor=false,Text=cfg.Title or"Button",Font=Enum.Font.GothamBold,TextSize=12,TextColor3=C.ACCENT,BorderSizePixel=0})
    Corner(8,b); Stroke(C.BTN_BR,1,b)
    b.MouseEnter:Connect(function() b.BackgroundColor3=C.BTN_HV end)
    b.MouseLeave:Connect(function() b.BackgroundColor3=C.BTN_BG end)
    b.MouseButton1Down:Connect(function() TW(b,0.07,{Size=UDim2.new(0.98,0,0,32)}) end)
    b.MouseButton1Up:Connect(function() TW(b,0.1,{Size=UDim2.new(1,-20,0,34)}) end)
    b.MouseButton1Click:Connect(function() Safe(cfg.Callback) end)
    b.Parent=con
    return {Type="Button"}
end

local function mkDropdown(con,lib,id,cfg)
    cfg=cfg or {}
    local vals=cfg.Values or {}
    local multi=cfg.Multi
    local cur=multi and {} or cfg.Default
    if multi and type(cfg.Default)=="table" then for _,v in ipairs(cfg.Default) do cur[v]=true end end

    local row=N("Frame",{Size=UDim2.new(1,-20,0,34),BackgroundColor3=C.HOVER,BorderSizePixel=0})
    Corner(8,row); local sk=Stroke(C.BORDER,1,row)
    N("TextLabel",{Text=cfg.Title or id,Font=Enum.Font.Gotham,TextSize=12,TextColor3=C.TEXT,BackgroundTransparency=1,Size=UDim2.new(0.55,0,1,0),Position=UDim2.fromOffset(12,0),TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center},row)
    local vl=N("TextLabel",{Text="--",Font=Enum.Font.Gotham,TextSize=11,TextColor3=C.TSEC,BackgroundTransparency=1,Size=UDim2.new(0.42,0,1,0),Position=UDim2.new(0.55,0,0,0),TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,TextTruncate=Enum.TextTruncate.AtEnd},row)
    local cb=N("TextButton",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,Text="",ZIndex=2},row)

    local obj={Values=vals,Value=cur,Multi=multi,Type="Dropdown"}
    local opened=false; local popup=nil

    local function disp()
        if multi then
            local p={}; for k,v in pairs(cur) do if v then p[#p+1]=k end end
            return #p>0 and table.concat(p,", ") or "--"
        else return cur or "--" end
    end

    local function close() opened=false; if popup then popup:Destroy(); popup=nil end end

    local function open()
        opened=true; if popup then popup:Destroy() end
        local sg=row:FindFirstAncestorOfClass("ScreenGui") or Lib.GUI
        if not sg then return end
        local ap=row.AbsolutePosition; local aw=row.AbsoluteSize.X
        local ph=math.min(#obj.Values*32+8,200)
        popup=N("Frame",{Size=UDim2.fromOffset(aw,ph),Position=UDim2.fromOffset(ap.X,ap.Y+row.AbsoluteSize.Y+4),BackgroundColor3=C.DARK,ZIndex=60,Parent=sg})
        Corner(8,popup); Stroke(C.BORDER,1,popup)
        local sf=N("ScrollingFrame",{Size=UDim2.new(1,-4,1,-4),Position=UDim2.fromOffset(2,2),BackgroundTransparency=1,BorderSizePixel=0,ScrollBarThickness=3,ScrollBarImageColor3=C.SCR,CanvasSize=UDim2.fromScale(0,0),ZIndex=61,Parent=popup})
        local lay=List(2,nil,sf); AutoCanvas(sf,lay)
        for _,v in ipairs(obj.Values) do
            local sel=multi and cur[v]==true or cur==v
            local opt=N("TextButton",{Size=UDim2.new(1,0,0,30),BackgroundColor3=sel and C.ACCENT or C.WIN,BackgroundTransparency=sel and 0.88 or 1,Text="",AutoButtonColor=false,ZIndex=62,Parent=sf})
            Corner(6,opt)
            N("TextLabel",{Text=tostring(v),Font=Enum.Font.Gotham,TextSize=12,TextColor3=sel and C.ACCENT or C.TEXT,BackgroundTransparency=1,Size=UDim2.new(1,-12,1,0),Position=UDim2.fromOffset(10,0),TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,ZIndex=63},opt)
            opt.MouseEnter:Connect(function() if not sel then opt.BackgroundTransparency=0.92; opt.BackgroundColor3=C.HOVER end end)
            opt.MouseLeave:Connect(function() if not sel then opt.BackgroundTransparency=1 end end)
            opt.MouseButton1Click:Connect(function()
                if multi then cur[v]=not cur[v] else cur=v; close() end
                obj.Value=cur; vl.Text=disp()
                Safe(obj.Callback,cur); Safe(obj.Changed,cur)
            end)
        end
        local conn; conn=UIS.InputBegan:Connect(function(inp)
            if inp.UserInputType==Enum.UserInputType.MouseButton1 then
                task.defer(function()
                    if not popup then conn:Disconnect(); return end
                    local m=UIS:GetMouseLocation(); local ap2=popup.AbsolutePosition; local as2=popup.AbsoluteSize
                    if m.X<ap2.X or m.X>ap2.X+as2.X or m.Y<ap2.Y or m.Y>ap2.Y+as2.Y then close(); conn:Disconnect() end
                end)
            end
        end)
    end

    cb.MouseButton1Click:Connect(function() if opened then close() else open() end end)
    cb.MouseEnter:Connect(function() sk.Color=C.ACCENT end)
    cb.MouseLeave:Connect(function() sk.Color=C.BORDER end)

    function obj:SetValue(v)
        if multi then cur={}; if type(v)=="table" then for _,k in ipairs(v) do cur[k]=true end end
        else cur=v end; obj.Value=cur; vl.Text=disp(); Safe(obj.Callback,cur); Safe(obj.Changed,cur)
    end
    function obj:SetValues(v) obj.Values=v end
    function obj:OnChanged(fn) obj.Changed=fn; fn(obj.Value); return self end
    function obj:Destroy() row:Destroy(); if lib then lib.Options[id]=nil end end

    vl.Text=disp(); row.Parent=con
    if lib then lib.Options[id]=obj end
    return obj
end

local function mkSlider(con,lib,id,cfg)
    cfg=cfg or {}
    local mn,mx,rnd=cfg.Min or 0,cfg.Max or 100,cfg.Rounding or 0
    local val=math.clamp(cfg.Default or mn,mn,mx)

    local row=N("Frame",{Size=UDim2.new(1,-20,0,50),BackgroundColor3=C.WIN,BorderSizePixel=0})
    Corner(8,row); Stroke(C.BORDER2,1,row)
    N("TextLabel",{Text=cfg.Title or id,Font=Enum.Font.Gotham,TextSize=12,TextColor3=C.TEXT,BackgroundTransparency=1,Size=UDim2.new(1,-60,0,14),Position=UDim2.fromOffset(12,9),TextXAlignment=Enum.TextXAlignment.Left},row)
    local vl=N("TextLabel",{Text=tostring(val),Font=Enum.Font.GothamBold,TextSize=11,TextColor3=C.ACCENT,BackgroundTransparency=1,Size=UDim2.fromOffset(54,14),Position=UDim2.new(1,-66,0,9),TextXAlignment=Enum.TextXAlignment.Right},row)
    local trk=N("Frame",{Size=UDim2.new(1,-24,0,4),Position=UDim2.fromOffset(12,30),BackgroundColor3=C.TRK,BorderSizePixel=0},row); Corner(2,trk)
    local fill=N("Frame",{Size=UDim2.new(0,0,1,0),BackgroundColor3=C.ACCENT,BorderSizePixel=0},trk); Corner(2,fill)
    N("UIGradient",{Color=ColorSequence.new{ColorSequenceKeypoint.new(0,C.ACCENT),ColorSequenceKeypoint.new(1,C.ACCENT2)}},fill)
    local thumb=N("Frame",{Size=UDim2.fromOffset(12,12),AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.new(0,0,0.5,0),BackgroundColor3=C.ACCENT,BorderSizePixel=0},trk); Corner(6,thumb)

    local obj={Value=val,Callback=cfg.Callback,Type="Slider"}; local drag=false

    local function set(v)
        v=math.clamp(v,mn,mx)
        if rnd==0 then v=math.floor(v+0.5) else local f=10^rnd; v=math.floor(v*f+0.5)/f end
        obj.Value=v; local p=(mx==mn)and 0 or(v-mn)/(mx-mn)
        fill.Size=UDim2.new(p,0,1,0); thumb.Position=UDim2.new(p,0,0.5,0); vl.Text=tostring(v)
        Safe(obj.Callback,v); Safe(obj.Changed,v)
    end

    function obj:SetValue(v) set(v) end
    function obj:OnChanged(fn) obj.Changed=fn; fn(obj.Value); return self end
    function obj:Destroy() row:Destroy(); if lib then lib.Options[id]=nil end end

    set(val)
    trk.InputBegan:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseButton1 then drag=true; local p=math.clamp((i.Position.X-trk.AbsolutePosition.X)/trk.AbsoluteSize.X,0,1); set(mn+(mx-mn)*p) end end)
    thumb.InputBegan:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseButton1 then drag=true end end)
    UIS.InputEnded:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseButton1 then drag=false end end)
    UIS.InputChanged:Connect(function(i) if drag and i.UserInputType==Enum.UserInputType.MouseMovement then local p=math.clamp((i.Position.X-trk.AbsolutePosition.X)/trk.AbsoluteSize.X,0,1); set(mn+(mx-mn)*p) end end)

    row.Parent=con
    if lib then lib.Options[id]=obj end
    return obj
end

local function mkParagraph(con,cfg)
    cfg=cfg or {}
    local f=N("Frame",{Size=UDim2.new(1,-20,0,0),AutomaticSize=Enum.AutomaticSize.Y,BackgroundColor3=C.DARK,BorderSizePixel=0})
    Corner(8,f); Stroke(C.BORDER2,1,f)
    local pad=N("UIPadding",{PaddingLeft=UDim.new(0,12),PaddingRight=UDim.new(0,12),PaddingTop=UDim.new(0,10),PaddingBottom=UDim.new(0,10)},f)
    List(5,nil,f)
    if cfg.Title and cfg.Title~="" then N("TextLabel",{Text=string.upper(cfg.Title),Font=Enum.Font.GothamBold,TextSize=10,TextColor3=C.ACCENT,BackgroundTransparency=1,Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.AutomaticSize.Y,TextXAlignment=Enum.TextXAlignment.Left},f) end
    local body=N("TextLabel",{Text=cfg.Content or"",Font=Enum.Font.Code,TextSize=11,TextColor3=C.TDIM,BackgroundTransparency=1,Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.AutomaticSize.Y,TextXAlignment=Enum.TextXAlignment.Left,TextWrapped=true,RichText=true},f)
    local obj={Type="Paragraph"}
    function obj:SetDesc(d) body.Text=d or"" end
    function obj:SetTitle(t) end
    f.Parent=con; return obj
end

local function mkInput(con,lib,id,cfg)
    cfg=cfg or {}
    local row=N("Frame",{Size=UDim2.new(1,-20,0,34),BackgroundColor3=C.WIN,BorderSizePixel=0})
    Corner(8,row); Stroke(C.BORDER2,1,row)
    N("TextLabel",{Text=cfg.Title or id,Font=Enum.Font.Gotham,TextSize=12,TextColor3=C.TEXT,BackgroundTransparency=1,Size=UDim2.new(0.5,0,1,0),Position=UDim2.fromOffset(12,0),TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center},row)
    local box=N("TextBox",{Size=UDim2.fromOffset(158,26),Position=UDim2.new(1,0,0.5,0),AnchorPoint=Vector2.new(1,0.5),BackgroundColor3=C.DARK,Font=Enum.Font.Gotham,TextSize=11,TextColor3=C.TEXT,PlaceholderText=cfg.Placeholder or"",PlaceholderColor3=C.TSEC,Text=cfg.Default or"",ClearTextOnFocus=false,BorderSizePixel=0},row)
    Corner(6,box); local bsk=Stroke(C.BORDER,1,box)
    N("UIPadding",{PaddingLeft=UDim.new(0,7),PaddingRight=UDim.new(0,7)},box)
    box.Focused:Connect(function() bsk.Color=C.ACCENT end)
    box.FocusLost:Connect(function() bsk.Color=C.BORDER end)
    local obj={Value=cfg.Default or"",Callback=cfg.Callback,Type="Input"}
    box:GetPropertyChangedSignal("Text"):Connect(function()
        local v=box.Text
        if cfg.Numeric then local n=tonumber(v); if not n and #v>0 then box.Text=obj.Value; return end end
        obj.Value=box.Text
        if not cfg.Finished then Safe(obj.Callback,obj.Value); Safe(obj.Changed,obj.Value) end
    end)
    box.FocusLost:Connect(function(enter) if cfg.Finished and enter then Safe(obj.Callback,obj.Value); Safe(obj.Changed,obj.Value) end end)
    function obj:SetValue(v) obj.Value=tostring(v); box.Text=obj.Value end
    function obj:OnChanged(fn) obj.Changed=fn; fn(obj.Value); return self end
    function obj:Destroy() row:Destroy(); if lib then lib.Options[id]=nil end end
    row.Parent=con; if lib then lib.Options[id]=obj end; return obj
end

local function mkKeybind(con,lib,id,cfg)
    cfg=cfg or {}
    local row=N("Frame",{Size=UDim2.new(1,-20,0,34),BackgroundColor3=C.WIN,BorderSizePixel=0})
    Corner(8,row); Stroke(C.BORDER2,1,row)
    N("TextLabel",{Text=cfg.Title or id,Font=Enum.Font.Gotham,TextSize=12,TextColor3=C.TEXT,BackgroundTransparency=1,Size=UDim2.new(1,-120,1,0),Position=UDim2.fromOffset(12,0),TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center},row)
    local kb=N("TextButton",{Size=UDim2.fromOffset(108,26),Position=UDim2.new(1,0,0.5,0),AnchorPoint=Vector2.new(1,0.5),BackgroundColor3=C.DARK,Text=tostring(cfg.Default or"None"),Font=Enum.Font.Gotham,TextSize=11,TextColor3=C.TEXT,AutoButtonColor=false,BorderSizePixel=0},row)
    Corner(6,kb); Stroke(C.BORDER,1,kb)
    local obj={Value=tostring(cfg.Default or"None"),Toggled=false,Mode=cfg.Mode or"Toggle",Callback=cfg.Callback,Type="Keybind"}
    local listening=false
    function obj:GetState()
        if UIS:GetFocusedTextBox() and obj.Mode~="Always" then return false end
        if obj.Mode=="Always" then return true
        elseif obj.Mode=="Hold" then
            if obj.Value=="None" then return false end
            if obj.Value=="MouseLeft" then return UIS:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) end
            if obj.Value=="MouseRight" then return UIS:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) end
            local ok,d=pcall(function() return UIS:IsKeyDown(Enum.KeyCode[obj.Value]) end); return ok and d or false
        else return obj.Toggled end
    end
    function obj:SetValue(v,m) obj.Value=v or obj.Value; obj.Mode=m or obj.Mode; kb.Text=obj.Value end
    function obj:OnChanged(fn) obj.Changed=fn; fn(obj.Value); return self end
    function obj:OnClick(fn) obj.Clicked=fn end
    function obj:DoClick() Safe(obj.Callback,obj.Toggled); Safe(obj.Clicked,obj.Toggled) end
    function obj:Destroy() row:Destroy(); if lib then lib.Options[id]=nil end end
    kb.MouseButton1Click:Connect(function()
        if listening then return end; listening=true; kb.Text="..."
        local conn; conn=UIS.InputBegan:Connect(function(inp)
            local key
            if inp.UserInputType==Enum.UserInputType.Keyboard then key=inp.KeyCode.Name
            elseif inp.UserInputType==Enum.UserInputType.MouseButton1 then key="MouseLeft"
            elseif inp.UserInputType==Enum.UserInputType.MouseButton2 then key="MouseRight" end
            if key then obj.Value=key; kb.Text=key; listening=false; Safe(obj.ChangedCallback,inp.KeyCode or inp.UserInputType); Safe(obj.Changed,inp.KeyCode or inp.UserInputType); conn:Disconnect() end
        end)
    end)
    UIS.InputBegan:Connect(function(inp)
        if listening or UIS:GetFocusedTextBox() then return end
        if obj.Mode=="Toggle" and inp.UserInputType==Enum.UserInputType.Keyboard and inp.KeyCode.Name==obj.Value then
            obj.Toggled=not obj.Toggled; obj:DoClick()
        end
    end)
    row.Parent=con; if lib then lib.Options[id]=obj end; return obj
end

local function mkColorpicker(con,lib,id,cfg)
    cfg=cfg or {}
    local row=N("Frame",{Size=UDim2.new(1,-20,0,34),BackgroundColor3=C.WIN,BorderSizePixel=0})
    Corner(8,row); Stroke(C.BORDER2,1,row)
    N("TextLabel",{Text=cfg.Title or id,Font=Enum.Font.Gotham,TextSize=12,TextColor3=C.TEXT,BackgroundTransparency=1,Size=UDim2.new(1,-50,1,0),Position=UDim2.fromOffset(12,0),TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center},row)
    local prev=N("Frame",{Size=UDim2.fromOffset(26,26),AnchorPoint=Vector2.new(1,0.5),Position=UDim2.new(1,0,0.5,0),BackgroundColor3=cfg.Default or C.ACCENT,BorderSizePixel=0},row)
    Corner(4,prev); Stroke(C.BORDER,1,prev)
    local obj={Value=cfg.Default or C.ACCENT,Callback=cfg.Callback,Type="Colorpicker"}
    function obj:SetValue(hsv,_) local c=Color3.fromHSV(hsv[1],hsv[2],hsv[3]); obj.Value=c; prev.BackgroundColor3=c; Safe(obj.Callback,c); Safe(obj.Changed,c) end
    function obj:SetValueRGB(c) obj.Value=c; prev.BackgroundColor3=c; Safe(obj.Callback,c); Safe(obj.Changed,c) end
    function obj:OnChanged(fn) obj.Changed=fn; fn(obj.Value); return self end
    function obj:Destroy() row:Destroy(); if lib then lib.Options[id]=nil end end
    row.Parent=con; if lib then lib.Options[id]=obj end; return obj
end

-- ── Section header ─────────────────────────────────────────────────────────────
local function mkHeader(text, parent)
    local h=N("TextLabel",{
        Text=string.upper(text or""),
        Size=UDim2.new(1,-20,0,18),
        BackgroundTransparency=1,
        TextColor3=C.ACCENT,
        Font=Enum.Font.GothamBold,
        TextSize=11,
        TextXAlignment=Enum.TextXAlignment.Left,
        TextYAlignment=Enum.TextYAlignment.Center,
        Parent=parent,
    })
    -- underline
    N("Frame",{Size=UDim2.new(1,0,0,1),Position=UDim2.new(0,0,1,-1),BackgroundColor3=C.BORDER,BorderSizePixel=0},h)
    return h
end

-- ── Tab metatable ──────────────────────────────────────────────────────────────
local TM={}; TM.__index=TM

function TM:AddSection(title)
    mkHeader(title, self._con)
    local inner=N("Frame",{Size=UDim2.new(1,0,0,0),BackgroundTransparency=1,AutomaticSize=Enum.AutomaticSize.Y,Parent=self._con})
    List(6,nil,inner)
    return setmetatable({_con=inner,_lib=self._lib},TM)
end
function TM:AddToggle(id,cfg)      return mkToggle(self._con,self._lib,id,cfg) end
function TM:AddButton(cfg)         return mkButton(self._con,cfg) end
function TM:AddDropdown(id,cfg)    return mkDropdown(self._con,self._lib,id,cfg) end
function TM:AddSlider(id,cfg)      return mkSlider(self._con,self._lib,id,cfg) end
function TM:AddParagraph(cfg)      return mkParagraph(self._con,cfg) end
function TM:AddInput(id,cfg)       return mkInput(self._con,self._lib,id,cfg) end
function TM:AddKeybind(id,cfg)     return mkKeybind(self._con,self._lib,id,cfg) end
function TM:AddColorpicker(id,cfg) return mkColorpicker(self._con,self._lib,id,cfg) end

-- ── CreateWindow ───────────────────────────────────────────────────────────────
function Lib:CreateWindow(cfg)
    cfg=cfg or {}
    local W=(cfg.Size and cfg.Size.X.Offset) or 560
    local H=(cfg.Size and cfg.Size.Y.Offset) or 420
    local TAB_W=cfg.TabWidth or 148
    local TH=44
    local minKey=cfg.MinimizeKey or Enum.KeyCode.Insert
    local vp=workspace.CurrentCamera.ViewportSize

    -- ScreenGui
    local sg=N("ScreenGui",{Name="BBQHub",ResetOnSpawn=false,ZIndexBehavior=Enum.ZIndexBehavior.Sibling,DisplayOrder=10})
    local function parentGui(g)
        if gethui then pcall(function() g.Parent=gethui() end); if g.Parent then return end end
        if syn and syn.protect_gui then pcall(function() syn.protect_gui(g); g.Parent=game:GetService("CoreGui") end); if g.Parent then return end end
        pcall(function() g.Parent=game:GetService("CoreGui") end); if g.Parent then return end
        pcall(function() g.Parent=lp:WaitForChild("PlayerGui",5) end)
    end
    parentGui(sg); self.GUI=sg

    sg.AncestryChanged:Connect(function()
        if not sg.Parent then task.defer(function() parentGui(sg) end) end
    end)
    lp.CharacterAdded:Connect(function()
        task.wait(0.1); if sg and sg.Parent then sg.Enabled=true end
    end)

    -- WINDOW
    local window=N("Frame",{
        Name="Window", Size=UDim2.fromOffset(W,H),
        Position=UDim2.fromOffset(math.floor(vp.X/2-W/2), math.floor(vp.Y/2-H/2)),
        BackgroundColor3=C.WIN, BorderSizePixel=0, Parent=sg,
    })
    Corner(14,window)
    Stroke(C.BORDER,1.5,window)

    -- TITLEBAR
    local tbar=N("Frame",{Size=UDim2.new(1,0,0,TH),BackgroundColor3=C.DARK,BorderSizePixel=0,Parent=window})
    -- round only top corners of titlebar
    Corner(14,tbar)
    N("Frame",{Size=UDim2.new(1,0,0,14),Position=UDim2.new(0,0,1,-14),BackgroundColor3=C.DARK,BorderSizePixel=0,Parent=tbar})
    -- bottom divider
    N("Frame",{Size=UDim2.new(1,0,0,1),Position=UDim2.new(0,0,1,-1),BackgroundColor3=C.BORDER2,BorderSizePixel=0,Parent=tbar})

    -- ACCENT BAR — must be tall enough for UICorner(14) to actually round properly.
    -- Height = TH (44px). UIGradient Transparency fades it out after ~3px so only
    -- the top strip is visible, but the corners are properly rounded.
    local accent=N("Frame",{
        Size=UDim2.new(1,0,0,TH),
        BackgroundColor3=C.ACCENT,
        BorderSizePixel=0, ZIndex=8, Parent=window,
    })
    Corner(14,accent)
    N("UIGradient",{
        Color=ColorSequence.new{
            ColorSequenceKeypoint.new(0,   C.ACCENT),
            ColorSequenceKeypoint.new(0.5, C.ACCENT2),
            ColorSequenceKeypoint.new(1,   C.ACCENT),
        },
        Transparency=NumberSequence.new{
            NumberSequenceKeypoint.new(0,    0),   -- fully opaque at very top
            NumberSequenceKeypoint.new(0.07, 1),   -- fade to transparent (~3px into 44px frame)
            NumberSequenceKeypoint.new(1,    1),   -- rest fully transparent
        },
        Rotation=90,  -- gradient runs top-to-bottom
    }, accent)
    -- shimmer animation
    task.spawn(function()
        local t=0
        while window.Parent do
            t = t + RunService.RenderStepped:Wait() * 0.25
            -- animate by shifting hue slightly via offset on color gradient
        end
    end)

    -- MAC DOTS
    local dotPos = {12, 28, 44}
    local dotCol = {Color3.fromRGB(255,95,87), Color3.fromRGB(254,188,46), Color3.fromRGB(40,200,64)}
    for i=1,3 do
        local d=N("Frame",{Size=UDim2.fromOffset(11,11),Position=UDim2.fromOffset(dotPos[i],(TH-11)/2),BackgroundColor3=dotCol[i],BorderSizePixel=0,ZIndex=2,Parent=tbar})
        Corner(6,d)
    end

    -- TITLE TEXT
    N("TextLabel",{
        Text=(cfg.SubTitle or "").." | "..(cfg.Title or "Hub"),
        Font=Enum.Font.GothamSemibold, TextSize=12,
        TextColor3=Color3.fromRGB(140,145,160),
        BackgroundTransparency=1, Size=UDim2.new(1,-46,1,0),
        TextXAlignment=Enum.TextXAlignment.Center, ZIndex=2, Parent=tbar,
    })

    -- MOBILE TOGGLE BUTTON — top-right of titlebar, shows hub icon asset
    -- Tapping it hides/shows the window (same as Insert key on PC)
    local mobileBtn = N("ImageButton",{
        Size            = UDim2.fromOffset(30,30),
        Position        = UDim2.new(1,-38,0.5,0),
        AnchorPoint     = Vector2.new(0,0.5),
        BackgroundColor3= C.BTN_BG,
        BorderSizePixel = 0,
        Image           = "rbxassetid://78400481570002",
        ScaleType       = Enum.ScaleType.Fit,
        ZIndex          = 5,
        Parent          = tbar,
    })
    Corner(8, mobileBtn)
    Stroke(C.BTN_BR, 1, mobileBtn)

    -- pulse glow when visible so mobile users can find it after minimizing
    local mobilePulse = N("ImageButton",{
        Size            = UDim2.fromOffset(44,44),
        AnchorPoint     = Vector2.new(0.5,0.5),
        Position        = UDim2.fromScale(0.5,0.5),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Image           = "rbxassetid://78400481570002",
        ScaleType       = Enum.ScaleType.Fit,
        ZIndex          = 10,
        Visible         = false,   -- only shown when window is hidden
        Parent          = sg,
    })
    -- anchor pulse button to top-right of screen
    mobilePulse.Position = UDim2.new(1,-54,0,10)
    mobilePulse.AnchorPoint = Vector2.new(0,0)
    Corner(12, mobilePulse)
    N("UIStroke",{Color=C.ACCENT,Thickness=2,ApplyStrokeMode=Enum.ApplyStrokeMode.Border},mobilePulse)

    -- animate pulse button
    task.spawn(function()
        while sg.Parent do
            if mobilePulse.Visible then
                TW(mobilePulse,0.6,{BackgroundTransparency=0.7,Size=UDim2.fromOffset(50,50)})
                task.wait(0.7)
                TW(mobilePulse,0.6,{BackgroundTransparency=0.9,Size=UDim2.fromOffset(44,44)})
                task.wait(0.7)
            else
                task.wait(0.5)
            end
        end
    end)

    local function doMinimize()
        Lib._min = not Lib._min
        window.Visible = not Lib._min
        mobilePulse.Visible = Lib._min   -- show floating button when window hidden
    end

    mobileBtn.MouseButton1Click:Connect(doMinimize)
    mobilePulse.MouseButton1Click:Connect(doMinimize)

    -- DRAG
    local dragging,dragStart,startPos=false,nil,nil
    tbar.InputBegan:Connect(function(inp)
        if inp.UserInputType==Enum.UserInputType.MouseButton1 then
            dragging=true; dragStart=inp.Position; startPos=window.Position
            inp.Changed:Connect(function() if inp.UserInputState==Enum.UserInputState.End then dragging=false end end)
        end
    end)
    UIS.InputChanged:Connect(function(inp)
        if dragging and inp.UserInputType==Enum.UserInputType.MouseMovement then
            local d=inp.Position-dragStart
            window.Position=UDim2.fromOffset(startPos.X.Offset+d.X, startPos.Y.Offset+d.Y)
        end
    end)

    -- BODY
    local body=N("Frame",{Size=UDim2.new(1,0,1,-TH),Position=UDim2.fromOffset(0,TH),BackgroundTransparency=1,Parent=window})

    -- SIDEBAR
    local sidebar=N("Frame",{Size=UDim2.new(0,TAB_W,1,0),BackgroundColor3=C.DARK,BorderSizePixel=0,Parent=body})
    -- right border
    N("Frame",{Size=UDim2.new(0,1,1,0),Position=UDim2.new(1,-1,0,0),BackgroundColor3=C.BORDER2,BorderSizePixel=0,Parent=sidebar})

    local tabScroll=N("ScrollingFrame",{
        Size=UDim2.fromScale(1,1), BackgroundTransparency=1, BorderSizePixel=0,
        ScrollBarThickness=3, ScrollBarImageColor3=C.SCR, ScrollBarImageTransparency=0.3,
        CanvasSize=UDim2.fromScale(0,0), ScrollingDirection=Enum.ScrollingDirection.Y, Parent=sidebar,
    })
    local tabLayout=List(0,nil,tabScroll)
    tabLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        tabScroll.CanvasSize=UDim2.new(0,0,0,tabLayout.AbsoluteContentSize.Y)
    end)

    -- CONTENT
    local content=N("Frame",{Size=UDim2.new(1,-TAB_W,1,0),Position=UDim2.fromOffset(TAB_W,0),BackgroundTransparency=1,ClipsDescendants=true,Parent=body})

    -- TAB STATE
    local tabList={}; local active=nil

    local function select(tabObj)
        if active==tabObj then return end
        if active then
            active._btn.BackgroundTransparency=1
            active._btn.BackgroundColor3=C.DARK
            for _,c in pairs(active._btn:GetChildren()) do if c.Name=="_bar" then c:Destroy() end end
            local l=active._btn:FindFirstChildWhichIsA("TextLabel")
            if l then l.TextColor3=C.TSEC end
            active._panel.Visible=false
        end
        active=tabObj
        tabObj._btn.BackgroundColor3=C.TAB_ACT
        tabObj._btn.BackgroundTransparency=0
        local bar=N("Frame",{
            Name="_bar", Size=UDim2.fromOffset(3,20),
            AnchorPoint=Vector2.new(0,0.5), Position=UDim2.new(0,0,0.5,0),
            BackgroundColor3=C.ACCENT, BorderSizePixel=0, ZIndex=3, Parent=tabObj._btn,
        })
        Corner(2,bar)
        local l=tabObj._btn:FindFirstChildWhichIsA("TextLabel")
        if l then l.TextColor3=C.ACCENT end
        tabObj._panel.Visible=true
    end

    -- WINDOW OBJECT
    local winObj={}

    function winObj:AddTab(tcfg)
        local title=tcfg.Title or "Tab"

        -- sidebar button
        local btn=N("TextButton",{
            Size=UDim2.new(1,0,0,36), BackgroundTransparency=1,
            BackgroundColor3=C.DARK, AutoButtonColor=false,
            Text="", BorderSizePixel=0, Parent=tabScroll,
        })
        N("TextLabel",{
            Text=title, Font=Enum.Font.Gotham, TextSize=13,
            TextColor3=C.TSEC, BackgroundTransparency=1,
            Size=UDim2.new(1,-14,1,0), Position=UDim2.fromOffset(14,0),
            TextXAlignment=Enum.TextXAlignment.Left, TextYAlignment=Enum.TextYAlignment.Center,
            Parent=btn,
        })
        btn.MouseEnter:Connect(function()
            if active and active._btn==btn then return end
            btn.BackgroundColor3=C.HOVER; btn.BackgroundTransparency=0
            local l=btn:FindFirstChildWhichIsA("TextLabel"); if l then l.TextColor3=C.THOV end
        end)
        btn.MouseLeave:Connect(function()
            if active and active._btn==btn then return end
            btn.BackgroundTransparency=1
            local l=btn:FindFirstChildWhichIsA("TextLabel"); if l then l.TextColor3=C.TSEC end
        end)

        -- content panel
        local panel=N("ScrollingFrame",{
            Size=UDim2.fromScale(1,1), BackgroundTransparency=1, BorderSizePixel=0,
            ScrollBarThickness=3, ScrollBarImageColor3=C.SCR, ScrollBarImageTransparency=0.3,
            CanvasSize=UDim2.fromScale(0,0), ScrollingDirection=Enum.ScrollingDirection.Y,
            Visible=false, Parent=content,
        })
        N("UIPadding",{PaddingLeft=UDim.new(0,14),PaddingRight=UDim.new(0,14),PaddingTop=UDim.new(0,12),PaddingBottom=UDim.new(0,12)},panel)
        local panelLayout=List(6,nil,panel); AutoCanvas(panel,panelLayout)

        local tabObj=setmetatable({_btn=btn,_panel=panel,_con=panel,_lib=Lib},TM)
        table.insert(tabList,tabObj)
        btn.MouseButton1Click:Connect(function() select(tabObj) end)
        if #tabList==1 then select(tabObj) end
        return tabObj
    end

    function winObj:SelectTab(n) if tabList[n] then select(tabList[n]) end end

    function winObj:Minimize()
        doMinimize()
    end

    function winObj:Dialog(cfg2)
        cfg2=cfg2 or {}
        local dlg=N("Frame",{Size=UDim2.fromOffset(300,150),AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(0.5,0.5),BackgroundColor3=C.DARK,ZIndex=80,Parent=sg})
        Corner(10,dlg); Stroke(C.BORDER,1,dlg)
        N("TextLabel",{Text=cfg2.Title or"",Font=Enum.Font.GothamBold,TextSize=14,TextColor3=C.TEXT,BackgroundTransparency=1,Size=UDim2.new(1,-20,0,30),Position=UDim2.fromOffset(10,10),ZIndex=81,Parent=dlg})
        N("TextLabel",{Text=cfg2.Content or"",Font=Enum.Font.Gotham,TextSize=12,TextColor3=C.TSEC,BackgroundTransparency=1,Size=UDim2.new(1,-20,0,50),Position=UDim2.fromOffset(10,44),TextWrapped=true,ZIndex=81,Parent=dlg})
        local bh=N("Frame",{Size=UDim2.new(1,-20,0,30),Position=UDim2.fromOffset(10,110),BackgroundTransparency=1,ZIndex=81,Parent=dlg})
        List(6,Enum.FillDirection.Horizontal,bh)
        local btns=cfg2.Buttons or{{Title="OK"}}
        for _,b in ipairs(btns) do
            local bb=N("TextButton",{Size=UDim2.new(1/#btns,-4,1,0),BackgroundColor3=C.BTN_BG,AutoButtonColor=false,Text=b.Title or"OK",Font=Enum.Font.GothamBold,TextSize=11,TextColor3=C.ACCENT,ZIndex=82,Parent=bh})
            Corner(6,bb); Stroke(C.BTN_BR,1,bb)
            bb.MouseButton1Click:Connect(function() Safe(b.Callback); dlg:Destroy() end)
        end
    end

    -- MINIMIZE KEYBIND
    UIS.InputBegan:Connect(function(inp)
        if not UIS:GetFocusedTextBox() and inp.KeyCode==minKey then winObj:Minimize() end
    end)

    Lib.Window=winObj
    return winObj
end

return Lib
end)()
UpdatePercentage(85, 3)
task.wait(0.2)

-- -- STEP 4: Done -------------------------------------------------------------
UpdatePercentage(100, 4)
task.wait(0.4)

TweenObjectLinear(_Title1,     0.35, { TextTransparency = 1 })
TweenObjectLinear(_Title2,     0.35, { TextTransparency = 1 })
TweenObjectLinear(_Tag,        0.35, { TextTransparency = 1 })
TweenObjectLinear(_TextLabel3, 0.35, { TextTransparency = 1 })
TweenObjectLinear(_PctLabel,   0.35, { TextTransparency = 1 })
TweenObjectLinear(_Frame2,     0.35, { BackgroundTransparency = 1 })
TweenObjectLinear(v31,         0.35, { BackgroundTransparency = 1 })
TweenObjectLinear(_Divider,    0.35, { BackgroundTransparency = 1 })
task.wait(0.38)
TweenObject(_Frame, 0.3, {
    Size = UDim2.new(0, 0, 0, 0),
})
TweenObjectLinear(_Backdrop, 0.4, { BackgroundTransparency = 1 })
task.wait(0.45)
_ScreenGui:Destroy()

local _CreateWindow = u33.CreateWindow

-- Safe MarketplaceService call - won't crash if the API is slow
local _gameTitle = 'blox kid'
pcall(function()
    _gameTitle = game:GetService('MarketplaceService'):GetProductInfo(2753915549).Name
end)


local v35 = {
    Title = 'barbecue blox kid hub',
    SubTitle = _gameTitle,
    TabWidth = 148,
    Theme = 'Darker',
    Acrylic = false,
    Size = UDim2.fromOffset(560, 400),
    MinimizeKey = Enum.KeyCode.Insert,
}
local v36 = _CreateWindow(u33, v35)
local v37 = {
    Main = v36:AddTab({
        Title = 'Farm',
    }),
    Sea = v36:AddTab({
        Title = 'Event',
    }),
    ITM = v36:AddTab({
        Title = 'Item',
    }),
    Setting = v36:AddTab({
        Title = 'Setting',
    }),
    Status = v36:AddTab({
        Title = 'Server',
    }),
    Stats = v36:AddTab({
        Title = 'Stats',
    }),
    Player = v36:AddTab({
        Title = 'Player',
    }),
    Teleport = v36:AddTab({
        Title = 'Teleport',
    }),
    Visual = v36:AddTab({
        Title = 'Spoof',
    }),
    Fruit = v36:AddTab({
        Title = 'Fruits',
    }),
    Raid = v36:AddTab({
        Title = 'Raid',
    }),
    Race = v36:AddTab({
        Title = 'Race',
    }),
    Shop = v36:AddTab({
        Title = 'Shop',
    }),
    Misc = v36:AddTab({
        Title = 'Misc',
    }),
}
local _Options = u33.Options
local _PlaceId = game.PlaceId

if _PlaceId == 2753915549 then
    Sea1 = true
elseif _PlaceId == 4442272183 then
    Sea2 = true
elseif _PlaceId == 7449423635 then
    Sea3 = true
else
    game:Shutdown()
end

game:GetService('Players').LocalPlayer.Idled:connect(function()
    game:GetService('VirtualUser'):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    wait()
    game:GetService('VirtualUser'):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

-- Kills every autofarm flag so loops stop targeting instantly when you die
local function _StopAllFarms()
    -- Cancel any in-flight movement tween immediately
    if _ActiveTween then
        pcall(function() _ActiveTween:Cancel() end)
        _ActiveTween = nil
    end
    _G.StopTween = true
    task.wait()
    _G.StopTween = false

    -- Reset local movement locks
    bringmob = false
    MonFarm  = nil
    FarmPos  = nil
    _G.Clip2 = false

    -- Kill every _G autofarm flag
    local _farmsToStop = {
        'AutoLevel','AutoNear','CastleRaid','EnableHakiFortress','AutoCollectChest',
        'AutoBone','AutoRandomBone','CakePrince','SpawnCakePrince','Ectoplasm',
        'AutoBoss','AutoMaterial','TweenToKitsune','CollectAzure',
        'AutoFindPrehistoric','AutoFindMirage','AutoFindFrozen',
        'AutoComeTiki','AutoComeHydra',
        'AutoTerrorshark','farmpiranya','AutoShark','AutoFishCrew','Ship','GhostShip',
        'AutoElite','AutoTpAdvanced','TweenToGear','AutoLockMoon',
        'Auto_Saber','Auto_PoleV1','Auto_Saw','Auto_Warden','AutoYama',
        'Auto_Holy_Torch','Auto_Canvander','Auto_MusketeerHat',
        'Auto_ObservationV2','Auto_RainbowHaki','Auto_Buddy','Auto_DualKatana',
        'Auto_Regoku','Auto_SkullGuitar','Auto_FarmSwan','DoughKing',
        'AutoEvoRace','AutoQuestRace','AutoKillTrial','AutoTrialTeleport',
        'AutoUpgrade','TweenToFrozenDimension','AutoFrozenDimension',
        'Factory','AutoEliteor','Auto_Sea2','Auto_Sea3',
        'Auto_Buy_Chips_Dungeon','Auto_Buy_Enchancement',
        'Auto_StartRaid','AutoDefendVolcano','AutoHydraTree',
        'AutoBlazeEmber','AutoCollectFireFlowers','AutoCollectBone','AutoCollectEgg',
        'AutoReceiveQuest','AutoStoreFruit','Tweenfruit','CollectFruitTP',
        'TeleportPly','AutoT','AutoY','BringMob','Autofruit',
        'Random_Auto','WhiteScreen','WalkonWater','EnabledPvP','AutoKen',
        'SaveSpawn','LOf','Job',
    }
    for _, flag in ipairs(_farmsToStop) do
        _G[flag] = false
    end

    -- Local (non-_G) farm flags
    AutoFarmMasDevilFruit = false
    AutoHallowSycthe      = false
    AutoTushita           = false
    AutoEvoRace           = false
    AutoBartilo           = false
    AutoNextIsland        = false
    Musketeer             = false
    Auto_Law              = false
    AutoFarmRace          = false
    AutoFarmRaceQuest     = false
    Auto_Quest_Yama_1     = false
    Auto_Quest_Yama_2     = false
    Auto_Quest_Yama_3     = false
    Auto_Quest_Tushita_1  = false
    Auto_Quest_Tushita_2  = false
    Auto_Quest_Tushita_3  = false
end

-- Respawn cleanup: reset all state that the farm loops jam onto the character
-- Without this, dying leaves bringmob=true, SimulationRadius=huge, and the
-- new character spawns unable to dash/jump because nothing ever resets it.
local function _OnCharacterRespawn(newChar)
    _StopAllFarms()

    -- Wait for the new Humanoid to exist before touching it
    local _hum = newChar:WaitForChild('Humanoid', 10)
    if _hum then
        -- Restore movement — game defaults, Blox Fruits uses 16/50
        _hum.WalkSpeed = 16
        _hum.JumpPower = 50
    end

    -- Reset SimulationRadius back to normal so the client isn't faking ownership
    -- of every mob in the server
    pcall(function()
        sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', 0)
    end)
end

game:GetService('Players').LocalPlayer.CharacterAdded:Connect(function(newChar)
    -- Fire on Humanoid.Died so cleanup runs the INSTANT you die,
    -- not just after the respawn screen finishes
    local _hum = newChar:WaitForChild('Humanoid', 10)
    if _hum then
        _hum.Died:Connect(function()
            _StopAllFarms()
            pcall(function()
                sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', 0)
            end)
        end)
    end
    _OnCharacterRespawn(newChar)
end)

Sea1 = false
Sea2 = false
Sea3 = false

local _PlaceId2 = game.PlaceId

if _PlaceId2 == 2753915549 then
    Sea1 = true
elseif _PlaceId2 == 4442272183 then
    Sea2 = true
elseif _PlaceId2 == 7449423635 then
    Sea3 = true
end

function CheckLevel()
    local _lp = game:GetService('Players').LocalPlayer
    if not _lp:FindFirstChild('Data') or not _lp.Data:FindFirstChild('Level') then return end
    local _Value = _lp.Data.Level.Value

    if Sea1 then
        if _Value == 1 or (_Value <= 9 or SelectMonster == 'Bandit') then
            Ms = 'Bandit'
            NameQuest = 'BanditQuest1'
            QuestLv = 1
            NameMon = 'Bandit'
            CFrameQ = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875)
            CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
        elseif _Value == 10 or (_Value <= 14 or SelectMonster == 'Monkey') then
            Ms = 'Monkey'
            NameQuest = 'JungleQuest'
            QuestLv = 1
            NameMon = 'Monkey'
            CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameMon = CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
        elseif _Value == 15 or (_Value <= 29 or SelectMonster == 'Gorilla') then
            Ms = 'Gorilla'
            NameQuest = 'JungleQuest'
            QuestLv = 2
            NameMon = 'Gorilla'
            CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameMon = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
        elseif _Value == 30 or (_Value <= 39 or SelectMonster == 'Pirate') then
            Ms = 'Pirate'
            NameQuest = 'BuggyQuest1'
            QuestLv = 1
            NameMon = 'Pirate'
            CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
            CFrameMon = CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
        elseif _Value == 40 or (_Value <= 59 or SelectMonster == 'Brute') then
            Ms = 'Brute'
            NameQuest = 'BuggyQuest1'
            QuestLv = 2
            NameMon = 'Brute'
            CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
            CFrameMon = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
        elseif _Value == 60 or (_Value <= 74 or SelectMonster == 'Desert Bandit') then
            Ms = 'Desert Bandit'
            NameQuest = 'DesertQuest'
            QuestLv = 1
            NameMon = 'Desert Bandit'
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
            CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
        elseif _Value == 75 or (_Value <= 89 or SelectMonster == 'Desert Officer') then
            Ms = 'Desert Officer'
            NameQuest = 'DesertQuest'
            QuestLv = 2
            NameMon = 'Desert Officer'
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
            CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
        elseif _Value == 90 or (_Value <= 99 or SelectMonster == 'Snow Bandit') then
            Ms = 'Snow Bandit'
            NameQuest = 'SnowQuest'
            QuestLv = 1
            NameMon = 'Snow Bandit'
            CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
            CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, -1328.2418212891)
        elseif _Value == 100 or (_Value <= 119 or SelectMonster == 'Snowman') then
            Ms = 'Snowman'
            NameQuest = 'SnowQuest'
            QuestLv = 2
            NameMon = 'Snowman'
            CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
            CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
        elseif _Value == 120 or (_Value <= 149 or SelectMonster == 'Chief Petty Officer') then
            Ms = 'Chief Petty Officer'
            NameQuest = 'MarineQuest2'
            QuestLv = 1
            NameMon = 'Chief Petty Officer'
            CFrameQ = CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313)
            CFrameMon = CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
        elseif _Value == 150 or (_Value <= 174 or SelectMonster == 'Sky Bandit') then
            Ms = 'Sky Bandit'
            NameQuest = 'SkyQuest'
            QuestLv = 1
            NameMon = 'Sky Bandit'
            CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
            CFrameMon = CFrame.new(-4955.6411132813, 365.46365356445, -2908.1865234375)
        elseif _Value == 175 or (_Value <= 189 or SelectMonster == 'Dark Master') then
            Ms = 'Dark Master'
            NameQuest = 'SkyQuest'
            QuestLv = 2
            NameMon = 'Dark Master'
            CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
            CFrameMon = CFrame.new(-5148.1650390625, 439.04571533203, -2332.9611816406)
        elseif _Value == 190 or (_Value <= 209 or SelectMonster == 'Prisoner') then
            Ms = 'Prisoner'
            NameQuest = 'PrisonerQuest'
            QuestLv = 1
            NameMon = 'Prisoner'
            CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
            CFrameMon = CFrame.new(4937.31885, 0.332031399, 649.574524, 0.694649816, 0, -0.719348073, 0, 1, 0, 0.719348073, 0, 0.694649816)
        elseif _Value == 210 or (_Value <= 249 or SelectMonster == 'Dangerous Prisoner') then
            Ms = 'Dangerous Prisoner'
            NameQuest = 'PrisonerQuest'
            QuestLv = 2
            NameMon = 'Dangerous Prisoner'
            CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
            CFrameMon = CFrame.new(5099.6626, 0.351562679, 1055.7583, 0.898906827, 0, -0.438139856, 0, 1, 0, 0.438139856, 0, 0.898906827)
        elseif _Value == 250 or (_Value <= 274 or SelectMonster == 'Toga Warrior') then
            Ms = 'Toga Warrior'
            NameQuest = 'ColosseumQuest'
            QuestLv = 1
            NameMon = 'Toga Warrior'
            CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
            CFrameMon = CFrame.new(-1872.5166015625, 49.080215454102, -2913.810546875)
        elseif _Value == 275 or (_Value <= 299 or SelectMonster == 'Gladiator') then
            Ms = 'Gladiator'
            NameQuest = 'ColosseumQuest'
            QuestLv = 2
            NameMon = 'Gladiator'
            CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
            CFrameMon = CFrame.new(-1521.3740234375, 81.203170776367, -3066.3139648438)
        elseif _Value == 300 or (_Value <= 324 or SelectMonster == 'Military Soldier') then
            Ms = 'Military Soldier'
            NameQuest = 'MagmaQuest'
            QuestLv = 1
            NameMon = 'Military Soldier'
            CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
            CFrameMon = CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)
        elseif _Value == 325 or (_Value <= 374 or SelectMonster == 'Military Spy') then
            Ms = 'Military Spy'
            NameQuest = 'MagmaQuest'
            QuestLv = 2
            NameMon = 'Military Spy'
            CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
            CFrameMon = CFrame.new(-5787.00293, 75.8262634, 8651.69922, 0.838590562, 0, -0.544762194, 0, 1, 0, 0.544762194, 0, 0.838590562)
        elseif _Value == 375 or (_Value <= 399 or SelectMonster == 'Fishman Warrior') then
            Ms = 'Fishman Warrior'
            NameQuest = 'FishmanQuest'
            QuestLv = 1
            NameMon = 'Fishman Warrior'
            CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703)

            if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif _Value == 400 or (_Value <= 449 or SelectMonster == 'Fishman Commando') then
            Ms = 'Fishman Commando'
            NameQuest = 'FishmanQuest'
            QuestLv = 2
            NameMon = 'Fishman Commando'
            CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)

            if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif _Value == 10 or (_Value <= 474 or SelectMonster == "God's Guard") then
            Ms = "God's Guard"
            NameQuest = 'SkyExp1Quest'
            QuestLv = 1
            NameMon = "God's Guard"
            CFrameQ = CFrame.new(-4721.8603515625, 845.30297851563, -1953.8489990234)
            CFrameMon = CFrame.new(-4628.0498046875, 866.92877197266, -1931.2352294922)

            if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-4607.82275, 872.54248, -1667.55688))
            end
        elseif _Value == 475 or (_Value <= 524 or SelectMonster == 'Shanda') then
            Ms = 'Shanda'
            NameQuest = 'SkyExp1Quest'
            QuestLv = 2
            NameMon = 'Shanda'
            CFrameQ = CFrame.new(-7863.1596679688, 5545.5190429688, -378.42266845703)
            CFrameMon = CFrame.new(-7685.1474609375, 5601.0751953125, -441.38876342773)

            if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            end
        elseif _Value == 525 or (_Value <= 549 or SelectMonster == 'Royal Squad') then
            Ms = 'Royal Squad'
            NameQuest = 'SkyExp2Quest'
            QuestLv = 1
            NameMon = 'Royal Squad'
            CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
            CFrameMon = CFrame.new(-7654.2514648438, 5637.1079101563, -1407.7550048828)
        elseif _Value == 550 or (_Value <= 624 or SelectMonster == 'Royal Soldier') then
            Ms = 'Royal Soldier'
            NameQuest = 'SkyExp2Quest'
            QuestLv = 2
            NameMon = 'Royal Soldier'
            CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
            CFrameMon = CFrame.new(-7760.4106445313, 5679.9077148438, -1884.8112792969)
        elseif _Value == 625 or (_Value <= 649 or SelectMonster == 'Galley Pirate') then
            Ms = 'Galley Pirate'
            NameQuest = 'FountainQuest'
            QuestLv = 1
            NameMon = 'Galley Pirate'
            CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
            CFrameMon = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063)
        elseif _Value >= 650 or SelectMonster == 'Galley Captain' then
            Ms = 'Galley Captain'
            NameQuest = 'FountainQuest'
            QuestLv = 2
            NameMon = 'Galley Captain'
            CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
            CFrameMon = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188)
        end
    end
    if Sea2 then
        if _Value == 700 or (_Value <= 724 or SelectMonster == 'Raider') then
            Ms = 'Raider'
            NameQuest = 'Area1Quest'
            QuestLv = 1
            NameMon = 'Raider'
            CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
            CFrameMon = CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688)
        elseif _Value == 725 or (_Value <= 774 or SelectMonster == 'Mercenary') then
            Ms = 'Mercenary'
            NameQuest = 'Area1Quest'
            QuestLv = 2
            NameMon = 'Mercenary'
            CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
            CFrameMon = CFrame.new(-864.85009765625, 122.47104644775, 1453.1505126953)
        elseif _Value == 775 or (_Value <= 799 or SelectMonster == 'Swan Pirate') then
            Ms = 'Swan Pirate'
            NameQuest = 'Area2Quest'
            QuestLv = 1
            NameMon = 'Swan Pirate'
            CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
            CFrameMon = CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125)
        elseif _Value == 800 or (_Value <= 874 or SelectMonster == 'Factory Staff') then
            Ms = 'Factory Staff'
            NameQuest = 'Area2Quest'
            QuestLv = 2
            NameMon = 'Factory Staff'
            CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
            CFrameMon = CFrame.new(533.22045898438, 128.46876525879, 355.62615966797)
        elseif _Value == 875 or (_Value <= 899 or SelectMonster == 'Marine Lieutenan') then
            Ms = 'Marine Lieutenant'
            NameQuest = 'MarineQuest3'
            QuestLv = 1
            NameMon = 'Marine Lieutenant'
            CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
            CFrameMon = CFrame.new(-2489.2622070313, 84.613594055176, -3151.8830566406)
        elseif _Value == 900 or (_Value <= 949 or SelectMonster == 'Marine Captain') then
            Ms = 'Marine Captain'
            NameQuest = 'MarineQuest3'
            QuestLv = 2
            NameMon = 'Marine Captain'
            CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
            CFrameMon = CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406)
        elseif _Value == 950 or (_Value <= 974 or SelectMonster == 'Zombie') then
            Ms = 'Zombie'
            NameQuest = 'ZombieQuest'
            QuestLv = 1
            NameMon = 'Zombie'
            CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
            CFrameMon = CFrame.new(-5536.4970703125, 101.08577728271, -835.59075927734)
        elseif _Value == 975 or (_Value <= 999 or SelectMonster == 'Vampire') then
            Ms = 'Vampire'
            NameQuest = 'ZombieQuest'
            QuestLv = 2
            NameMon = 'Vampire'
            CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
            CFrameMon = CFrame.new(-5806.1098632813, 16.722528457642, -1164.4384765625)
        elseif _Value == 1000 or (_Value <= 1049 or SelectMonster == 'Snow Trooper') then
            Ms = 'Snow Trooper'
            NameQuest = 'SnowMountainQuest'
            QuestLv = 1
            NameMon = 'Snow Trooper'
            CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
            CFrameMon = CFrame.new(535.21051025391, 432.74209594727, -5484.9165039063)
        elseif _Value == 1050 or (_Value <= 1099 or SelectMonster == 'Winter Warrior') then
            Ms = 'Winter Warrior'
            NameQuest = 'SnowMountainQuest'
            QuestLv = 2
            NameMon = 'Winter Warrior'
            CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
            CFrameMon = CFrame.new(1234.4449462891, 456.95419311523, -5174.130859375)
        elseif _Value == 1100 or (_Value <= 1124 or SelectMonster == 'Lab Subordinate') then
            Ms = 'Lab Subordinate'
            NameQuest = 'IceSideQuest'
            QuestLv = 1
            NameMon = 'Lab Subordinate'
            CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
            CFrameMon = CFrame.new(-5720.5576171875, 63.309471130371, -4784.6103515625)
        elseif _Value == 1125 or (_Value <= 1174 or SelectMonster == 'Horned Warrior') then
            Ms = 'Horned Warrior'
            NameQuest = 'IceSideQuest'
            QuestLv = 2
            NameMon = 'Horned Warrior'
            CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
            CFrameMon = CFrame.new(-6292.751953125, 91.181983947754, -5502.6499023438)
        elseif _Value == 1175 or (_Value <= 1199 or SelectMonster == 'Magma Ninja') then
            Ms = 'Magma Ninja'
            NameQuest = 'FireSideQuest'
            QuestLv = 1
            NameMon = 'Magma Ninja'
            CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
            CFrameMon = CFrame.new(-5461.8388671875, 130.36347961426, -5836.4702148438)
        elseif _Value == 1200 or (_Value <= 1249 or SelectMonster == 'Lava Pirate') then
            Ms = 'Lava Pirate'
            NameQuest = 'FireSideQuest'
            QuestLv = 2
            NameMon = 'Lava Pirate'
            CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
            CFrameMon = CFrame.new(-5251.1889648438, 55.164535522461, -4774.4096679688)
        elseif _Value == 1250 or (_Value <= 1274 or SelectMonster == 'Ship Deckhand') then
            Ms = 'Ship Deckhand'
            NameQuest = 'ShipQuest1'
            QuestLv = 1
            NameMon = 'Ship Deckhand'
            CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
            CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125)

            if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif _Value == 1275 or (_Value <= 1299 or SelectMonster == 'Ship Engineer') then
            Ms = 'Ship Engineer'
            NameQuest = 'ShipQuest1'
            QuestLv = 2
            NameMon = 'Ship Engineer'
            CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
            CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)

            if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif _Value == 1300 or (_Value <= 1324 or SelectMonster == 'Ship Steward') then
            Ms = 'Ship Steward'
            NameQuest = 'ShipQuest2'
            QuestLv = 1
            NameMon = 'Ship Steward'
            CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
            CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)

            if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif _Value == 1325 or (_Value <= 1349 or SelectMonster == 'Ship Officer') then
            Ms = 'Ship Officer'
            NameQuest = 'ShipQuest2'
            QuestLv = 2
            NameMon = 'Ship Officer'
            CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
            CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625)

            if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif _Value == 1350 or (_Value <= 1374 or SelectMonster == 'Arctic Warrior') then
            Ms = 'Arctic Warrior'
            NameQuest = 'FrostQuest'
            QuestLv = 1
            NameMon = 'Arctic Warrior'
            CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
            CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, -6472.7568359375)

            if _G.AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
            end
        elseif _Value == 1375 or (_Value <= 1424 or SelectMonster == 'Snow Lurker') then
            Ms = 'Snow Lurker'
            NameQuest = 'FrostQuest'
            QuestLv = 2
            NameMon = 'Snow Lurker'
            CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
            CFrameMon = CFrame.new(5628.482421875, 57.574996948242, -6618.3481445313)
        elseif _Value == 1425 or (_Value <= 1449 or SelectMonster == 'Sea Soldier') then
            Ms = 'Sea Soldier'
            NameQuest = 'ForgottenQuest'
            QuestLv = 1
            NameMon = 'Sea Soldier'
            CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
            CFrameMon = CFrame.new(-3185.0153808594, 58.789089202881, -9663.6064453125)
        elseif _Value >= 1450 or SelectMonster == 'Water Fighter' then
            Ms = 'Water Fighter'
            NameQuest = 'ForgottenQuest'
            QuestLv = 2
            NameMon = 'Water Fighter'
            CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
            CFrameMon = CFrame.new(-3262.9301757813, 298.69036865234, -10552.529296875)
        end
    end
    if Sea3 then
        if _Value == 1500 or (_Value <= 1524 or SelectMonster == 'Pirate Millionaire') then
            Ms = 'Pirate Millionaire'
            NameQuest = 'PiratePortQuest'
            QuestLv = 1
            NameMon = 'Pirate Millionaire'
            CFrameQ = CFrame.new(-450.1046447753906, 107.68145751953125, 5950.72607421875)
            CFrameMon = CFrame.new(-193.99227905273438, 56.12502670288086, 5755.7880859375)
        elseif _Value == 1525 or (_Value <= 1574 or SelectMonster == 'Pistol Billionaire') then
            Ms = 'Pistol Billionaire'
            NameQuest = 'PiratePortQuest'
            QuestLv = 2
            NameMon = 'Pistol Billionaire'
            CFrameQ = CFrame.new(-450.1046447753906, 107.68145751953125, 5950.72607421875)
            CFrameMon = CFrame.new(-188.14462280273438, 84.49613189697266, 6337.0419921875)
        elseif _Value == 1575 or (_Value <= 1599 or SelectMonster == 'Dragon Crew Warrior') then
            Ms = 'Dragon Crew Warrior'
            NameQuest = 'DragonCrewQuest'
            QuestLv = 1
            NameMon = 'Dragon Crew Warrior'
            CFrameQ = CFrame.new(6735.11083984375, 126.99046325683594, -711.0979614257813)
            CFrameMon = CFrame.new(6615.2333984375, 50.847679138183594, -978.93408203125)
        elseif _Value == 1600 or (_Value <= 1624 or SelectMonster == 'Dragon Crew Archer') then
            Ms = 'Dragon Crew Archer'
            NameQuest = 'DragonCrewQuest'
            QuestLv = 2
            NameMon = 'Dragon Crew Archer'
            CFrameQ = CFrame.new(6735.11083984375, 126.99046325683594, -711.0979614257813)
            CFrameMon = CFrame.new(6818.58935546875, 483.718994140625, 512.726806640625)
        elseif _Value == 1625 or (_Value <= 1649 or SelectMonster == 'Hydra Enforcer') then
            Ms = 'Hydra Enforcer'
            NameQuest = 'VenomCrewQuest'
            QuestLv = 1
            NameMon = 'Hydra Enforcer'
            CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(4547.115234375, 1001.60205078125, 334.1954650878906)
        elseif _Value == 1650 or (_Value <= 1699 or SelectMonster == 'Venomous Assailant') then
            Ms = 'Venomous Assailant'
            NameQuest = 'VenomCrewQuest'
            QuestLv = 2
            NameMon = 'Venomous Assailant'
            CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(4637.88525390625, 1077.85595703125, 882.4183959960938)
        elseif _Value == 1700 or (_Value <= 1724 or SelectMonster == 'Marine Commodore') then
            Ms = 'Marine Commodore'
            NameQuest = 'MarineTreeIsland'
            QuestLv = 1
            NameMon = 'Marine Commodore'
            CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, -7109.5043945313)
        elseif _Value == 1725 or (_Value <= 1774 or SelectMonster == 'Marine Rear Admiral') then
            Ms = 'Marine Rear Admiral'
            NameQuest = 'MarineTreeIsland'
            QuestLv = 2
            NameMon = 'Marine Rear Admiral'
            CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(3294.3142089844, 385.41125488281, -7048.6342773438)
        elseif _Value == 1775 or (_Value <= 1799 or SelectMonster == 'Fishman Raider') then
            Ms = 'Fishman Raider'
            NameQuest = 'DeepForestIsland3'
            QuestLv = 1
            NameMon = 'Fishman Raider'
            CFrameQ = CFrame.new(-10582.759765625, 331.78845214844, -8757.666015625)
            CFrameMon = CFrame.new(-10553.268554688, 521.38439941406, -8176.9458007813)
        elseif _Value == 1800 or (_Value <= 1824 or SelectMonster == 'Fishman Captain') then
            Ms = 'Fishman Captain'
            NameQuest = 'DeepForestIsland3'
            QuestLv = 2
            NameMon = 'Fishman Captain'
            CFrameQ = CFrame.new(-10583.099609375, 331.78845214844, -8759.4638671875)
            CFrameMon = CFrame.new(-10789.401367188, 427.18637084961, -9131.4423828125)
        elseif _Value == 1825 or (_Value <= 1849 or SelectMonster == 'Forest Pirate') then
            Ms = 'Forest Pirate'
            NameQuest = 'DeepForestIsland'
            QuestLv = 1
            NameMon = 'Forest Pirate'
            CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
            CFrameMon = CFrame.new(-13489.397460938, 400.30349731445, -7770.251953125)
        elseif _Value == 1850 or (_Value <= 1899 or SelectMonster == 'Mythological Pirate') then
            Ms = 'Mythological Pirate'
            NameQuest = 'DeepForestIsland'
            QuestLv = 2
            NameMon = 'Mythological Pirate'
            CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
            CFrameMon = CFrame.new(-13508.616210938, 582.46228027344, -6985.3037109375)
        elseif _Value == 1900 or (_Value <= 1924 or SelectMonster == 'Jungle Pirate') then
            Ms = 'Jungle Pirate'
            NameQuest = 'DeepForestIsland2'
            QuestLv = 1
            NameMon = 'Jungle Pirate'
            CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
            CFrameMon = CFrame.new(-12267.103515625, 459.75262451172, -10277.200195313)
        elseif _Value == 1925 or (_Value <= 1974 or SelectMonster == 'Musketeer Pirate') then
            Ms = 'Musketeer Pirate'
            NameQuest = 'DeepForestIsland2'
            QuestLv = 2
            NameMon = 'Musketeer Pirate'
            CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
            CFrameMon = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
        elseif _Value == 1975 or (_Value <= 1999 or SelectMonster == 'Reborn Skeleton') then
            Ms = 'Reborn Skeleton'
            NameQuest = 'HauntedQuest1'
            QuestLv = 1
            NameMon = 'Reborn Skeleton'
            CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.5295423e-8, -0.999978542, 2.0492047e-8, 1, 4.5162068e-8, 0.999978542, -2.0195568e-8, -0.00655503059)
            CFrameMon = CFrame.new(-8761.77148, 183.431747, 6168.33301, 0.978073597, -0.000013950732, -0.208259016, -1.0807393e-6, 1, -0.00007206303, 0.208259016, 0.00007070804, 0.978073597)
        elseif _Value == 2000 or (_Value <= 2024 or SelectMonster == 'Living Zombie') then
            Ms = 'Living Zombie'
            NameQuest = 'HauntedQuest1'
            QuestLv = 2
            NameMon = 'Living Zombie'
            CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.5295423e-8, -0.999978542, 2.0492047e-8, 1, 4.5162068e-8, 0.999978542, -2.0195568e-8, -0.00655503059)
            CFrameMon = CFrame.new(-10103.7529, 238.565979, 6179.75977, 0.999474227, 2.7754714e-8, 0.0324240364, -2.5800633e-8, 1, -6.068485e-8, -0.0324240364, 5.9816389999999995e-8, 0.999474227)
        elseif _Value == 2025 or (_Value <= 2049 or SelectMonster == 'Demonic Soul') then
            Ms = 'Demonic Soul'
            NameQuest = 'HauntedQuest2'
            QuestLv = 1
            NameMon = 'Demonic Soul'
            CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
            CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
        elseif _Value == 2050 or (_Value <= 2074 or SelectMonster == 'Posessed Mummy') then
            Ms = 'Posessed Mummy'
            NameQuest = 'HauntedQuest2'
            QuestLv = 2
            NameMon = 'Posessed Mummy'
            CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
            CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)
        elseif _Value == 2075 or (_Value <= 2099 or SelectMonster == 'Peanut Scout') then
            Ms = 'Peanut Scout'
            NameQuest = 'NutsIslandQuest'
            QuestLv = 1
            NameMon = 'Peanut Scout'
            CFrameQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
            CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
        elseif _Value == 2100 or (_Value <= 2124 or SelectMonster == 'Peanut President') then
            Ms = 'Peanut President'
            NameQuest = 'NutsIslandQuest'
            QuestLv = 2
            NameMon = 'Peanut President'
            CFrameQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
            CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
        elseif _Value == 2125 or (_Value <= 2149 or SelectMonster == 'Ice Cream Chef') then
            Ms = 'Ice Cream Chef'
            NameQuest = 'IceCreamIslandQuest'
            QuestLv = 1
            NameMon = 'Ice Cream Chef'
            CFrameQ = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
            CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, '-0', -0.997525156, '-0', 1.00000012, '-0', 0.997525275, 0, -0.0703101456)
        elseif _Value == 2150 or (_Value <= 2199 or SelectMonster == 'Ice Cream Commander') then
            Ms = 'Ice Cream Commander'
            NameQuest = 'IceCreamIslandQuest'
            QuestLv = 2
            NameMon = 'Ice Cream Commander'
            CFrameQ = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
            CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, '-0', -0.997525156, '-0', 1.00000012, '-0', 0.997525275, 0, -0.0703101456)
        elseif _Value == 2200 or (_Value <= 2224 or SelectMonster == 'Cookie Crafter') then
            Ms = 'Cookie Crafter'
            NameQuest = 'CakeQuest1'
            QuestLv = 1
            NameMon = 'Cookie Crafter'
            CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -0.961273909, 0, -0.275594592, 0, 1, 0, 0.275594592, 0, -0.961273909)
            CFrameMon = CFrame.new(-2321.71216, 36.699482, -12216.7871, -0.780074954, 0, 0.625686109, 0, 1, 0, -0.625686109, 0, -0.780074954)
        elseif _Value == 2225 or (_Value <= 2249 or SelectMonster == 'Cake Guard') then
            Ms = 'Cake Guard'
            NameQuest = 'CakeQuest1'
            QuestLv = 2
            NameMon = 'Cake Guard'
            CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -0.961273909, 0, -0.275594592, 0, 1, 0, 0.275594592, 0, -0.961273909)
            CFrameMon = CFrame.new(-1418.11011, 36.6718941, -12255.7324, 0.0677844882, 0, 0.997700036, 0, 1, 0, -0.997700036, 0, 0.0677844882)
        elseif _Value == 2250 or (_Value <= 2274 or SelectMonster == 'Baking Staff') then
            Ms = 'Baking Staff'
            NameQuest = 'CakeQuest2'
            QuestLv = 1
            NameMon = 'Baking Staff'
            CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401, '-0', -0.308980465, 0, 1, '-0', 0.308980465, 0, 0.951068401)
            CFrameMon = CFrame.new(-1980.43848, 36.6716766, -12983.8418, -0.254443765, 0, -0.967087567, 0, 1, 0, 0.967087567, 0, -0.254443765)
        elseif _Value == 2275 or (_Value <= 2299 or SelectMonster == 'Head Baker') then
            Ms = 'Head Baker'
            NameQuest = 'CakeQuest2'
            QuestLv = 2
            NameMon = 'Head Baker'
            CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401, '-0', -0.308980465, 0, 1, '-0', 0.308980465, 0, 0.951068401)
            CFrameMon = CFrame.new(-2251.5791, 52.2714615, -13033.3965, -0.991971016, 0, -0.126466095, 0, 1, 0, 0.126466095, 0, -0.991971016)
        elseif _Value == 2300 or (_Value <= 2324 or SelectMonster == 'Cocoa Warrior') then
            Ms = 'Cocoa Warrior'
            NameQuest = 'ChocQuest1'
            QuestLv = 1
            NameMon = 'Cocoa Warrior'
            CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
            CFrameMon = CFrame.new(167.978516, 26.2254658, -12238.874, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)
        elseif _Value == 2325 or (_Value <= 2349 or SelectMonster == 'Chocolate Bar Battler') then
            Ms = 'Chocolate Bar Battler'
            NameQuest = 'ChocQuest1'
            QuestLv = 2
            NameMon = 'Chocolate Bar Battler'
            CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
            CFrameMon = CFrame.new(701.312073, 25.5824986, -12708.2148, -0.342042685, 0, -0.939684391, 0, 1, 0, 0.939684391, 0, -0.342042685)
        elseif _Value == 2350 or (_Value <= 2374 or SelectMonster == 'Sweet Thief') then
            Ms = 'Sweet Thief'
            NameQuest = 'ChocQuest2'
            QuestLv = 1
            NameMon = 'Sweet Thief'
            CFrameQ = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998)
            CFrameMon = CFrame.new(-140.258301, 25.5824986, -12652.3115, 0.173624337, '-0', -0.984811902, 0, 1, '-0', 0.984811902, 0, 0.173624337)
        elseif _Value == 2375 or (_Value <= 2400 or SelectMonster == 'Candy Rebel') then
            Ms = 'Candy Rebel'
            NameQuest = 'ChocQuest2'
            QuestLv = 2
            NameMon = 'Candy Rebel'
            CFrameQ = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998)
            CFrameMon = CFrame.new(47.9231453, 25.5824986, -13029.2402, -0.819156051, 0, -0.573571265, 0, 1, 0, 0.573571265, 0, -0.819156051)
        elseif _Value == 2400 or (_Value <= 2424 or SelectMonster == 'Candy Pirate') then
            Ms = 'Candy Pirate'
            NameQuest = 'CandyQuest1'
            QuestLv = 1
            NameMon = 'Candy Pirate'
            CFrameQ = CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099)
            CFrameMon = CFrame.new(-1437.56348, 17.1481285, -14385.6934, 0.173624337, '-0', -0.984811902, 0, 1, '-0', 0.984811902, 0, 0.173624337)
        elseif _Value == 2425 or (_Value <= 2449 or SelectMonster == 'Snow Demon') then
            Ms = 'Snow Demon'
            NameQuest = 'CandyQuest1'
            QuestLv = 2
            NameMon = 'Snow Demon'
            CFrameQ = CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099)
            CFrameMon = CFrame.new(-916.222656, 17.1481285, -14638.8125, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
        elseif _Value == 2450 or (_Value <= 2474 or SelectMonster == 'Isle Outlaw') then
            Ms = 'Isle Outlaw'
            NameQuest = 'TikiQuest1'
            QuestLv = 1
            NameMon = 'Isle Outlaw'
            CFrameQ = CFrame.new(-16549.890625, 55.68635559082031, -179.91360473632813)
            CFrameMon = CFrame.new(-16162.8193359375, 11.6863374710083, -96.45481872558594)
        elseif _Value == 2475 or (_Value <= 2499 or SelectMonster == 'Island Boy') then
            Ms = 'Island Boy'
            NameQuest = 'TikiQuest1'
            QuestLv = 2
            NameMon = 'Island Boy'
            CFrameQ = CFrame.new(-16549.890625, 55.68635559082031, -179.91360473632813)
            CFrameMon = CFrame.new(-16357.3125, 20.632822036743164, 1005.64892578125)
        elseif _Value == 2500 or (_Value <= 2524 or SelectMonster == 'Sun-kissed Warrior') then
            Ms = 'Sun-kissed Warrior'
            NameQuest = 'TikiQuest2'
            QuestLv = 1
            NameMon = 'Sun-kissed Warrior'
            CFrameQ = CFrame.new(-16541.021484375, 54.77081298828125, 1051.461181640625)
            CFrameMon = CFrame.new(-16357.3125, 20.632822036743164, 1005.64892578125)
        elseif _Value == 2525 or (_Value <= 2549 or SelectMonster == 'Isle Champion') then
            Ms = 'Isle Champion'
            NameQuest = 'TikiQuest2'
            QuestLv = 2
            NameMon = 'Isle Champion'
            CFrameQ = CFrame.new(-16541.021484375, 54.77081298828125, 1051.461181640625)
            CFrameMon = CFrame.new(-16848.94140625, 21.68633460998535, 1041.4490966796875)
        elseif _Value == 2550 or (_Value <= 2574 or SelectMonster == 'Serpent Hunter') then
            Ms = 'Serpent Hunter'
            NameQuest = 'TikiQuest3'
            QuestLv = 1
            NameMon = 'Serpent Hunter'
            CFrameQ = CFrame.new(-16665.19140625, 104.59640502929688, 1579.6943359375)
            CFrameMon = CFrame.new(-16621.4140625, 121.40631103515625, 1290.6881103515625)
        elseif _Value == 2575 or (_Value <= 2599 or (SelectMonster == 'Skull Slayer' or _Value == 2600)) then
            Ms = 'Skull Slayer'
            NameQuest = 'TikiQuest3'
            QuestLv = 2
            NameMon = 'Skull Slayer'
            CFrameQ = CFrame.new(-16665.19140625, 104.59640502929688, 1579.6943359375)
            CFrameMon = CFrame.new(-16811.5703125, 84.625244140625, 1542.235107421875)
        end
    end
end

if Sea1 then
    tableMon = {
        'Bandit',
        'Monkey',
        'Gorilla',
        'Pirate',
        'Brute',
        'Desert Bandit',
        'Desert Officer',
        'Snow Bandit',
        'Snowman',
        'Chief Petty Officer',
        'Sky Bandit',
        'Dark Master',
        'Prisoner',
        'Dangerous Prisoner',
        'Toga Warrior',
        'Gladiator',
        'Military Soldier',
        'Military Spy',
        'Fishman Warrior',
        'Fishman Commando',
        "God's Guard",
        'Shanda',
        'Royal Squad',
        'Royal Soldier',
        'Galley Pirate',
        'Galley Captain',
    }
elseif Sea2 then
    tableMon = {
        'Raider',
        'Mercenary',
        'Swan Pirate',
        'Factory Staff',
        'Marine Lieutenant',
        'Marine Captain',
        'Zombie',
        'Vampire',
        'Snow Trooper',
        'Winter Warrior',
        'Lab Subordinate',
        'Horned Warrior',
        'Magma Ninja',
        'Lava Pirate',
        'Ship Deckhand',
        'Ship Engineer',
        'Ship Steward',
        'Ship Officer',
        'Arctic Warrior',
        'Snow Lurker',
        'Sea Soldier',
        'Water Fighter',
    }
elseif Sea3 then
    tableMon = {
        'Pirate Millionaire',
        'Dragon Crew Warrior',
        'Dragon Crew Archer',
        'Hydra Enforcer',
        'Venomous Assailant',
        'Marine Commodore',
        'Marine Rear Admiral',
        'Fishman Raider',
        'Fishman Captain',
        'Forest Pirate',
        'Mythological Pirate',
        'Jungle Pirate',
        'Musketeer Pirate',
        'Reborn Skeleton',
        'Living Zombie',
        'Demonic Soul',
        'Posessed Mummy',
        'Peanut Scout',
        'Peanut President',
        'Ice Cream Chef',
        'Ice Cream Commander',
        'Cookie Crafter',
        'Cake Guard',
        'Baking Staff',
        'Head Baker',
        'Cocoa Warrior',
        'Chocolate Bar Battler',
        'Sweet Thief',
        'Candy Rebel',
        'Candy Pirate',
        'Snow Demon',
        'Isle Outlaw',
        'Island Boy',
        'Sun-kissed Warrior',
        'Isle Champion',
        'Serpent Hunter',
        'Skull Slayer',
    }
end
if Sea1 then
    AreaList = {
        'Jungle',
        'Buggy',
        'Desert',
        'Snow',
        'Marine',
        'Sky',
        'Prison',
        'Colosseum',
        'Magma',
        'Fishman',
        'Sky Island',
        'Fountain',
    }
elseif Sea2 then
    AreaList = {
        'Area 1',
        'Area 2',
        'Zombie',
        'Marine',
        'Snow Mountain',
        'Ice fire',
        'Ship',
        'Frost',
        'Forgotten',
    }
elseif Sea3 then
    AreaList = {
        'Pirate Port',
        'Amazon',
        'Marine Tree',
        'Deep Forest',
        'Haunted Castle',
        'Nut Island',
        'Ice Cream Island',
        'Cake Island',
        'Choco Island',
        'Candy Island',
        'Tiki Outpost',
    }
end

function CheckBossQuest()
    if Sea1 then
        if SelectBoss ~= 'The Gorilla King' then
            if SelectBoss ~= 'Bobby' then
                if SelectBoss ~= 'The Saw' then
                    if SelectBoss ~= 'Yeti' then
                        if SelectBoss ~= 'Mob Leader' then
                            if SelectBoss ~= 'Vice Admiral' then
                                if SelectBoss ~= 'Saber Expert' then
                                    if SelectBoss ~= 'Warden' then
                                        if SelectBoss ~= 'Chief Warden' then
                                            if SelectBoss ~= 'Swan' then
                                                if SelectBoss ~= 'Magma Admiral' then
                                                    if SelectBoss ~= 'Fishman Lord' then
                                                        if SelectBoss ~= 'Wysper' then
                                                            if SelectBoss ~= 'Thunder God' then
                                                                if SelectBoss ~= 'Cyborg' then
                                                                    if SelectBoss ~= 'Ice Admiral' then
                                                                        if SelectBoss == 'Greybeard' then
                                                                            BossMon = 'Greybeard'
                                                                            NameBoss = 'Greybeard'
                                                                            CFrameBoss = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
                                                                        end
                                                                    else
                                                                        BossMon = 'Ice Admiral'
                                                                        NameBoss = 'Ice Admiral'
                                                                        CFrameBoss = CFrame.new(1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0, 0.81913656, 0, -0.573599219)
                                                                    end
                                                                else
                                                                    BossMon = 'Cyborg'
                                                                    NameBoss = 'Cyborg'
                                                                    NameQuestBoss = 'FountainQuest'
                                                                    QuestLvBoss = 3
                                                                    RewardBoss = 'Reward:\n$20,000\n7,500,000 Exp.'
                                                                    CFrameQBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
                                                                    CFrameBoss = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)
                                                                end
                                                            else
                                                                BossMon = 'Thunder God'
                                                                NameBoss = 'Thunder God'
                                                                NameQuestBoss = 'SkyExp2Quest'
                                                                QuestLvBoss = 3
                                                                RewardBoss = 'Reward:\n$20,000\n5,800,000 Exp.'
                                                                CFrameQBoss = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
                                                                CFrameBoss = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188)
                                                            end
                                                        else
                                                            BossMon = 'Wysper'
                                                            NameBoss = 'Wysper'
                                                            NameQuestBoss = 'SkyExp1Quest'
                                                            QuestLvBoss = 3
                                                            RewardBoss = 'Reward:\n$15,000\n4,800,000 Exp.'
                                                            CFrameQBoss = CFrame.new(-7861.947265625, 5545.517578125, -379.85974121094)
                                                            CFrameBoss = CFrame.new(-7866.1333007813, 5576.4311523438, -546.74816894531)
                                                        end
                                                    else
                                                        BossMon = 'Fishman Lord'
                                                        NameBoss = 'Fishman Lord'
                                                        NameQuestBoss = 'FishmanQuest'
                                                        QuestLvBoss = 3
                                                        RewardBoss = 'Reward:\n$15,000\n4,000,000 Exp.'
                                                        CFrameQBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                                                        CFrameBoss = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984)
                                                    end
                                                else
                                                    BossMon = 'Magma Admiral'
                                                    NameBoss = 'Magma Admiral'
                                                    NameQuestBoss = 'MagmaQuest'
                                                    QuestLvBoss = 3
                                                    RewardBoss = 'Reward:\n$15,000\n2,800,000 Exp.'
                                                    CFrameQBoss = CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875)
                                                    CFrameBoss = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875)
                                                end
                                            else
                                                BossMon = 'Swan'
                                                NameBoss = 'Swan'
                                                NameQuestBoss = 'ImpelQuest'
                                                QuestLvBoss = 3
                                                RewardBoss = 'Reward:\n$15,000\n1,600,000 Exp.'
                                                CFrameBoss = CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, 0, 0.951042235, 0, 1, 0, -0.951042235, 0, -0.309060812)
                                                CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
                                            end
                                        else
                                            BossMon = 'Chief Warden'
                                            NameBoss = 'Chief Warden'
                                            NameQuestBoss = 'ImpelQuest'
                                            QuestLvBoss = 2
                                            RewardBoss = 'Reward:\n$10,000\n1,000,000 Exp.'
                                            CFrameBoss = CFrame.new(5206.92578, 0.997753382, 814.976746, 0.342041343, -0.00062915677, 0.939684749, 0.00191645394, 0.999998152, -0.000028042234, -0.939682961, 0.00181045406, 0.342041939)
                                            CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
                                        end
                                    else
                                        BossMon = 'Warden'
                                        NameBoss = 'Warden'
                                        NameQuestBoss = 'ImpelQuest'
                                        QuestLvBoss = 1
                                        RewardBoss = 'Reward:\n$6,000\n850,000 Exp.'
                                        CFrameBoss = CFrame.new(5278.04932, 2.15167475, 944.101929, 0.220546961, -4.499464e-6, 0.975376427, -0.000019541258, 1, 9.031621e-6, -0.975376427, -0.000021051976, 0.220546961)
                                        CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
                                    end
                                else
                                    NameBoss = 'Saber Expert'
                                    BossMon = 'Saber Expert'
                                    CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564)
                                end
                            else
                                BossMon = 'Vice Admiral'
                                NameBoss = 'Vice Admiral'
                                NameQuestBoss = 'MarineQuest2'
                                QuestLvBoss = 2
                                RewardBoss = 'Reward:\n$10,000\n180,000 Exp.'
                                CFrameQBoss = CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625)
                                CFrameBoss = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375)
                            end
                        else
                            BossMon = 'Mob Leader'
                            NameBoss = 'Mob Leader'
                            CFrameBoss = CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813)
                        end
                    else
                        BossMon = 'Yeti'
                        NameBoss = 'Yeti'
                        NameQuestBoss = 'SnowQuest'
                        QuestLvBoss = 3
                        RewardBoss = 'Reward:\n$10,000\n180,000 Exp.'
                        CFrameQBoss = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
                        CFrameBoss = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
                    end
                else
                    BossMon = 'The Saw'
                    NameBoss = 'The Saw'
                    CFrameBoss = CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906)
                end
            else
                BossMon = 'Bobby'
                NameBoss = 'Bobby'
                NameQuestBoss = 'BuggyQuest1'
                QuestLvBoss = 3
                RewardBoss = 'Reward:\n$8,000\n35,000 Exp.'
                CFrameQBoss = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
                CFrameBoss = CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344)
            end
        else
            BossMon = 'The Gorilla King'
            NameBoss = 'The Gorrila King'
            NameQuestBoss = 'JungleQuest'
            QuestLvBoss = 3
            RewardBoss = 'Reward:\n$2,000\n7,000 Exp.'
            CFrameQBoss = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameBoss = CFrame.new(-1088.75977, 8.13463783, -488.559906, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247)
        end
    end
    if Sea2 then
        if SelectBoss ~= 'Diamond' then
            if SelectBoss ~= 'Jeremy' then
                if SelectBoss ~= 'Fajita' then
                    if SelectBoss ~= 'Don Swan' then
                        if SelectBoss ~= 'Smoke Admiral' then
                            if SelectBoss ~= 'Awakened Ice Admiral' then
                                if SelectBoss ~= 'Tide Keeper' then
                                    if SelectBoss ~= 'Darkbeard' then
                                        if SelectBoss ~= 'Cursed Captain' then
                                            if SelectBoss == 'Order' then
                                                BossMon = 'Order'
                                                NameBoss = 'Order'
                                                CFrameBoss = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875)
                                            end
                                        else
                                            BossMon = 'Cursed Captain'
                                            NameBoss = 'Cursed Captain'
                                            CFrameBoss = CFrame.new(916.928589, 181.092773, 33422)
                                        end
                                    else
                                        BossMon = 'Darkbeard'
                                        NameBoss = 'Darkbeard'
                                        CFrameMon = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531)
                                    end
                                else
                                    BossMon = 'Tide Keeper'
                                    NameBoss = 'Tide Keeper'
                                    NameQuestBoss = 'ForgottenQuest'
                                    QuestLvBoss = 3
                                    RewardBoss = 'Reward:\n$12,500\n38,000,000 Exp.'
                                    CFrameQBoss = CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625)
                                    CFrameBoss = CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188)
                                end
                            else
                                BossMon = 'Awakened Ice Admiral'
                                NameBoss = 'Awakened Ice Admiral'
                                NameQuestBoss = 'FrostQuest'
                                QuestLvBoss = 3
                                RewardBoss = 'Reward:\n$20,000\n36,000,000 Exp.'
                                CFrameQBoss = CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813)
                                CFrameBoss = CFrame.new(6403.5439453125, 340.29766845703, -6894.5595703125)
                            end
                        else
                            BossMon = 'Smoke Admiral'
                            NameBoss = 'Smoke Admiral'
                            NameQuestBoss = 'IceSideQuest'
                            QuestLvBoss = 3
                            RewardBoss = 'Reward:\n$20,000\n25,000,000 Exp.'
                            CFrameQBoss = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
                            CFrameBoss = CFrame.new(-5275.1987304688, 20.757257461548, -5260.6669921875)
                        end
                    else
                        BossMon = 'Don Swan'
                        NameBoss = 'Don Swan'
                        CFrameBoss = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875)
                    end
                else
                    BossMon = 'Fajita'
                    NameBoss = 'Fajita'
                    NameQuestBoss = 'MarineQuest3'
                    QuestLvBoss = 3
                    RewardBoss = 'Reward:\n$25,000\n15,000,000 Exp.'
                    CFrameQBoss = CFrame.new(-2441.986328125, 73.359344482422, -3217.5324707031)
                    CFrameBoss = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625)
                end
            else
                BossMon = 'Jeremy'
                NameBoss = 'Jeremy'
                NameQuestBoss = 'Area2Quest'
                QuestLvBoss = 3
                RewardBoss = 'Reward:\n$25,000\n11,500,000 Exp.'
                CFrameQBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063)
                CFrameBoss = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109)
            end
        else
            BossMon = 'Diamond'
            NameBoss = 'Diamond'
            NameQuestBoss = 'Area1Quest'
            QuestLvBoss = 3
            RewardBoss = 'Reward:\n$25,000\n9,000,000 Exp.'
            CFrameQBoss = CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375)
            CFrameBoss = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407)
        end
    end
    if Sea3 then
        if SelectBoss ~= 'Stone' then
            if SelectBoss ~= 'Hydra Leader' then
                if SelectBoss ~= 'Kilo Admiral' then
                    if SelectBoss ~= 'Captain Elephant' then
                        if SelectBoss ~= 'Beautiful Pirate' then
                            if SelectBoss ~= 'Cake Queen' then
                                if SelectBoss ~= 'Longma' then
                                    if SelectBoss ~= 'Soul Reaper' then
                                        if SelectBoss == 'rip_indra True Form' then
                                            BossMon = 'rip_indra True Form'
                                            NameBoss = 'rip_indra True Form'
                                            CFrameBoss = CFrame.new(-5415.3920898438, 505.74133300781, -2814.0166015625)
                                        end
                                    else
                                        BossMon = 'Soul Reaper'
                                        NameBoss = 'Soul Reaper'
                                        CFrameBoss = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
                                    end
                                else
                                    BossMon = 'Longma'
                                    NameBoss = 'Longma'
                                    CFrameBoss = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
                                end
                            else
                                BossMon = 'Cake Queen'
                                NameBoss = 'Cake Queen'
                                NameQuestBoss = 'IceCreamIslandQuest'
                                QuestLvBoss = 3
                                RewardBoss = 'Reward:\n$30,000\n112,500,000 Exp.'
                                CFrameQBoss = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
                                CFrameBoss = CFrame.new(-678.648804, 381.353943, -11114.2012, -0.908641815, 0.00149294338, 0.41757378, 0.00837114919, 0.999857843, 0.0146408929, -0.417492568, 0.0167988986, -0.90852499)
                            end
                        else
                            BossMon = 'Beautiful Pirate'
                            NameBoss = 'Beautiful Pirate'
                            NameQuestBoss = 'DeepForestIsland2'
                            QuestLvBoss = 3
                            RewardBoss = 'Reward:\n$50,000\n70,000,000 Exp.'
                            CFrameQBoss = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
                            CFrameBoss = CFrame.new(5283.609375, 22.56223487854, -110.78285217285)
                        end
                    else
                        BossMon = 'Captain Elephant'
                        NameBoss = 'Captain Elephant'
                        NameQuestBoss = 'DeepForestIsland'
                        QuestLvBoss = 3
                        RewardBoss = 'Reward:\n$40,000\n67,000,000 Exp.'
                        CFrameQBoss = CFrame.new(-13232.682617188, 332.40396118164, -7626.01171875)
                        CFrameBoss = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125)
                    end
                else
                    BossMon = 'Kilo Admiral'
                    NameBoss = 'Kilo Admiral'
                    NameQuestBoss = 'MarineTreeIsland'
                    QuestLvBoss = 3
                    RewardBoss = 'Reward:\n$35,000\n56,000,000 Exp.'
                    CFrameQBoss = CFrame.new(2179.3010253906, 28.731239318848, -6739.9741210938)
                    CFrameBoss = CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125)
                end
            else
                BossMon = 'Hydra Leader'
                NameBoss = 'Hydra Leader'
                NameQuestBoss = 'VenomCrewQuest'
                QuestLvBoss = 3
                RewardBoss = 'Reward:\n$30,000\n52,000,000 Exp.'
                CFrameQBoss = CFrame.new(5445.9541015625, 601.62945556641, 751.43792724609)
                CFrameBoss = CFrame.new(5543.86328125, 668.97399902344, 199.0341796875)
            end
        else
            BossMon = 'Stone'
            NameBoss = 'Stone'
            NameQuestBoss = 'PiratePortQuest'
            QuestLvBoss = 3
            RewardBoss = 'Reward:\n$25,000\n40,000,000 Exp.'
            CFrameQBoss = CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625)
            CFrameBoss = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438)
        end
    end
end
function MaterialMon()
    if SelectMaterial ~= 'Radioactive Material' then
        if SelectMaterial ~= 'Mystic Droplet' then
            if SelectMaterial ~= 'Magma Ore' then
                if SelectMaterial ~= 'Angel Wings' then
                    if SelectMaterial ~= 'Leather' then
                        if SelectMaterial ~= 'Scrap Metal' then
                            if SelectMaterial ~= 'Fish Tail' then
                                if SelectMaterial ~= 'Demonic Wisp' then
                                    if SelectMaterial ~= 'Vampire Fang' then
                                        if SelectMaterial ~= 'Conjured Cocoa' then
                                            if SelectMaterial ~= 'Dragon Scale' then
                                                if SelectMaterial ~= 'Gunpowder' then
                                                    if SelectMaterial ~= 'Hydra Enforcer' then
                                                        if SelectMaterial ~= 'Venomous Assailant' then
                                                            if SelectMaterial == 'Mini Tusk' then
                                                                MMon = 'Mythological Pirate'
                                                                MPos = CFrame.new()
                                                                SP = 'Default'
                                                            end
                                                        else
                                                            MMon = 'Venomous Assailant'
                                                            MPos = CFrame.new(4879.92041015625, 1089.46142578125, 1104.00830078125)
                                                            SP = 'Default'
                                                        end
                                                    else
                                                        MMon = 'Hydra Enforcer'
                                                        MPos = CFrame.new(4581.517578125, 1001.55908203125, 704.9378662109375)
                                                        SP = 'Default'
                                                    end
                                                else
                                                    MMon = 'Pistol Billionaire'
                                                    MPos = CFrame.new(-469, 74, 5904)
                                                    SP = 'Default'
                                                end
                                            else
                                                MMon = 'Dragon Crew Archer'
                                                MPos = CFrame.new(6827.91455078125, 609.4127197265625, 252.3538055419922)
                                                SP = 'Default'
                                            end
                                        else
                                            MMon = 'Chocolate Bar Battler'
                                            MPos = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625)
                                            SP = 'Default'
                                        end
                                    else
                                        MMon = 'Vampire'
                                        MPos = CFrame.new(-6033, 7, -1317)
                                        SP = 'Default'
                                    end
                                else
                                    MMon = 'Demonic Soul'
                                    MPos = CFrame.new(-9507, 172, 6158)
                                    SP = 'Default'
                                end
                            elseif Sea3 then
                                MMon = 'Fishman Raider'
                                MPos = CFrame.new(-10993, 332, -8940)
                                SP = 'Default'
                            elseif Sea1 then
                                MMon = 'Fishman Warrior'
                                MPos = CFrame.new(61123, 19, 1569)
                                SP = 'Default'

                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)).Magnitude >= 17000 then
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875))
                                end
                            end
                        elseif Sea1 then
                            MMon = 'Brute'
                            MPos = CFrame.new(-1145, 15, 4350)
                            SP = 'Default'
                        elseif Sea2 then
                            MMon = 'Swan Pirate'
                            MPos = CFrame.new(878, 122, 1235)
                            SP = 'Default'
                        elseif Sea3 then
                            MMon = 'Jungle Pirate'
                            MPos = CFrame.new(-12107, 332, -10549)
                            SP = 'Default'
                        end
                    elseif Sea1 then
                        MMon = 'Brute'
                        MPos = CFrame.new(-1145, 15, 4350)
                        SP = 'Default'
                    elseif Sea2 then
                        MMon = 'Marine Captain'
                        MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
                        SP = 'Default'
                    elseif Sea3 then
                        MMon = 'Jungle Pirate'
                        MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
                        SP = 'Default'
                    end
                else
                    MMon = "God's Guard"
                    MPos = CFrame.new(-4698, 845, -1912)
                    SP = 'Default'

                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-7859.09814, 5544.19043, -381.476196)).Magnitude >= 5000 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-7859.09814, 5544.19043, -381.476196))
                    end
                end
            elseif Sea1 then
                MMon = 'Military Spy'
                MPos = CFrame.new(-5815, 84, 8820)
                SP = 'Default'
            elseif Sea2 then
                MMon = 'Magma Ninja'
                MPos = CFrame.new(-5428, 78, -5959)
                SP = 'Default'
            end
        else
            MMon = 'Water Fighter'
            MPos = CFrame.new(-3385, 239, -10542)
            SP = 'Default'
        end
    else
        MMon = 'Factory Staff'
        MPos = CFrame.new(295, 73, -56)
        SP = 'Default'
    end
end
function UpdateIslandESP()
    local v42, v43, v44 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

    while true do
        local u45

        v44, u45 = v42(v43, v44)

        if v44 == nil then
            break
        end

        pcall(function()
            if IslandESP then
                if u45.Name ~= 'Sea' then
                    if u45:FindFirstChild('NameEsp') then
                        u45.NameEsp.TextLabel.Text = u45.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - u45.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui = Instance.new('BillboardGui', u45)

                        _BillboardGui.Name = 'NameEsp'
                        _BillboardGui.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui.Adornee = u45
                        _BillboardGui.AlwaysOnTop = true

                        local _TextLabel4 = Instance.new('TextLabel', _BillboardGui)

                        _TextLabel4.Font = 'GothamBold'
                        _TextLabel4.FontSize = 'Size14'
                        _TextLabel4.TextWrapped = true
                        _TextLabel4.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel4.TextYAlignment = 'Top'
                        _TextLabel4.BackgroundTransparency = 1
                        _TextLabel4.TextStrokeTransparency = 0.5
                        _TextLabel4.TextColor3 = Color3.fromRGB(8, 0, 0)
                    end
                end
            elseif u45:FindFirstChild('NameEsp') then
                u45:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function isnil(p48)
    return p48 == nil
end

local function u50(p49)
    return math.floor(tonumber(p49) + 0.5)
end

Number = math.random(1, 1000000)

function UpdatePlayerChams()
    local v51, v52, v53 = pairs(game:GetService('Players'):GetChildren())

    while true do
        local u54

        v53, u54 = v51(v52, v53)

        if v53 == nil then
            break
        end

        pcall(function()
            if not isnil(u54.Character) then
                if ESPPlayer then
                    if isnil(u54.Character.Head) or u54.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        u54.Character.Head['NameEsp' .. Number].TextLabel.Text = u54.Name .. ' | ' .. u50((game:GetService('Players').LocalPlayer.Character.Head.Position - u54.Character.Head.Position).Magnitude / 3) .. ' Distance\nHealth : ' .. u50(u54.Character.Humanoid.Health * 100 / u54.Character.Humanoid.MaxHealth) .. '%'
                    else
                        local _BillboardGui2 = Instance.new('BillboardGui', u54.Character.Head)

                        _BillboardGui2.Name = 'NameEsp' .. Number
                        _BillboardGui2.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui2.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui2.Adornee = u54.Character.Head
                        _BillboardGui2.AlwaysOnTop = true

                        local _TextLabel5 = Instance.new('TextLabel', _BillboardGui2)

                        _TextLabel5.Font = Enum.Font.GothamSemibold
                        _TextLabel5.FontSize = 'Size10'
                        _TextLabel5.TextWrapped = true
                        _TextLabel5.Text = u54.Name .. ' \n' .. u50((game:GetService('Players').LocalPlayer.Character.Head.Position - u54.Character.Head.Position).Magnitude / 3) .. ' Distance'
                        _TextLabel5.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel5.TextYAlignment = 'Top'
                        _TextLabel5.BackgroundTransparency = 1
                        _TextLabel5.TextStrokeTransparency = 0.5

                        if u54.Team ~= game.Players.LocalPlayer.Team then
                            _TextLabel5.TextColor3 = Color3.new(255, 0, 0)
                        else
                            _TextLabel5.TextColor3 = Color3.new(0, 0, 254)
                        end
                    end
                elseif u54.Character.Head:FindFirstChild('NameEsp' .. Number) then
                    u54.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateChestChams()
    local v57, v58, v59 = pairs(game.Workspace:GetChildren())

    while true do
        local u60

        v59, u60 = v57(v58, v59)

        if v59 == nil then
            break
        end

        pcall(function()
            if string.find(u60.Name, 'Chest') then
                if ChestESP then
                    if string.find(u60.Name, 'Chest') then
                        if u60:FindFirstChild('NameEsp' .. Number) then
                            u60['NameEsp' .. Number].TextLabel.Text = u60.Name .. '   \n' .. u50((game:GetService('Players').LocalPlayer.Character.Head.Position - u60.Position).Magnitude / 3) .. ' Distance'
                        else
                            local _BillboardGui3 = Instance.new('BillboardGui', u60)

                            _BillboardGui3.Name = 'NameEsp' .. Number
                            _BillboardGui3.ExtentsOffset = Vector3.new(0, 1, 0)
                            _BillboardGui3.Size = UDim2.new(1, 200, 1, 30)
                            _BillboardGui3.Adornee = u60
                            _BillboardGui3.AlwaysOnTop = true

                            local _TextLabel6 = Instance.new('TextLabel', _BillboardGui3)

                            _TextLabel6.Font = Enum.Font.GothamSemibold
                            _TextLabel6.FontSize = 'Size14'
                            _TextLabel6.TextWrapped = true
                            _TextLabel6.Size = UDim2.new(1, 0, 1, 0)
                            _TextLabel6.TextYAlignment = 'Top'
                            _TextLabel6.BackgroundTransparency = 1
                            _TextLabel6.TextStrokeTransparency = 0.5

                            if u60.Name == 'Chest1' then
                                _TextLabel6.TextColor3 = Color3.fromRGB(109, 109, 109)
                                _TextLabel6.Text = 'Chest 1' .. ' \n' .. u50((game:GetService('Players').LocalPlayer.Character.Head.Position - u60.Position).Magnitude / 3) .. ' Distance'
                            end
                            if u60.Name == 'Chest2' then
                                _TextLabel6.TextColor3 = Color3.fromRGB(173, 158, 21)
                                _TextLabel6.Text = 'Chest 2' .. ' \n' .. u50((game:GetService('Players').LocalPlayer.Character.Head.Position - u60.Position).Magnitude / 3) .. ' Distance'
                            end
                            if u60.Name == 'Chest3' then
                                _TextLabel6.TextColor3 = Color3.fromRGB(85, 255, 255)
                                _TextLabel6.Text = 'Chest 3' .. ' \n' .. u50((game:GetService('Players').LocalPlayer.Character.Head.Position - u60.Position).Magnitude / 3) .. ' Distance'
                            end
                        end
                    end
                elseif u60:FindFirstChild('NameEsp' .. Number) then
                    u60:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateDevilChams()
    local v63, v64, v65 = pairs(game.Workspace:GetChildren())

    while true do
        local u66

        v65, u66 = v63(v64, v65)

        if v65 == nil then
            break
        end

        pcall(function()
            if DevilFruitESP then
                if string.find(u66.Name, 'Fruit') then
                    if u66.Handle:FindFirstChild('NameEsp' .. Number) then
                        u66.Handle['NameEsp' .. Number].TextLabel.Text = u66.Name .. '   \n' .. u50((game:GetService('Players').LocalPlayer.Character.Head.Position - u66.Handle.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui4 = Instance.new('BillboardGui', u66.Handle)

                        _BillboardGui4.Name = 'NameEsp' .. Number
                        _BillboardGui4.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui4.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui4.Adornee = u66.Handle
                        _BillboardGui4.AlwaysOnTop = true

                        local _TextLabel7 = Instance.new('TextLabel', _BillboardGui4)

                        _TextLabel7.Font = Enum.Font.GothamSemibold
                        _TextLabel7.FontSize = 'Size14'
                        _TextLabel7.TextWrapped = true
                        _TextLabel7.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel7.TextYAlignment = 'Top'
                        _TextLabel7.BackgroundTransparency = 1
                        _TextLabel7.TextStrokeTransparency = 0.5
                        _TextLabel7.TextColor3 = Color3.fromRGB(255, 255, 255)
                        _TextLabel7.Text = u66.Name .. ' \n' .. u50((game:GetService('Players').LocalPlayer.Character.Head.Position - u66.Handle.Position).Magnitude / 3) .. ' Distance'
                    end
                end
            elseif u66.Handle:FindFirstChild('NameEsp' .. Number) then
                u66.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end)
    end
end
function UpdateFlowerChams()
    local v69, v70, v71 = pairs(game.Workspace:GetChildren())

    while true do
        local u72

        v71, u72 = v69(v70, v71)

        if v71 == nil then
            break
        end

        pcall(function()
            if u72.Name == 'Flower2' or u72.Name == 'Flower1' then
                if FlowerESP then
                    if u72:FindFirstChild('NameEsp' .. Number) then
                        u72['NameEsp' .. Number].TextLabel.Text = u72.Name .. '   \n' .. u50((game:GetService('Players').LocalPlayer.Character.Head.Position - u72.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui5 = Instance.new('BillboardGui', u72)

                        _BillboardGui5.Name = 'NameEsp' .. Number
                        _BillboardGui5.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui5.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui5.Adornee = u72
                        _BillboardGui5.AlwaysOnTop = true

                        local _TextLabel8 = Instance.new('TextLabel', _BillboardGui5)

                        _TextLabel8.Font = Enum.Font.GothamSemibold
                        _TextLabel8.FontSize = 'Size14'
                        _TextLabel8.TextWrapped = true
                        _TextLabel8.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel8.TextYAlignment = 'Top'
                        _TextLabel8.BackgroundTransparency = 1
                        _TextLabel8.TextStrokeTransparency = 0.5
                        _TextLabel8.TextColor3 = Color3.fromRGB(255, 0, 0)

                        if u72.Name == 'Flower1' then
                            _TextLabel8.Text = 'Blue Flower' .. ' \n' .. u50((game:GetService('Players').LocalPlayer.Character.Head.Position - u72.Position).Magnitude / 3) .. ' Distance'
                            _TextLabel8.TextColor3 = Color3.fromRGB(0, 0, 255)
                        end
                        if u72.Name == 'Flower2' then
                            _TextLabel8.Text = 'Red Flower' .. ' \n' .. u50((game:GetService('Players').LocalPlayer.Character.Head.Position - u72.Position).Magnitude / 3) .. ' Distance'
                            _TextLabel8.TextColor3 = Color3.fromRGB(255, 0, 0)
                        end
                    end
                elseif u72:FindFirstChild('NameEsp' .. Number) then
                    u72:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateRealFruitChams()
    local v75, v76, v77 = pairs(game.Workspace.AppleSpawner:GetChildren())

    while true do
        local v78

        v77, v78 = v75(v76, v77)

        if v77 == nil then
            break
        end
        if v78:IsA('Tool') then
            if RealFruitESP then
                if v78.Handle:FindFirstChild('NameEsp' .. Number) then
                    v78.Handle['NameEsp' .. Number].TextLabel.Text = v78.Name .. ' ' .. u50((game:GetService('Players').LocalPlayer.Character.Head.Position - v78.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui6 = Instance.new('BillboardGui', v78.Handle)

                    _BillboardGui6.Name = 'NameEsp' .. Number
                    _BillboardGui6.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui6.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui6.Adornee = v78.Handle
                    _BillboardGui6.AlwaysOnTop = true

                    local _TextLabel9 = Instance.new('TextLabel', _BillboardGui6)

                    _TextLabel9.Font = Enum.Font.GothamSemibold
                    _TextLabel9.FontSize = 'Size14'
                    _TextLabel9.TextWrapped = true
                    _TextLabel9.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel9.TextYAlignment = 'Top'
                    _TextLabel9.BackgroundTransparency = 1
                    _TextLabel9.TextStrokeTransparency = 0.5
                    _TextLabel9.TextColor3 = Color3.fromRGB(255, 0, 0)
                    _TextLabel9.Text = v78.Name .. ' \n' .. u50((game:GetService('Players').LocalPlayer.Character.Head.Position - v78.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v78.Handle:FindFirstChild('NameEsp' .. Number) then
                v78.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v81, v82, v83 = pairs(game.Workspace.PineappleSpawner:GetChildren())

    while true do
        local v84

        v83, v84 = v81(v82, v83)

        if v83 == nil then
            break
        end
        if v84:IsA('Tool') then
            if RealFruitESP then
                if v84.Handle:FindFirstChild('NameEsp' .. Number) then
                    v84.Handle['NameEsp' .. Number].TextLabel.Text = v84.Name .. ' ' .. u50((game:GetService('Players').LocalPlayer.Character.Head.Position - v84.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui7 = Instance.new('BillboardGui', v84.Handle)

                    _BillboardGui7.Name = 'NameEsp' .. Number
                    _BillboardGui7.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui7.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui7.Adornee = v84.Handle
                    _BillboardGui7.AlwaysOnTop = true

                    local _TextLabel10 = Instance.new('TextLabel', _BillboardGui7)

                    _TextLabel10.Font = Enum.Font.GothamSemibold
                    _TextLabel10.FontSize = 'Size14'
                    _TextLabel10.TextWrapped = true
                    _TextLabel10.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel10.TextYAlignment = 'Top'
                    _TextLabel10.BackgroundTransparency = 1
                    _TextLabel10.TextStrokeTransparency = 0.5
                    _TextLabel10.TextColor3 = Color3.fromRGB(255, 174, 0)
                    _TextLabel10.Text = v84.Name .. ' \n' .. u50((game:GetService('Players').LocalPlayer.Character.Head.Position - v84.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v84.Handle:FindFirstChild('NameEsp' .. Number) then
                v84.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v87, v88, v89 = pairs(game.Workspace.BananaSpawner:GetChildren())

    while true do
        local v90

        v89, v90 = v87(v88, v89)

        if v89 == nil then
            break
        end
        if v90:IsA('Tool') then
            if RealFruitESP then
                if v90.Handle:FindFirstChild('NameEsp' .. Number) then
                    v90.Handle['NameEsp' .. Number].TextLabel.Text = v90.Name .. ' ' .. u50((game:GetService('Players').LocalPlayer.Character.Head.Position - v90.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui8 = Instance.new('BillboardGui', v90.Handle)

                    _BillboardGui8.Name = 'NameEsp' .. Number
                    _BillboardGui8.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui8.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui8.Adornee = v90.Handle
                    _BillboardGui8.AlwaysOnTop = true

                    local _TextLabel11 = Instance.new('TextLabel', _BillboardGui8)

                    _TextLabel11.Font = Enum.Font.GothamSemibold
                    _TextLabel11.FontSize = 'Size14'
                    _TextLabel11.TextWrapped = true
                    _TextLabel11.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel11.TextYAlignment = 'Top'
                    _TextLabel11.BackgroundTransparency = 1
                    _TextLabel11.TextStrokeTransparency = 0.5
                    _TextLabel11.TextColor3 = Color3.fromRGB(251, 255, 0)
                    _TextLabel11.Text = v90.Name .. ' \n' .. u50((game:GetService('Players').LocalPlayer.Character.Head.Position - v90.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v90.Handle:FindFirstChild('NameEsp' .. Number) then
                v90.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end
end
function UpdateIslandESP()
    local v93, v94, v95 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

    while true do
        local u96

        v95, u96 = v93(v94, v95)

        if v95 == nil then
            break
        end

        pcall(function()
            if IslandESP then
                if u96.Name ~= 'Sea' then
                    if u96:FindFirstChild('NameEsp') then
                        u96.NameEsp.TextLabel.Text = u96.Name .. '   \n' .. u50((game:GetService('Players').LocalPlayer.Character.Head.Position - u96.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui9 = Instance.new('BillboardGui', u96)

                        _BillboardGui9.Name = 'NameEsp'
                        _BillboardGui9.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui9.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui9.Adornee = u96
                        _BillboardGui9.AlwaysOnTop = true

                        local _TextLabel12 = Instance.new('TextLabel', _BillboardGui9)

                        _TextLabel12.Font = 'GothamBold'
                        _TextLabel12.FontSize = 'Size14'
                        _TextLabel12.TextWrapped = true
                        _TextLabel12.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel12.TextYAlignment = 'Top'
                        _TextLabel12.BackgroundTransparency = 1
                        _TextLabel12.TextStrokeTransparency = 0.5
                        _TextLabel12.TextColor3 = Color3.fromRGB(7, 236, 240)
                    end
                end
            elseif u96:FindFirstChild('NameEsp') then
                u96:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function isnil(p99)
    return p99 == nil
end

local function u101(p100)
    return math.floor(tonumber(p100) + 0.5)
end

Number = math.random(1, 1000000)

function UpdatePlayerChams()
    local v102, v103, v104 = pairs(game:GetService('Players'):GetChildren())

    while true do
        local u105

        v104, u105 = v102(v103, v104)

        if v104 == nil then
            break
        end

        pcall(function()
            if not isnil(u105.Character) then
                if ESPPlayer then
                    if isnil(u105.Character.Head) or u105.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        u105.Character.Head['NameEsp' .. Number].TextLabel.Text = u105.Name .. ' | ' .. u101((game:GetService('Players').LocalPlayer.Character.Head.Position - u105.Character.Head.Position).Magnitude / 3) .. ' Distance\nHealth : ' .. u101(u105.Character.Humanoid.Health * 100 / u105.Character.Humanoid.MaxHealth) .. '%'
                    else
                        local _BillboardGui10 = Instance.new('BillboardGui', u105.Character.Head)

                        _BillboardGui10.Name = 'NameEsp' .. Number
                        _BillboardGui10.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui10.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui10.Adornee = u105.Character.Head
                        _BillboardGui10.AlwaysOnTop = true

                        local _TextLabel13 = Instance.new('TextLabel', _BillboardGui10)

                        _TextLabel13.Font = Enum.Font.GothamSemibold
                        _TextLabel13.FontSize = 'Size14'
                        _TextLabel13.TextWrapped = true
                        _TextLabel13.Text = u105.Name .. ' \n' .. u101((game:GetService('Players').LocalPlayer.Character.Head.Position - u105.Character.Head.Position).Magnitude / 3) .. ' Distance'
                        _TextLabel13.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel13.TextYAlignment = 'Top'
                        _TextLabel13.BackgroundTransparency = 1
                        _TextLabel13.TextStrokeTransparency = 0.5

                        if u105.Team ~= game.Players.LocalPlayer.Team then
                            _TextLabel13.TextColor3 = Color3.new(255, 0, 0)
                        else
                            _TextLabel13.TextColor3 = Color3.new(0, 255, 0)
                        end
                    end
                elseif u105.Character.Head:FindFirstChild('NameEsp' .. Number) then
                    u105.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateChestChams()
    local v108, v109, v110 = pairs(game.Workspace:GetChildren())

    while true do
        local u111

        v110, u111 = v108(v109, v110)

        if v110 == nil then
            break
        end

        pcall(function()
            if string.find(u111.Name, 'Chest') then
                if ChestESP then
                    if string.find(u111.Name, 'Chest') then
                        if u111:FindFirstChild('NameEsp' .. Number) then
                            u111['NameEsp' .. Number].TextLabel.Text = u111.Name .. '   \n' .. u101((game:GetService('Players').LocalPlayer.Character.Head.Position - u111.Position).Magnitude / 3) .. ' Distance'
                        else
                            local _BillboardGui11 = Instance.new('BillboardGui', u111)

                            _BillboardGui11.Name = 'NameEsp' .. Number
                            _BillboardGui11.ExtentsOffset = Vector3.new(0, 1, 0)
                            _BillboardGui11.Size = UDim2.new(1, 200, 1, 30)
                            _BillboardGui11.Adornee = u111
                            _BillboardGui11.AlwaysOnTop = true

                            local _TextLabel14 = Instance.new('TextLabel', _BillboardGui11)

                            _TextLabel14.Font = Enum.Font.GothamSemibold
                            _TextLabel14.FontSize = 'Size14'
                            _TextLabel14.TextWrapped = true
                            _TextLabel14.Size = UDim2.new(1, 0, 1, 0)
                            _TextLabel14.TextYAlignment = 'Top'
                            _TextLabel14.BackgroundTransparency = 1
                            _TextLabel14.TextStrokeTransparency = 0.5

                            if u111.Name == 'Chest1' then
                                _TextLabel14.TextColor3 = Color3.fromRGB(109, 109, 109)
                                _TextLabel14.Text = 'Chest 1' .. ' \n' .. u101((game:GetService('Players').LocalPlayer.Character.Head.Position - u111.Position).Magnitude / 3) .. ' Distance'
                            end
                            if u111.Name == 'Chest2' then
                                _TextLabel14.TextColor3 = Color3.fromRGB(173, 158, 21)
                                _TextLabel14.Text = 'Chest 2' .. ' \n' .. u101((game:GetService('Players').LocalPlayer.Character.Head.Position - u111.Position).Magnitude / 3) .. ' Distance'
                            end
                            if u111.Name == 'Chest3' then
                                _TextLabel14.TextColor3 = Color3.fromRGB(85, 255, 255)
                                _TextLabel14.Text = 'Chest 3' .. ' \n' .. u101((game:GetService('Players').LocalPlayer.Character.Head.Position - u111.Position).Magnitude / 3) .. ' Distance'
                            end
                        end
                    end
                elseif u111:FindFirstChild('NameEsp' .. Number) then
                    u111:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateDevilChams()
    local v114, v115, v116 = pairs(game.Workspace:GetChildren())

    while true do
        local u117

        v116, u117 = v114(v115, v116)

        if v116 == nil then
            break
        end

        pcall(function()
            if DevilFruitESP then
                if string.find(u117.Name, 'Fruit') then
                    if u117.Handle:FindFirstChild('NameEsp' .. Number) then
                        u117.Handle['NameEsp' .. Number].TextLabel.Text = u117.Name .. '   \n' .. u101((game:GetService('Players').LocalPlayer.Character.Head.Position - u117.Handle.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui12 = Instance.new('BillboardGui', u117.Handle)

                        _BillboardGui12.Name = 'NameEsp' .. Number
                        _BillboardGui12.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui12.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui12.Adornee = u117.Handle
                        _BillboardGui12.AlwaysOnTop = true

                        local _TextLabel15 = Instance.new('TextLabel', _BillboardGui12)

                        _TextLabel15.Font = Enum.Font.GothamSemibold
                        _TextLabel15.FontSize = 'Size14'
                        _TextLabel15.TextWrapped = true
                        _TextLabel15.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel15.TextYAlignment = 'Top'
                        _TextLabel15.BackgroundTransparency = 1
                        _TextLabel15.TextStrokeTransparency = 0.5
                        _TextLabel15.TextColor3 = Color3.fromRGB(255, 255, 255)
                        _TextLabel15.Text = u117.Name .. ' \n' .. u101((game:GetService('Players').LocalPlayer.Character.Head.Position - u117.Handle.Position).Magnitude / 3) .. ' Distance'
                    end
                end
            elseif u117.Handle:FindFirstChild('NameEsp' .. Number) then
                u117.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end)
    end
end
function UpdateFlowerChams()
    local v120, v121, v122 = pairs(game.Workspace:GetChildren())

    while true do
        local u123

        v122, u123 = v120(v121, v122)

        if v122 == nil then
            break
        end

        pcall(function()
            if u123.Name == 'Flower2' or u123.Name == 'Flower1' then
                if FlowerESP then
                    if u123:FindFirstChild('NameEsp' .. Number) then
                        u123['NameEsp' .. Number].TextLabel.Text = u123.Name .. '   \n' .. u101((game:GetService('Players').LocalPlayer.Character.Head.Position - u123.Position).Magnitude / 3) .. ' Distance'
                    else
                        local _BillboardGui13 = Instance.new('BillboardGui', u123)

                        _BillboardGui13.Name = 'NameEsp' .. Number
                        _BillboardGui13.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui13.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui13.Adornee = u123
                        _BillboardGui13.AlwaysOnTop = true

                        local _TextLabel16 = Instance.new('TextLabel', _BillboardGui13)

                        _TextLabel16.Font = Enum.Font.GothamSemibold
                        _TextLabel16.FontSize = 'Size14'
                        _TextLabel16.TextWrapped = true
                        _TextLabel16.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel16.TextYAlignment = 'Top'
                        _TextLabel16.BackgroundTransparency = 1
                        _TextLabel16.TextStrokeTransparency = 0.5
                        _TextLabel16.TextColor3 = Color3.fromRGB(255, 0, 0)

                        if u123.Name == 'Flower1' then
                            _TextLabel16.Text = 'Blue Flower' .. ' \n' .. u101((game:GetService('Players').LocalPlayer.Character.Head.Position - u123.Position).Magnitude / 3) .. ' Distance'
                            _TextLabel16.TextColor3 = Color3.fromRGB(0, 0, 255)
                        end
                        if u123.Name == 'Flower2' then
                            _TextLabel16.Text = 'Red Flower' .. ' \n' .. u101((game:GetService('Players').LocalPlayer.Character.Head.Position - u123.Position).Magnitude / 3) .. ' Distance'
                            _TextLabel16.TextColor3 = Color3.fromRGB(255, 0, 0)
                        end
                    end
                elseif u123:FindFirstChild('NameEsp' .. Number) then
                    u123:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateRealFruitChams()
    local v126, v127, v128 = pairs(game.Workspace.AppleSpawner:GetChildren())

    while true do
        local v129

        v128, v129 = v126(v127, v128)

        if v128 == nil then
            break
        end
        if v129:IsA('Tool') then
            if RealFruitESP then
                if v129.Handle:FindFirstChild('NameEsp' .. Number) then
                    v129.Handle['NameEsp' .. Number].TextLabel.Text = v129.Name .. ' ' .. u101((game:GetService('Players').LocalPlayer.Character.Head.Position - v129.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui14 = Instance.new('BillboardGui', v129.Handle)

                    _BillboardGui14.Name = 'NameEsp' .. Number
                    _BillboardGui14.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui14.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui14.Adornee = v129.Handle
                    _BillboardGui14.AlwaysOnTop = true

                    local _TextLabel17 = Instance.new('TextLabel', _BillboardGui14)

                    _TextLabel17.Font = Enum.Font.GothamSemibold
                    _TextLabel17.FontSize = 'Size14'
                    _TextLabel17.TextWrapped = true
                    _TextLabel17.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel17.TextYAlignment = 'Top'
                    _TextLabel17.BackgroundTransparency = 1
                    _TextLabel17.TextStrokeTransparency = 0.5
                    _TextLabel17.TextColor3 = Color3.fromRGB(255, 0, 0)
                    _TextLabel17.Text = v129.Name .. ' \n' .. u101((game:GetService('Players').LocalPlayer.Character.Head.Position - v129.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v129.Handle:FindFirstChild('NameEsp' .. Number) then
                v129.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v132, v133, v134 = pairs(game.Workspace.PineappleSpawner:GetChildren())

    while true do
        local v135

        v134, v135 = v132(v133, v134)

        if v134 == nil then
            break
        end
        if v135:IsA('Tool') then
            if RealFruitESP then
                if v135.Handle:FindFirstChild('NameEsp' .. Number) then
                    v135.Handle['NameEsp' .. Number].TextLabel.Text = v135.Name .. ' ' .. u101((game:GetService('Players').LocalPlayer.Character.Head.Position - v135.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui15 = Instance.new('BillboardGui', v135.Handle)

                    _BillboardGui15.Name = 'NameEsp' .. Number
                    _BillboardGui15.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui15.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui15.Adornee = v135.Handle
                    _BillboardGui15.AlwaysOnTop = true

                    local _TextLabel18 = Instance.new('TextLabel', _BillboardGui15)

                    _TextLabel18.Font = Enum.Font.GothamSemibold
                    _TextLabel18.FontSize = 'Size14'
                    _TextLabel18.TextWrapped = true
                    _TextLabel18.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel18.TextYAlignment = 'Top'
                    _TextLabel18.BackgroundTransparency = 1
                    _TextLabel18.TextStrokeTransparency = 0.5
                    _TextLabel18.TextColor3 = Color3.fromRGB(255, 174, 0)
                    _TextLabel18.Text = v135.Name .. ' \n' .. u101((game:GetService('Players').LocalPlayer.Character.Head.Position - v135.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v135.Handle:FindFirstChild('NameEsp' .. Number) then
                v135.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v138, v139, v140 = pairs(game.Workspace.BananaSpawner:GetChildren())

    while true do
        local v141

        v140, v141 = v138(v139, v140)

        if v140 == nil then
            break
        end
        if v141:IsA('Tool') then
            if RealFruitESP then
                if v141.Handle:FindFirstChild('NameEsp' .. Number) then
                    v141.Handle['NameEsp' .. Number].TextLabel.Text = v141.Name .. ' ' .. u101((game:GetService('Players').LocalPlayer.Character.Head.Position - v141.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui16 = Instance.new('BillboardGui', v141.Handle)

                    _BillboardGui16.Name = 'NameEsp' .. Number
                    _BillboardGui16.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui16.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui16.Adornee = v141.Handle
                    _BillboardGui16.AlwaysOnTop = true

                    local _TextLabel19 = Instance.new('TextLabel', _BillboardGui16)

                    _TextLabel19.Font = Enum.Font.GothamSemibold
                    _TextLabel19.FontSize = 'Size14'
                    _TextLabel19.TextWrapped = true
                    _TextLabel19.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel19.TextYAlignment = 'Top'
                    _TextLabel19.BackgroundTransparency = 1
                    _TextLabel19.TextStrokeTransparency = 0.5
                    _TextLabel19.TextColor3 = Color3.fromRGB(251, 255, 0)
                    _TextLabel19.Text = v141.Name .. ' \n' .. u101((game:GetService('Players').LocalPlayer.Character.Head.Position - v141.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v141.Handle:FindFirstChild('NameEsp' .. Number) then
                v141.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end
end

spawn(function()
    while wait() do
        pcall(function()
            if MobESP then
                local v144, v145, v146 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    local v147

                    v146, v147 = v144(v145, v146)

                    if v146 == nil then
                        break
                    end
                    if v147:FindFirstChild('HumanoidRootPart') then
                        if not v147:FindFirstChild('MobEap') then
                            local _BillboardGui17 = Instance.new('BillboardGui')
                            local _TextLabel20 = Instance.new('TextLabel')

                            _BillboardGui17.Parent = v147
                            _BillboardGui17.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            _BillboardGui17.Active = true
                            _BillboardGui17.Name = 'MobEap'
                            _BillboardGui17.AlwaysOnTop = true
                            _BillboardGui17.LightInfluence = 1
                            _BillboardGui17.Size = UDim2.new(0, 200, 0, 50)
                            _BillboardGui17.StudsOffset = Vector3.new(0, 2.5, 0)
                            _TextLabel20.Parent = _BillboardGui17
                            _TextLabel20.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            _TextLabel20.BackgroundTransparency = 1
                            _TextLabel20.Size = UDim2.new(0, 200, 0, 50)
                            _TextLabel20.Font = Enum.Font.GothamBold
                            _TextLabel20.TextColor3 = Color3.fromRGB(7, 236, 240)
                            _TextLabel20.Text.Size = 35
                        end

                        local v150 = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v147.HumanoidRootPart.Position).Magnitude)

                        v147.MobEap.TextLabel.Text = v147.Name .. '-' .. v150 .. ' Distance'
                    end
                end
            else
                local v151, v152, v153 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    local v154

                    v153, v154 = v151(v152, v153)

                    if v153 == nil then
                        break
                    end
                    if v154:FindFirstChild('MobEap') then
                        v154.MobEap:Destroy()
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if SeaESP then
                local v155, v156, v157 = pairs(game:GetService('Workspace').SeaBeasts:GetChildren())

                while true do
                    local v158

                    v157, v158 = v155(v156, v157)

                    if v157 == nil then
                        break
                    end
                    if v158:FindFirstChild('HumanoidRootPart') then
                        if not v158:FindFirstChild('Seaesps') then
                            local _BillboardGui18 = Instance.new('BillboardGui')
                            local _TextLabel21 = Instance.new('TextLabel')

                            _BillboardGui18.Parent = v158
                            _BillboardGui18.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            _BillboardGui18.Active = true
                            _BillboardGui18.Name = 'Seaesps'
                            _BillboardGui18.AlwaysOnTop = true
                            _BillboardGui18.LightInfluence = 1
                            _BillboardGui18.Size = UDim2.new(0, 200, 0, 50)
                            _BillboardGui18.StudsOffset = Vector3.new(0, 2.5, 0)
                            _TextLabel21.Parent = _BillboardGui18
                            _TextLabel21.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            _TextLabel21.BackgroundTransparency = 1
                            _TextLabel21.Size = UDim2.new(0, 200, 0, 50)
                            _TextLabel21.Font = Enum.Font.GothamBold
                            _TextLabel21.TextColor3 = Color3.fromRGB(7, 236, 240)
                            _TextLabel21.Text.Size = 35
                        end

                        local v161 = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v158.HumanoidRootPart.Position).Magnitude)

                        v158.Seaesps.TextLabel.Text = v158.Name .. '-' .. v161 .. ' Distance'
                    end
                end
            else
                local v162, v163, v164 = pairs(game:GetService('Workspace').SeaBeasts:GetChildren())

                while true do
                    local v165

                    v164, v165 = v162(v163, v164)

                    if v164 == nil then
                        break
                    end
                    if v165:FindFirstChild('Seaesps') then
                        v165.Seaesps:Destroy()
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if NpcESP then
                local v166, v167, v168 = pairs(game:GetService('Workspace').NPCs:GetChildren())

                while true do
                    local v169

                    v168, v169 = v166(v167, v168)

                    if v168 == nil then
                        break
                    end
                    if v169:FindFirstChild('HumanoidRootPart') then
                        if not v169:FindFirstChild('NpcEspes') then
                            local _BillboardGui19 = Instance.new('BillboardGui')
                            local _TextLabel22 = Instance.new('TextLabel')

                            _BillboardGui19.Parent = v169
                            _BillboardGui19.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            _BillboardGui19.Active = true
                            _BillboardGui19.Name = 'NpcEspes'
                            _BillboardGui19.AlwaysOnTop = true
                            _BillboardGui19.LightInfluence = 1
                            _BillboardGui19.Size = UDim2.new(0, 200, 0, 50)
                            _BillboardGui19.StudsOffset = Vector3.new(0, 2.5, 0)
                            _TextLabel22.Parent = _BillboardGui19
                            _TextLabel22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            _TextLabel22.BackgroundTransparency = 1
                            _TextLabel22.Size = UDim2.new(0, 200, 0, 50)
                            _TextLabel22.Font = Enum.Font.GothamBold
                            _TextLabel22.TextColor3 = Color3.fromRGB(7, 236, 240)
                            _TextLabel22.Text.Size = 35
                        end

                        local v172 = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v169.HumanoidRootPart.Position).Magnitude)

                        v169.NpcEspes.TextLabel.Text = v169.Name .. '-' .. v172 .. ' Distance'
                    end
                end
            else
                local v173, v174, v175 = pairs(game:GetService('Workspace').NPCs:GetChildren())

                while true do
                    local v176

                    v175, v176 = v173(v174, v175)

                    if v175 == nil then
                        break
                    end
                    if v176:FindFirstChild('NpcEspes') then
                        v176.NpcEspes:Destroy()
                    end
                end
            end
        end)
    end
end)

function isnil(p177)
    return p177 == nil
end

local function u179(p178)
    return math.floor(tonumber(p178) + 0.5)
end

Number = math.random(1, 1000000)

function UpdateIslandMirageESP()
    local v180, v181, v182 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

    while true do
        local u183

        v182, u183 = v180(v181, v182)

        if v182 == nil then
            break
        end

        pcall(function()
            if MirageIslandESP then
                if u183.Name == 'Mirage Island' then
                    if u183:FindFirstChild('NameEsp') then
                        u183.NameEsp.TextLabel.Text = u183.Name .. '   \n' .. u179((game:GetService('Players').LocalPlayer.Character.Head.Position - u183.Position).Magnitude / 3) .. ' M'
                    else
                        local _BillboardGui20 = Instance.new('BillboardGui', u183)

                        _BillboardGui20.Name = 'NameEsp'
                        _BillboardGui20.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui20.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui20.Adornee = u183
                        _BillboardGui20.AlwaysOnTop = true

                        local _TextLabel23 = Instance.new('TextLabel', _BillboardGui20)

                        _TextLabel23.Font = 'Code'
                        _TextLabel23.FontSize = 'Size14'
                        _TextLabel23.TextWrapped = true
                        _TextLabel23.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel23.TextYAlignment = 'Top'
                        _TextLabel23.BackgroundTransparency = 1
                        _TextLabel23.TextStrokeTransparency = 0.5
                        _TextLabel23.TextColor3 = Color3.fromRGB(80, 245, 245)
                    end
                end
            elseif u183:FindFirstChild('NameEsp') then
                u183:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function UpdateAuraESP()
    local v186, v187, v188 = pairs(game:GetService('Workspace').NPCs:GetChildren())

    while true do
        local u189

        v188, u189 = v186(v187, v188)

        if v188 == nil then
            break
        end

        pcall(function()
            if AuraESP then
                if u189.Name == 'Master of Enhancement' then
                    if u189:FindFirstChild('NameEsp') then
                        u189.NameEsp.TextLabel.Text = u189.Name .. '   \n' .. u179((game:GetService('Players').LocalPlayer.Character.Head.Position - u189.Position).Magnitude / 3) .. ' M'
                    else
                        local _BillboardGui21 = Instance.new('BillboardGui', u189)

                        _BillboardGui21.Name = 'NameEsp'
                        _BillboardGui21.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui21.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui21.Adornee = u189
                        _BillboardGui21.AlwaysOnTop = true

                        local _TextLabel24 = Instance.new('TextLabel', _BillboardGui21)

                        _TextLabel24.Font = 'Code'
                        _TextLabel24.FontSize = 'Size14'
                        _TextLabel24.TextWrapped = true
                        _TextLabel24.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel24.TextYAlignment = 'Top'
                        _TextLabel24.BackgroundTransparency = 1
                        _TextLabel24.TextStrokeTransparency = 0.5
                        _TextLabel24.TextColor3 = Color3.fromRGB(80, 245, 245)
                    end
                end
            elseif u189:FindFirstChild('NameEsp') then
                u189:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function UpdateLSDESP()
    local v192, v193, v194 = pairs(game:GetService('Workspace').NPCs:GetChildren())

    while true do
        local u195

        v194, u195 = v192(v193, v194)

        if v194 == nil then
            break
        end

        pcall(function()
            if LADESP then
                if u195.Name == 'Legendary Sword Dealer' then
                    if u195:FindFirstChild('NameEsp') then
                        u195.NameEsp.TextLabel.Text = u195.Name .. '   \n' .. u179((game:GetService('Players').LocalPlayer.Character.Head.Position - u195.Position).Magnitude / 3) .. ' M'
                    else
                        local _BillboardGui22 = Instance.new('BillboardGui', u195)

                        _BillboardGui22.Name = 'NameEsp'
                        _BillboardGui22.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui22.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui22.Adornee = u195
                        _BillboardGui22.AlwaysOnTop = true

                        local _TextLabel25 = Instance.new('TextLabel', _BillboardGui22)

                        _TextLabel25.Font = 'Code'
                        _TextLabel25.FontSize = 'Size14'
                        _TextLabel25.TextWrapped = true
                        _TextLabel25.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel25.TextYAlignment = 'Top'
                        _TextLabel25.BackgroundTransparency = 1
                        _TextLabel25.TextStrokeTransparency = 0.5
                        _TextLabel25.TextColor3 = Color3.fromRGB(80, 245, 245)
                    end
                end
            elseif u195:FindFirstChild('NameEsp') then
                u195:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function UpdateGeaESP()
    local v198, v199, v200 = pairs(game:GetService('Workspace').Map.MysticIsland:GetChildren())

    while true do
        local u201

        v200, u201 = v198(v199, v200)

        if v200 == nil then
            break
        end

        pcall(function()
            if GearESP then
                if u201.Name == 'MeshPart' then
                    if u201:FindFirstChild('NameEsp') then
                        u201.NameEsp.TextLabel.Text = u201.Name .. '   \n' .. u179((game:GetService('Players').LocalPlayer.Character.Head.Position - u201.Position).Magnitude / 3) .. ' M'
                    else
                        local _BillboardGui23 = Instance.new('BillboardGui', u201)

                        _BillboardGui23.Name = 'NameEsp'
                        _BillboardGui23.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui23.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui23.Adornee = u201
                        _BillboardGui23.AlwaysOnTop = true

                        local _TextLabel26 = Instance.new('TextLabel', _BillboardGui23)

                        _TextLabel26.Font = 'Code'
                        _TextLabel26.FontSize = 'Size14'
                        _TextLabel26.TextWrapped = true
                        _TextLabel26.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel26.TextYAlignment = 'Top'
                        _TextLabel26.BackgroundTransparency = 1
                        _TextLabel26.TextStrokeTransparency = 0.5
                        _TextLabel26.TextColor3 = Color3.fromRGB(80, 245, 245)
                    end
                end
            elseif u201:FindFirstChild('NameEsp') then
                u201:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function Tween2(p204)
    local _Magnitude = (p204.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    local _ = 350 <= _Magnitude
    local v206 = 350
    local v207 = TweenInfo.new(_Magnitude / v206, Enum.EasingStyle.Linear)
    local v208 = game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, v207, {CFrame = p204})

    v208:Play()

    if _G.CancelTween2 then
        v208:Cancel()
    end

    _G.Clip2 = true

    wait(_Magnitude / v206)

    _G.Clip2 = false
end
function BTPZ(p209)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p209

    task.wait()

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p209
end

TweenSpeed = 350

-- Track the currently playing movement tween so we can cancel it on death
local _ActiveTween = nil

function Tween(p210)
    local _char = game.Players.LocalPlayer.Character
    if not _char or not _char:FindFirstChild('HumanoidRootPart') then return end
    local _hum = _char:FindFirstChild('Humanoid')
    if _hum and _hum.Health <= 0 then return end  -- don't tween a dead character

    local _Magnitude2 = (p210.Position - _char.HumanoidRootPart.Position).Magnitude
    local v212 = TweenSpeed

    if _Magnitude2 >= 350 then
        v212 = TweenSpeed
    end

    -- Cancel any previously active tween before starting a new one
    if _ActiveTween then
        pcall(function() _ActiveTween:Cancel() end)
        _ActiveTween = nil
    end

    if _G.StopTween then return end  -- check BEFORE creating, not after

    local v213 = TweenInfo.new(_Magnitude2 / v212, Enum.EasingStyle.Linear)
    local v214 = game:GetService('TweenService'):Create(_char.HumanoidRootPart, v213, {CFrame = p210})
    _ActiveTween = v214
    v214:Play()
    v214.Completed:Connect(function() if _ActiveTween == v214 then _ActiveTween = nil end end)
end

function CancelTween(p215)
    if not p215 then
        _G.StopTween = true
        -- Cancel any in-flight tween immediately
        if _ActiveTween then
            pcall(function() _ActiveTween:Cancel() end)
            _ActiveTween = nil
        end
        wait()
        _G.StopTween = false
    end
end
function EquipTool(p216)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(p216) then
        local v217 = game.Players.LocalPlayer.Backpack:FindFirstChild(p216)

        wait()
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v217)
    end
end

spawn(function()
    local v218 = getrawmetatable(game)
    local ___namecall = v218.__namecall

    setreadonly(v218, false)

    v218.__namecall = newcclosure(function(...)
        local v220 = getnamecallmethod()
        local v221 = {...}

        if tostring(v220) ~= 'FireServer' or (tostring(v221[1]) ~= 'RemoteEvent' or (tostring(v221[2]) == 'true' or (tostring(v221[2]) == 'false' or not _G.UseSkill))) then
            return ___namecall(...)
        end
        if type(v221[2]) ~= 'vector' then
            v221[2] = CFrame.new(PositionSkillMasteryDevilFruit)
        else
            v221[2] = PositionSkillMasteryDevilFruit
        end

        return ___namecall(unpack(v221))
    end)
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoEvoRace or (_G.CastleRaid or (_G.CollectAzure or (_G.TweenToKitsune or (_G.GhostShip or (_G.Ship or (_G.Auto_Holy_Torch or (_G.TeleportPly or (_G.Auto_Sea3 or (_G.Auto_Sea2 or (_G.Tweenfruit or (_G.AutoFishCrew or (_G.Auto_Saber or (_G.AutoShark or (_G.Auto_Warden or (_G.Auto_RainbowHaki or (AutoFarmRace or (_G.AutoQuestRace or (Auto_Law or (AutoTushita or (_G.AutoHolyTorch or (_G.AutoTerrorshark or (_G.farmpiranya or (_G.Auto_MusketeerHat or (_G.Auto_ObservationV2 or (_G.AutoNear or (_G.Auto_PoleV1 or (_G.Auto_Buddy or (_G.Ectoplasm or (AutoEvoRace or (AutoBartilo or (_G.Auto_Canvander or (_G.AutoLevel or (_G.Auto_DualKatana or (Auto_Quest_Yama_3 or (Auto_Quest_Yama_2 or (Auto_Quest_Yama_1 or (Auto_Quest_Tushita_1 or (Auto_Quest_Tushita_2 or (Auto_Quest_Tushita_3 or (_G.Clip2 or (_G.Auto_Regoku or (_G.AutoBone or (_G.AutoBoneNoQuest or (_G.AutoBoss or (AutoFarmMasDevilFruit or (AutoHallowSycthe or (AutoTushita or (_G.CakePrince or (_G.Auto_SkullGuitar or (_G.AutoFarmSwan or (_G.DoughKing or (_G.AutoEliteor or (AutoNextIsland or (Musketeer or (_G.AutoMaterial or (AutoFarmRaceQuest or (_G.Factory or (_G.Auto_Saw or (_G.AutoFrozenDimension or (_G.AutoKillTrial or (_G.AutoUpgrade or _G.TweenToFrozenDimension))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) then
                if not game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip') then
                    local _BodyVelocity = Instance.new('BodyVelocity')

                    _BodyVelocity.Name = 'BodyClip'
                    _BodyVelocity.Parent = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
                    _BodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
                    _BodyVelocity.Velocity = Vector3.new(0, 0, 0)
                end
            else
                game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip'):Destroy()
            end
        end)
    end
end)
spawn(function()
    pcall(function()
        game:GetService('RunService').Stepped:Connect(function()
            if _G.AutoEvoRace or (_G.Auto_RainbowHaki or (_G.Auto_SkullGuitar or (_G.CastleRaid or (_G.CollectAzure or (_G.TweenToKitsune or (_G.Auto_Sea3 or (_G.Auto_Sea2 or (_G.GhostShip or (_G.Ship or (_G.Auto_Holy_Torch or (_G.TeleportPly or (_G.Tweenfruit or (_G.Auto_Saber or (_G.Auto_PoleV1 or (_G.Auto_MusketeerHat or (_G.AutoFishCrew or (_G.AutoShark or (AutoFarmRace or (_G.AutoQuestRace or (_G.Auto_Warden or (Auto_Law or (_G.Auto_DualKatana or (Auto_Quest_Tushita_1 or (Auto_Quest_Tushita_2 or (Auto_Quest_Tushita_3 or (AutoTushita or (_G.AutoHolyTorch or (_G.Auto_Buddy or (_G.AutoTerrorshark or (_G.farmpiranya or (Auto_Quest_Yama_3 or (_G.Auto_ObservationV2 or (Auto_Quest_Yama_2 or (Auto_Quest_Yama_1 or (_G.AutoNear or (_G.Ectoplasm or (AutoEvoRace or (_G.AutoKillTrial or (AutoBartilo or (_G.Auto_Regoku or (_G.AutoLevel or (_G.Clip2 or (_G.AutoBone or (_G.Auto_Canvander or (_G.AutoBoneNoQuest or (_G.AutoBoss or (_G.Auto_Saw or (AutoFarmMasDevilFruit or (AutoHallowSycthe or (AutoTushita or (_G.CakePrince or (_G.DoughKing or (_G.AutoFarmSwan or (_G.AutoEliteor or (AutoNextIsland or (Musketeer or (_G.AutoMaterial or (_G.Factory or (_G.AutoFrozenDimension or (AutoFarmRaceQuest or (_G.AutoUpgrade or _G.TweenToFrozenDimension))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) then
                local v223, v224, v225 = pairs(game:GetService('Players').LocalPlayer.Character:GetDescendants())

                while true do
                    local v226

                    v225, v226 = v223(v224, v225)

                    if v225 == nil then
                        break
                    end
                    if v226:IsA('BasePart') then
                        v226.CanCollide = false
                    end
                end
            end
        end)
    end)
end)
task.spawn(function()
    if game.Players.LocalPlayer.Character:FindFirstChild('Stun') then
        game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
            pcall(function()
                if game.Players.LocalPlayer.Character:FindFirstChild('Stun') then
                    game.Players.LocalPlayer.Character.Stun.Value = 0
                end
            end)
        end)
    end
end)

function CheckMaterial(p227)
    local v228, v229, v230 = pairs(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('getInventory'))

    while true do
        local v231

        v230, v231 = v228(v229, v230)

        if v230 == nil then
            break
        end
        if type(v231) == 'table' and (v231.Type == 'Material' and v231.Name == p227) then
            return v231.Count
        end
    end

    return 0
end
function GetWeaponInventory(p232)
    local v233, v234, v235 = pairs(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('getInventory'))

    while true do
        local v236

        v235, v236 = v233(v234, v235)

        if v235 == nil then
            break
        end
        if type(v236) == 'table' and (v236.Type == 'Sword' and v236.Name == p232) then
            return true
        end
    end

    return false
end

local _LocalPlayer = game.Players.LocalPlayer

function FindEnemiesInRange(p238, p239)
    local _Position = (_LocalPlayer.Character or _LocalPlayer.CharacterAdded:Wait()):GetPivot().Position
    local v241, v242, v243 = ipairs(p239)
    local v244 = nil

    while true do
        local v245

        v243, v245 = v241(v242, v243)

        if v243 == nil then
            break
        end
        if not v245:GetAttribute('IsBoat') and (v245:FindFirstChildOfClass('Humanoid') and v245.Humanoid.Health > 0) then
            local _Head = v245:FindFirstChild('Head')

            if _Head and ((_Position - _Head.Position).Magnitude <= 60 and v245 ~= _LocalPlayer.Character) then
                table.insert(p238, {v245, _Head})

                v244 = _Head
            end
        end
    end

    local v247, v248, v249 = ipairs(game.Players:GetPlayers())

    while true do
        local v250

        v249, v250 = v247(v248, v249)

        if v249 == nil then
            break
        end
        if v250.Character and v250 ~= _LocalPlayer then
            local _Head2 = v250.Character:FindFirstChild('Head')

            if _Head2 and (_Position - _Head2.Position).Magnitude <= 60 then
                table.insert(p238, {
                    v250.Character,
                    _Head2,
                })

                v244 = _Head2
            end
        end
    end

    return v244
end
function GetEquippedTool()
    local _Character = _LocalPlayer.Character

    if not _Character then
        return nil
    end

    local v253, v254, v255 = ipairs(_Character:GetChildren())

    while true do
        local v256

        v255, v256 = v253(v254, v255)

        if v255 == nil then
            break
        end
        if v256:IsA('Tool') then
            return v256
        end
    end

    return nil
end
function AttackNoCoolDown()
    local u257 = {}
    local v258 = game:GetService('Workspace').Enemies:GetChildren()
    local u259 = FindEnemiesInRange(u257, v258)

    if u259 then
        if GetEquippedTool() then
            pcall(function()
                local _ReplicatedStorage = game:GetService('ReplicatedStorage')
                local _RERegisterAttack = _ReplicatedStorage:WaitForChild('Modules'):WaitForChild('Net'):WaitForChild('RE/RegisterAttack')
                local _RERegisterHit = _ReplicatedStorage:WaitForChild('Modules'):WaitForChild('Net'):WaitForChild('RE/RegisterHit')

                if #u257 <= 0 then
                    task.wait(1e-9)
                else
                    _RERegisterAttack:FireServer(1e-9)
                    _RERegisterHit:FireServer(u259, u257)
                end
            end)
        end
    else
        return
    end
end

Type = 1

spawn(function()
    while wait() do
        if Type ~= 1 then
            if Type ~= 2 then
                if Type ~= 3 then
                    if Type ~= 4 then
                        if Type == 5 then
                            Pos = CFrame.new(0, 40, -40)
                        end
                    else
                        Pos = CFrame.new(0, 40, 40)
                    end
                else
                    Pos = CFrame.new(40, 40, 0)
                end
            else
                Pos = CFrame.new(-40, 40, 0)
            end
        else
            Pos = CFrame.new(0, 40, 0)
        end
    end
end)
spawn(function()
    while wait() do
        Type = 1

        wait(0.2)

        Type = 2

        wait(0.2)

        Type = 3

        wait(0.2)

        Type = 4

        wait(0.2)

        Type = 5

        wait(0.2)
    end
end)

function AutoHaki()
    if not game:GetService('Players').LocalPlayer.Character:FindFirstChild('HasBuso') then
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Buso')
    end
end
function to(p263)
    repeat
        wait(_G.Fast_Delay)
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p263

        task.wait()

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p263
    until (p263.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
end
function to(p264)
    pcall(function()
        if (p264.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 and (not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0) then
            if NameMon ~= 'FishmanQuest' then
                if Mon ~= "God's Guard" then
                    if NameMon ~= 'SkyExp1Quest' then
                        if NameMon ~= 'ShipQuest1' then
                            if NameMon ~= 'ShipQuest2' then
                                if NameMon ~= 'FrostQuest' then
                                    repeat
                                        wait(_G.Fast_Delay)

                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p264

                                        wait(0.05)
                                        game.Players.LocalPlayer.Character.Head:Destroy()

                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p264
                                    until (p264.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0

                                    wait()
                                else
                                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                                    wait()
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                                end
                            else
                                Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                                wait()
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                            end
                        else
                            Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                            wait()
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                        end
                    else
                        Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                        wait()
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                    end
                else
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-4607.82275, 872.54248, -1667.55688))
                end
            else
                Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                wait()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        end
    end)
end

if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('Death') then
    game:GetService('ReplicatedStorage').Effect.Container.Death:Destroy()
end
if game:GetService('ReplicatedStorage').Effect.Container:FindFirstChild('Respawn') then
    game:GetService('ReplicatedStorage').Effect.Container.Respawn:Destroy()
end

_G.FastAttackStrix_Mode = 'Super Fast Attack'

spawn(function()
    while wait() do
        if _G.FastAttackStrix_Mode then
            pcall(function()
                if _G.FastAttackStrix_Mode == 'Super Fast Attack' then
                    _G.Fast_Delay = 1e-9
                end
            end)
        end
    end
end)

local _DropdownSelectWeapon = v37.Main:AddDropdown('DropdownSelectWeapon', {
    Title = 'Select',
    Description = '',
    Values = {
        'Melee',
        'Sword',
        'Blox Fruits',
    },
    Multi = false,
    Default = 1,
})

_DropdownSelectWeapon:SetValue('Melee')
_DropdownSelectWeapon:OnChanged(function(p274)
    ChooseWeapon = p274
end)
task.spawn(function()
    while wait() do
        pcall(function()
            if ChooseWeapon ~= 'Melee' then
                if ChooseWeapon ~= 'Sword' then
                    if ChooseWeapon == 'Blox Fruit' then
                        local v275, v276, v277 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v278

                            v277, v278 = v275(v276, v277)

                            if v277 == nil then
                                break
                            end
                            if v278.ToolTip == 'Blox Fruit' and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v278.Name)) then
                                SelectWeapon = v278.Name
                            end
                        end
                    end
                else
                    local v279, v280, v281 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                    while true do
                        local v282

                        v281, v282 = v279(v280, v281)

                        if v281 == nil then
                            break
                        end
                        if v282.ToolTip == 'Sword' and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v282.Name)) then
                            SelectWeapon = v282.Name
                        end
                    end
                end
            else
                local v283, v284, v285 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                while true do
                    local v286

                    v285, v286 = v283(v284, v285)

                    if v285 == nil then
                        break
                    end
                    if v286.ToolTip == 'Melee' and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v286.Name)) then
                        SelectWeapon = v286.Name
                    end
                end
            end
        end)
    end
end)
v37.Main:AddToggle('ToggleLevel', {
    Title = 'Auto Farm Level',
    Description = '',
    Default = false,
}):OnChanged(function(p287)
    _G.AutoLevel = p287

    if p287 == false then
        wait()
        Tween(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
    end
end)
_Options.ToggleLevel:SetValue(false)
spawn(function()
    while task.wait() do
        if _G.AutoLevel then
            pcall(function()
                CheckLevel()

                if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) and game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                    if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        -- Track whether we found and attacked any mob this pass
                        local _foundMob = false
                        local v288, v289, v290 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v291

                            v290, v291 = v288(v289, v290)

                            if v290 == nil then
                                break
                            end
                            if v291:FindFirstChild('Humanoid') and (v291:FindFirstChild('HumanoidRootPart') and (v291.Humanoid.Health > 0 and v291.Name == Ms)) then
                                _foundMob = true

                                -- Fly to a random offset near the mob first so it fetches properly before attacking
                                local _mobPos = v291.HumanoidRootPart.Position
                                local _approachOffset = Vector3.new(math.random(-20, 20), 30, math.random(-20, 20))
                                Tween2(CFrame.new(_mobPos + _approachOffset))
                                task.wait(0.35)

                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()

                                    bringmob = true

                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Tween(v291.HumanoidRootPart.CFrame * Pos)

                                    v291.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v291.HumanoidRootPart.Transparency = 1
                                    v291.Humanoid.JumpPower = 0
                                    v291.Humanoid.WalkSpeed = 0
                                    v291.HumanoidRootPart.CanCollide = false
                                    FarmPos = v291.HumanoidRootPart.CFrame
                                    MonFarm = v291.Name
                                until not _G.AutoLevel or (not v291.Parent or v291.Humanoid.Health <= 0) or (not game:GetService('Workspace').Enemies:FindFirstChild(v291.Name) or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false)

                                bringmob = false
                            end
                        end

                        -- No live mobs found in Enemies - fly to the spawn zone to trigger server spawning
                        if not _foundMob then
                            local _spawnReached = false

                            -- Try EnemySpawns nodes first (precise named spawn markers)
                            -- NOTE: EnemySpawns children are BasePart markers, NOT mobs - use .Position only
                            local v292, v293, v294 = pairs(game:GetService('Workspace')._WorldOrigin.EnemySpawns:GetChildren())

                            while true do
                                local v295

                                v294, v295 = v292(v293, v294)

                                if v294 == nil then
                                    break
                                end
                                if string.find(v295.Name, NameMon) and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v295.Position).Magnitude >= 10 then
                                    Tween2(CFrame.new(v295.Position + Vector3.new(0, 5, 0)))
                                    task.wait(0.8)
                                    _spawnReached = true
                                    break
                                end
                            end

                            -- Fallback: fly to CFrameMon (the hardcoded mob zone for current level)
                            if not _spawnReached and CFrameMon then
                                if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 30 then
                                    Tween2(CFrameMon * CFrame.new(0, 8, 0))
                                end
                                task.wait(1.5)
                            end
                        end
                    end
                else
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                    Tween(CFrameQ)

                    if (CFrameQ.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', NameQuest, QuestLv)
                    end
                end
            end)
        end
    end
end)
v37.Main:AddToggle('ToggleMobAura', {
    Title = 'Auto Farm Nearest',
    Description = '',
    Default = false,
}):OnChanged(function(p296)
    _G.AutoNear = p296

    if p296 == false then
        wait()
        Tween(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
    end
end)
_Options.ToggleMobAura:SetValue(false)
spawn(function()
    while wait() do
        if _G.AutoNear then
            pcall(function()
                local v297, v298, v299 = pairs(game.Workspace.Enemies:GetChildren())

                while true do
                    local v300

                    v299, v300 = v297(v298, v299)

                    if v299 == nil then
                        break
                    end
                    if v300:FindFirstChild('Humanoid') and (v300:FindFirstChild('HumanoidRootPart') and (v300.Humanoid.Health > 0 and (v300.Name and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v300:FindFirstChild('HumanoidRootPart').Position).Magnitude <= 5000))) then
                        -- Fly to a random offset near the mob first so it fetches properly before attacking
                        local _nearMobPos = v300.HumanoidRootPart.Position
                        local _nearApproachOffset = Vector3.new(math.random(-20, 20), 30, math.random(-20, 20))
                        Tween2(CFrame.new(_nearMobPos + _nearApproachOffset))
                        task.wait(0.35)

                        repeat
                            wait(_G.Fast_Delay)
                            AttackNoCoolDown()

                            bringmob = true

                            AutoHaki()
                            EquipTool(SelectWeapon)
                            Tween(v300.HumanoidRootPart.CFrame * Pos)

                            v300.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            v300.HumanoidRootPart.Transparency = 1
                            v300.Humanoid.JumpPower = 0
                            v300.Humanoid.WalkSpeed = 0
                            v300.HumanoidRootPart.CanCollide = false
                            FarmPos = v300.HumanoidRootPart.CFrame
                            MonFarm = v300.Name
                        until not _G.AutoNear or (not v300.Parent or v300.Humanoid.Health <= 0) or not game.Workspace.Enemies:FindFirstChild(v300.Name)

                        bringmob = false
                    end
                end
            end)
        end
    end
end)
v37.Main:AddToggle('ToggleCastleRaid', {
    Title = 'Auto Farm Pirate',
    Description = '',
    Default = false,
}):OnChanged(function(p301)
    _G.CastleRaid = p301
end)
_Options.ToggleCastleRaid:SetValue(false)
spawn(function()
    while wait() do
        if _G.CastleRaid then
            pcall(function()
                local v302 = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058e-9, 0.380223751, 3.588102e-8, 1, -1.06665446e-7, -0.380223751, 1.1229711e-7, 0.924894512)

                if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
                    Tween(v302)
                else
                    local v303, v304, v305 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v306

                        v305, v306 = v303(v304, v305)

                        if v305 == nil then
                            break
                        end
                        if _G.CastleRaid and (v306:FindFirstChild('HumanoidRootPart') and (v306:FindFirstChild('Humanoid') and (v306.Humanoid.Health > 0 and (v306.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000))) then
                            repeat
                                wait(_G.Fast_Delay)
                                AttackNoCoolDown()
                                AutoHaki()
                                EquipTool(SelectWeapon)

                                v306.HumanoidRootPart.CanCollide = false
                                v306.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                Tween(v306.HumanoidRootPart.CFrame * Pos)
                            until v306.Humanoid.Health <= 0 or not (v306.Parent and _G.CastleRaid)
                        end
                    end
                end
            end)
        end
    end
end)
v37.Main:AddToggle('ToggleHakiFortress', {
    Title = 'Activate Color Haki',
    Description = '',
    Default = false,
}):OnChanged(function(p307)
    _G.EnableHakiFortress = p307
end)
_Options.ToggleHakiFortress:SetValue(false)

local function u311(p308, p309)
    local v310 = {
        {
            StorageName = p308,
            Type = 'AuraSkin',
            Context = 'Equip',
        },
    }

    game:GetService('ReplicatedStorage').Modules.Net:FindFirstChild('RF/FruitCustomizerRF'):InvokeServer(unpack(v310))
    Tween2(p309)
end
local function u315(p312, p313)
    local _Character2 = game.Players.LocalPlayer.Character

    if _Character2 and _Character2:FindFirstChild('HumanoidRootPart') then
        return (_Character2.HumanoidRootPart.Position - p312).Magnitude < p313
    else
        return false
    end
end

spawn(function()
    while true do
        if _G.EnableHakiFortress then
            u311('Snow White', Vector3.new(-4971.71826171875, 335.9582214355469, -3720.0595703125))

            while not u315(Vector3.new(-4971.71826171875, 335.9582214355469, -3720.0595703125), 1) do
                wait(0.1)
            end

            wait(0.5)
            u311('Pure Red', Vector3.new(-5414.92041015625, 314.2582092285156, -2212.20166015625))

            while not u315(Vector3.new(-5414.92041015625, 314.2582092285156, -2212.20166015625), 1) do
                wait(0.1)
            end

            wait(0.5)
            u311('Winter Sky', Vector3.new(-5420.26318359375, 1089.3582763671875, -2666.8193359375))

            while not u315(Vector3.new(-5420.26318359375, 1089.3582763671875, -2666.8193359375), 1) do
                wait(0.1)
            end

            wait(0.5)

            _G.EnableHakiFortress = false
        end

        wait(0.5)
    end
end)
v37.Main:AddToggle('ToggleCollectChest', {
    Title = 'Farm Chest',
    Description = '',
    Default = false,
}):OnChanged(function(p316)
    _G.AutoCollectChest = p316
end)
spawn(function()
    while wait() do
        if _G.AutoCollectChest then
            local _LocalPlayer2 = game:GetService('Players').LocalPlayer
            local _Position2 = (_LocalPlayer2.Character or _LocalPlayer2.CharacterAdded:Wait()):GetPivot().Position
            local __ChestTagged = game:GetService('CollectionService'):GetTagged('_ChestTagged')
            local _huge = math.huge
            local v321 = nil

            for v322 = 1, #__ChestTagged do
                local v323 = __ChestTagged[v322]
                local _Magnitude3 = (v323:GetPivot().Position - _Position2).Magnitude

                if not v323:GetAttribute('IsDisabled') then
                    if _Magnitude3 < _huge then
                        v321 = v323
                        _huge = _Magnitude3
                    end
                end
            end

            if v321 then
                local _Position3 = v321:GetPivot().Position
                local v326 = CFrame.new(_Position3)

                Tween2(v326)
            end
        end
    end
end)
v37.Main:AddSection('Select')

local _DropdownMastery = v37.Main:AddDropdown('DropdownMastery', {
    Title = 'Select Near',
    Description = '',
    Values = {
        'Near Mobs',
    },
    Multi = false,
    Default = 1,
})

_DropdownMastery:SetValue(TypeMastery)
_DropdownMastery:OnChanged(function(p328)
    TypeMastery = p328
end)
v37.Main:AddToggle('ToggleMasteryFruit', {
    Title = 'Farm Fruits',
    Description = '',
    Default = false,
}):OnChanged(function(p329)
    AutoFarmMasDevilFruit = p329
end)
_Options.ToggleMasteryFruit:SetValue(false)

local _SliderHealt = v37.Main:AddSlider('SliderHealt', {
    Title = 'Mooster Blood',
    Description = '',
    Default = 20,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Callback = function(p330)
        KillPercent = p330
    end,
})

_SliderHealt:OnChanged(function(p332)
    KillPercent = p332
end)
_SliderHealt:SetValue(20)
spawn(function()
    while task.wait() do
        if _G.UseSkill then
            pcall(function()
                if not _G.UseSkill then
                    return
                end

                local v333, v334, v335 = pairs(game:GetService('Workspace').Enemies:GetChildren())
                local v336

                v335, v336 = v333(v334, v335)

                if v335 == nil then
                end
                if v336.Name ~= MonFarm or (not v336:FindFirstChild('Humanoid') or (not v336:FindFirstChild('HumanoidRootPart') or v336.Humanoid.Health > v336.Humanoid.MaxHealth * KillPercent / 100)) then
                end

                game:GetService('RunService').Heartbeat:wait()
                EquipTool(game.Players.LocalPlayer.Data.DevilFruit.Value)
                Tween(v336.HumanoidRootPart.CFrame * Pos)

                PositionSkillMasteryDevilFruit = v336.HumanoidRootPart.Position

                if game:GetService('Players').LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                    game:GetService('Players').LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = PositionSkillMasteryDevilFruit

                    local _Value2 = game:GetService('Players').LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value

                    if SkillZ and 1 <= _Value2 then
                        game:service('VirtualInputManager'):SendKeyEvent(true, 'Z', false, game)
                        wait()
                        game:service('VirtualInputManager'):SendKeyEvent(false, 'Z', false, game)
                    end
                    if SkillX and 2 <= _Value2 then
                        game:service('VirtualInputManager'):SendKeyEvent(true, 'X', false, game)
                        wait()
                        game:service('VirtualInputManager'):SendKeyEvent(false, 'X', false, game)
                    end
                    if SkillC and 3 <= _Value2 then
                        game:service('VirtualInputManager'):SendKeyEvent(true, 'C', false, game)
                        wait()
                        game:service('VirtualInputManager'):SendKeyEvent(false, 'C', false, game)
                    end
                    if SkillV and 4 <= _Value2 then
                        game:service('VirtualInputManager'):SendKeyEvent(true, 'V', false, game)
                        wait()
                        game:service('VirtualInputManager'):SendKeyEvent(false, 'V', false, game)
                    end
                    if SkillF and 5 <= _Value2 then
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 'F', false, game)
                        wait()
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 'F', false, game)
                    end
                end
                if AutoFarmMasDevilFruit and (_G.UseSkill and v336.Humanoid.Health ~= 0) then
                else
                end
            end)
        end
    end
end)
spawn(function()
    while task.wait(0.1) do
        if AutoFarmMasDevilFruit and TypeMastery == 'Near Mobs' then
            pcall(function()
                local v338, v339, v340 = pairs(game.Workspace.Enemies:GetChildren())

                while true do
                    local v341

                    v340, v341 = v338(v339, v340)

                    if v340 == nil then
                        return
                    end
                    if v341.Name and (v341:FindFirstChild('Humanoid') and (v341:FindFirstChild('HumanoidRootPart') and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v341:FindFirstChild('HumanoidRootPart').Position).Magnitude <= 5000)) then
                        repeat
                            if true then
                                wait(_G.Fast_Delay)

                                if v341.Humanoid.Health > v341.Humanoid.MaxHealth * KillPercent / 100 then
                                    _G.UseSkill = false

                                    AutoHaki()

                                    bringmob = true

                                    EquipTool(SelectWeapon)
                                    Tween(v341.HumanoidRootPart.CFrame * Pos)

                                    v341.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v341.HumanoidRootPart.Transparency = 1
                                    v341.Humanoid.JumpPower = 0
                                    v341.Humanoid.WalkSpeed = 0
                                    v341.HumanoidRootPart.CanCollide = false
                                    FarmPos = v341.HumanoidRootPart.CFrame
                                    MonFarm = v341.Name

                                    AttackNoCoolDown()
                                else
                                    _G.UseSkill = true
                                end
                            end
                        until not AutoFarmMasDevilFruit or (not MasteryType == 'Near Mobs' or (not v341.Parent or v341.Humanoid.Health == 0))

                        bringmob = false
                        _G.UseSkill = false
                    end
                end
            end)
        end
    end
end)

if Sea3 then
    v37.Main:AddSection('Bone')

    local u342 = v37.Main:AddParagraph({
        Title = 'Bone Status',
        Content = '',
    })

    spawn(function()
        pcall(function()
            while wait() do
                local _Bones = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Bones', 'Check')

                u342:SetDesc('You Have : ' .. tostring(_Bones) .. ' Bone')
            end
        end)
    end)
    v37.Main:AddToggle('ToggleBone', {
        Title = 'Farm Bone',
        Description = '',
        Default = false,
    }):OnChanged(function(p344)
        _G.AutoBone = p344

        if p344 == false then
            wait()
            Tween(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
        end
    end)
    _Options.ToggleBone:SetValue(false)

    local u345 = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)

    spawn(function()
        while wait() do
            if _G.AutoBone then
                pcall(function()
                    local _Text = game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text

                    if not string.find(_Text, 'Demonic Soul') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                    end
                    if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                        if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true and (game:GetService('Workspace').Enemies:FindFirstChild('Reborn Skeleton') or (game:GetService('Workspace').Enemies:FindFirstChild('Living Zombie') or (game:GetService('Workspace').Enemies:FindFirstChild('Demonic Soul') or game:GetService('Workspace').Enemies:FindFirstChild('Posessed Mummy')))) then
                            local v347, v348, v349 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v350

                                v349, v350 = v347(v348, v349)

                                if v349 == nil then
                                    break
                                end
                                if v350:FindFirstChild('HumanoidRootPart') and (v350:FindFirstChild('Humanoid') and (v350.Humanoid.Health > 0 and (v350.Name == 'Reborn Skeleton' or (v350.Name == 'Living Zombie' or (v350.Name == 'Demonic Soul' or v350.Name == 'Posessed Mummy'))))) then
                                    if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Demonic Soul') then
                                        repeat
                                            wait(_G.Fast_Delay)
                                            AttackNoCoolDown()
                                            AutoHaki()

                                            bringmob = true

                                            EquipTool(SelectWeapon)
                                            Tween(v350.HumanoidRootPart.CFrame * Pos)

                                            v350.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v350.HumanoidRootPart.Transparency = 1
                                            v350.Humanoid.JumpPower = 0
                                            v350.Humanoid.WalkSpeed = 0
                                            v350.HumanoidRootPart.CanCollide = false
                                            FarmPos = v350.HumanoidRootPart.CFrame
                                            MonFarm = v350.Name
                                        until not _G.AutoBone or (v350.Humanoid.Health <= 0 or not v350.Parent) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')

                                        bringmob = false
                                    end
                                end
                            end
                        end
                    else
                        Tween(u345)

                        if (u345.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', 'HauntedQuest2', 1)
                        end
                    end
                end)
            end
        end
    end)

    local u351 = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)

    spawn(function()
        while wait() do
            if _G.AutoBoneNoQuest then
                pcall(function()
                    Tween(u351)

                    local _ = (u351.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3

                    if game:GetService('Workspace').Enemies:FindFirstChild('Reborn Skeleton') or (game:GetService('Workspace').Enemies:FindFirstChild('Living Zombie') or (game:GetService('Workspace').Enemies:FindFirstChild('Demonic Soul') or game:GetService('Workspace').Enemies:FindFirstChild('Posessed Mummy'))) then
                        local v352, v353, v354 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v355

                            v354, v355 = v352(v353, v354)

                            if v354 == nil then
                                break
                            end
                            if v355:FindFirstChild('HumanoidRootPart') and (v355:FindFirstChild('Humanoid') and (v355.Humanoid.Health > 0 and (v355.Name == 'Reborn Skeleton' or (v355.Name == 'Living Zombie' or (v355.Name == 'Demonic Soul' or v355.Name == 'Posessed Mummy'))))) then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()

                                    bringmob = true

                                    EquipTool(SelectWeapon)
                                    Tween(v355.HumanoidRootPart.CFrame * Pos)

                                    v355.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v355.HumanoidRootPart.Transparency = 1
                                    v355.Humanoid.JumpPower = 0
                                    v355.Humanoid.WalkSpeed = 0
                                    v355.HumanoidRootPart.CanCollide = false
                                    FarmPos = v355.HumanoidRootPart.CFrame
                                    MonFarm = v355.Name
                                until not _G.AutoBoneNoQuest or (v355.Humanoid.Health <= 0 or not v355.Parent)
                            end
                        end
                    end
                end)
            end
        end
    end)
    v37.Main:AddButton({
        Title = 'Pray',
        Description = '',
        Callback = function()
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'gravestoneEvent',
                1,
            }))
        end,
    })
    v37.Main:AddButton({
        Title = 'Try Your Luck',
        Description = '',
        Callback = function()
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'gravestoneEvent',
                2,
            }))
        end,
    })
    v37.Main:AddToggle('ToggleRandomBone', {
        Title = 'Random Bone',
        Description = '',
        Default = false,
    }):OnChanged(function(p356)
        _G.AutoRandomBone = p356
    end)
    _Options.ToggleRandomBone:SetValue(false)
    spawn(function()
        while wait() do
            if _G.AutoRandomBone then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'Bones',
                    'Buy',
                    1,
                    1,
                }))
            end
        end
    end)
end
if Sea3 then
    v37.Main:AddSection('Cake')

    local u357 = v37.Main:AddParagraph({
        Title = 'Status Cake',
        Content = '',
    })

    spawn(function()
        while wait() do
            pcall(function()
                if string.len(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner')) ~= 88 then
                    if string.len(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner')) ~= 87 then
                        if string.len(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner')) ~= 86 then
                            u357:SetDesc('Cake : ✅️')
                        else
                            u357:SetDesc('Have : ' .. string.sub(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner'), 39, 39) .. ' ')
                        end
                    else
                        u357:SetDesc('Have : ' .. string.sub(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner'), 39, 40) .. '')
                    end
                else
                    u357:SetDesc('Have : ' .. string.sub(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner'), 39, 41) .. '')
                end
            end)
        end
    end)

    local _ToggleCake = v37.Main:AddToggle('ToggleCake', {
        Title = 'Farm Cake',
        Description = '',
        Default = false,
    })
    local u359 = true

    _ToggleCake:OnChanged(function(p360)
        _G.CakePrince = p360

        if p360 then
            if u359 then
                u359 = false

                local v361 = CFrame.new(-2003.932861328125, 380.4824523925781, -12561.0185546875)

                Tween(v361)
            end
        else
            u359 = true

            wait()
            Tween(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
        end
    end)
    _Options.ToggleCake:SetValue(false)
    spawn(function()
        while wait() do
            if _G.CakePrince then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince') then
                        local v362, v363, v364 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v365

                            v364, v365 = v362(v363, v364)

                            if v364 == nil then
                                break
                            end
                            if v365.Name == 'Cake Prince' and (v365:FindFirstChild('Humanoid') and (v365:FindFirstChild('HumanoidRootPart') and v365.Humanoid.Health > 0)) then
                                repeat
                                    task.wait(_G.Fast_Delay)
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    v365.HumanoidRootPart.CanCollide = false
                                    v365.Humanoid.WalkSpeed = 0
                                    v365.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                    Tween(v365.HumanoidRootPart.CFrame * Pos)
                                    AttackNoCoolDown()
                                until not _G.CakePrince or (not v365.Parent or v365.Humanoid.Health <= 0)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince [Lv. 2300] [Raid Boss]') then
                        Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince [Lv. 2300] [Raid Boss]').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    elseif game:GetService('Workspace').Map.CakeLoaf.BigMirror.Other.Transparency == 1 and (game:GetService('Workspace').Enemies:FindFirstChild('Cookie Crafter') or (game:GetService('Workspace').Enemies:FindFirstChild('Cake Guard') or (game:GetService('Workspace').Enemies:FindFirstChild('Baking Staff') or game:GetService('Workspace').Enemies:FindFirstChild('Head Baker')))) then
                        local v366, v367, v368 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v369

                            v368, v369 = v366(v367, v368)

                            if v368 == nil then
                                break
                            end
                            if (v369.Name == 'Cookie Crafter' or (v369.Name == 'Cake Guard' or (v369.Name == 'Baking Staff' or v369.Name == 'Head Baker'))) and (v369:FindFirstChild('Humanoid') and (v369:FindFirstChild('HumanoidRootPart') and v369.Humanoid.Health > 0)) then
                                repeat
                                    task.wait(_G.Fast_Delay)
                                    AutoHaki()

                                    bringmob = true

                                    EquipTool(SelectWeapon)

                                    v369.HumanoidRootPart.CanCollide = false
                                    v369.Humanoid.WalkSpeed = 0
                                    v369.Head.CanCollide = false
                                    v369.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    FarmPos = v369.HumanoidRootPart.CFrame
                                    MonFarm = v369.Name

                                    Tween(v369.HumanoidRootPart.CFrame * Pos)
                                    AttackNoCoolDown()
                                until not _G.CakePrince or (not v369.Parent or v369.Humanoid.Health <= 0) or (game:GetService('Workspace').Map.CakeLoaf.BigMirror.Other.Transparency == 0 or (game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince [Lv. 2300] [Raid Boss]') or game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince [Lv. 2300] [Raid Boss]')))

                                bringmob = false
                            end
                        end
                    end
                end)
            end
        end
    end)
    v37.Main:AddToggle('ToggleDoughKing', {
        Title = 'Kill Powder King',
        Description = '',
        Default = false,
    }):OnChanged(function(p370)
        _G.DoughKing = p370

        if p370 == false then
            wait()
            Tween(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
        end
    end)
    _Options.ToggleDoughKing:SetValue(false)
    spawn(function()
        while wait() do
            if _G.DoughKing then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Dough King') then
                        local v371, v372, v373 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v374

                            v373, v374 = v371(v372, v373)

                            if v373 == nil then
                                break
                            end
                            if v374.Name == 'Dough King' and (v374:FindFirstChild('Humanoid') and (v374:FindFirstChild('HumanoidRootPart') and v374.Humanoid.Health > 0)) then
                                repeat
                                    task.wait(_G.Fast_Delay)
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    v374.HumanoidRootPart.CanCollide = false
                                    v374.Humanoid.WalkSpeed = 0
                                    v374.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                    Tween(v374.HumanoidRootPart.CFrame * Pos)
                                    AttackNoCoolDown()
                                until not _G.DoughKing or (not v374.Parent or v374.Humanoid.Health <= 0)
                            end
                        end
                    end
                end)
            end
        end
    end)
    v37.Main:AddToggle('ToggleSpawnCake', {
        Title = 'Summon Bread Commander',
        Description = '',
        Default = true,
    }):OnChanged(function(p375)
        _G.SpawnCakePrince = p375
    end)
    _Options.ToggleSpawnCake:SetValue(true)
end

spawn(function()
    while wait() do
        if _G.SpawnCakePrince then
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'CakePrinceSpawner',
                true,
            }))
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'CakePrinceSpawner',
            }))
        end
    end
end)

if Sea2 then
    v37.Main:AddSection('Ectoplasm Farm')
    v37.Main:AddToggle('ToggleVatChatKiDi', {
        Title = 'Auto Farm Ectoplasm',
        Description = '',
        Default = false,
    }):OnChanged(function(p376)
        _G.Ectoplasm = p376
    end)
    _Options.ToggleVatChatKiDi:SetValue(false)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Ectoplasm then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Ship Deckhand') or (game:GetService('Workspace').Enemies:FindFirstChild('Ship Engineer') or (game:GetService('Workspace').Enemies:FindFirstChild('Ship Steward') or game:GetService('Workspace').Enemies:FindFirstChild('Ship Officer'))) then
                        local v377, v378, v379 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v380

                            v379, v380 = v377(v378, v379)

                            if v379 == nil then
                                break
                            end
                            if (v380.Name == 'Ship Steward' or (v380.Name == 'Ship Engineer' or (v380.Name == 'Ship Deckhand' or v380.Name == 'Ship Officer' and v380:FindFirstChild('Humanoid')))) and v380.Humanoid.Health > 0 then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()

                                    bringmob = true

                                    EquipTool(SelectWeapon)
                                    Tween(v380.HumanoidRootPart.CFrame * Pos)

                                    v380.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v380.HumanoidRootPart.Transparency = 1
                                    v380.Humanoid.JumpPower = 0
                                    v380.Humanoid.WalkSpeed = 0
                                    v380.HumanoidRootPart.CanCollide = false
                                    FarmPos = v380.HumanoidRootPart.CFrame
                                    MonFarm = v380.Name
                                until _G.Ectoplasm == false or (not v380.Parent or v380.Humanoid.Health == 0) or not game:GetService('Workspace').Enemies:FindFirstChild(v380.Name)

                                bringmob = false
                            end
                        end
                    else
                        if (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                        end

                        Tween(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
                    end
                end
            end)
        end
    end)
end

v37.Main:AddSection('Boss')

if Sea1 then
    tableBoss = {
        'The Gorilla King',
        'Bobby',
        'Yeti',
        'Mob Leader',
        'Vice Admiral',
        'Warden',
        'Chief Warden',
        'Swan',
        'Magma Admiral',
        'Fishman Lord',
        'Wysper',
        'Thunder God',
        'Cyborg',
        'Saber Expert',
    }
elseif Sea2 then
    tableBoss = {
        'Diamond',
        'Jeremy',
        'Fajita',
        'Don Swan',
        'Smoke Admiral',
        'Cursed Captain',
        'Darkbeard',
        'Order',
        'Awakened Ice Admiral',
        'Tide Keeper',
    }
elseif Sea3 then
    tableBoss = {
        'Stone',
        'Hydra Leader',
        'Kilo Admiral',
        'Captain Elephant',
        'Beautiful Pirate',
        'rip_indra True Form',
        'Longma',
        'Soul Reaper',
        'Cake Queen',
    }
end

local _DropdownBoss = v37.Main:AddDropdown('DropdownBoss', {
    Title = 'Select Boss',
    Description = '',
    Values = tableBoss,
    Multi = false,
    Default = 1,
})

_DropdownBoss:SetValue(_G.SelectBoss)
_DropdownBoss:OnChanged(function(p382)
    _G.SelectBoss = p382
end)
v37.Main:AddToggle('ToggleAutoFarmBoss', {
    Title = 'Kill Boss',
    Description = '',
    Default = false,
}):OnChanged(function(p383)
    _G.AutoBoss = p383
end)
_Options.ToggleAutoFarmBoss:SetValue(false)
spawn(function()
    while wait() do
        if _G.AutoBoss then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild(_G.SelectBoss) then
                    local v384, v385, v386 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v387

                        v386, v387 = v384(v385, v386)

                        if v386 == nil then
                            break
                        end
                        if v387.Name == _G.SelectBoss and (v387:FindFirstChild('Humanoid') and (v387:FindFirstChild('HumanoidRootPart') and v387.Humanoid.Health > 0)) then
                            repeat
                                wait(_G.Fast_Delay)
                                AttackNoCoolDown()
                                AutoHaki()
                                EquipTool(SelectWeapon)

                                v387.HumanoidRootPart.CanCollide = false
                                v387.Humanoid.WalkSpeed = 0
                                v387.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                Tween(v387.HumanoidRootPart.CFrame * Pos)
                                sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                            until not _G.AutoBoss or (not v387.Parent or v387.Humanoid.Health <= 0)
                        end
                    end
                elseif game:GetService('ReplicatedStorage'):FindFirstChild(_G.SelectBoss) then
                    Tween(game:GetService('ReplicatedStorage'):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5, 10, 7))
                end
            end)
        end
    end
end)
v37.Main:AddSection('Material')

if Sea1 then
    MaterialList = {
        'Scrap Metal',
        'Leather',
        'Angel Wings',
        'Magma Ore',
        'Fish Tail',
    }
elseif Sea2 then
    MaterialList = {
        'Scrap Metal',
        'Leather',
        'Radioactive Material',
        'Mystic Droplet',
        'Magma Ore',
        'Vampire Fang',
    }
elseif Sea3 then
    MaterialList = {
        'Scrap Metal',
        'Leather',
        'Demonic Wisp',
        'Conjured Cocoa',
        'Dragon Scale',
        'Gunpowder',
        'Fish Tail',
        'Mini Tusk',
        'Hydra Enforcer',
        'Venomous Assailant',
    }
end

local _DropdownMaterial = v37.Main:AddDropdown('DropdownMaterial', {
    Title = 'Material List',
    Description = '',
    Values = MaterialList,
    Multi = false,
    Default = 1,
})

_DropdownMaterial:SetValue(SelectMaterial)
_DropdownMaterial:OnChanged(function(p389)
    SelectMaterial = p389
end)
v37.Main:AddToggle('ToggleMaterial', {
    Title = 'Auto Farm Material',
    Description = '',
    Default = false,
}):OnChanged(function(p390)
    _G.AutoMaterial = p390

    if p390 == false then
        wait()
        Tween(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
    end
end)
_Options.ToggleMaterial:SetValue(false)
spawn(function()
    while task.wait() do
        if _G.AutoMaterial then
            pcall(function()
                MaterialMon(SelectMaterial)
                Tween(MPos)

                if game:GetService('Workspace').Enemies:FindFirstChild(MMon) then
                    local v391, v392, v393 = pairs(game.Workspace.Enemies:GetChildren())

                    while true do
                        local v394

                        v393, v394 = v391(v392, v393)

                        if v393 == nil then
                            break
                        end
                        if v394:FindFirstChild('Humanoid') and (v394:FindFirstChild('HumanoidRootPart') and (v394.Humanoid.Health > 0 and v394.Name == MMon)) then
                            repeat
                                wait(_G.Fast_Delay)
                                AttackNoCoolDown()
                                AutoHaki()

                                bringmob = true

                                EquipTool(SelectWeapon)
                                Tween(v394.HumanoidRootPart.CFrame * Pos)

                                v394.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v394.HumanoidRootPart.Transparency = 1
                                v394.Humanoid.JumpPower = 0
                                v394.Humanoid.WalkSpeed = 0
                                v394.HumanoidRootPart.CanCollide = false
                                FarmPos = v394.HumanoidRootPart.CFrame
                                MonFarm = v394.Name
                            until not _G.AutoMaterial or (not v394.Parent or v394.Humanoid.Health <= 0)

                            bringmob = false
                        end
                    end
                else
                    local v395, v396, v397 = pairs(game:GetService('Workspace')._WorldOrigin.EnemySpawns:GetChildren())

                    while true do
                        local v398

                        v397, v398 = v395(v396, v397)

                        if v397 == nil then
                            break
                        end
                        if string.find(v398.Name, Mon) and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v398.Position).Magnitude >= 10 then
                            Tween(v398.HumanoidRootPart.CFrame * Pos)
                        end
                    end
                end
            end)
        end
    end
end)

if Sea3 then
    v37.Sea:AddSection('Fox Island')

    local u399 = v37.Sea:AddParagraph({
        Title = 'Fox Island Status',
        Content = '',
    })

    function UpdateKitsune()
        if game:GetService('Workspace').Map:FindFirstChild('KitsuneIsland') then
            u399:SetDesc('Fox Island : ✅️')
        else
            u399:SetDesc('Fox Island : ❌️')
        end
    end

    spawn(function()
        pcall(function()
            while wait() do
                UpdateKitsune()
            end
        end)
    end)
    v37.Sea:AddToggle('ToggleEspKitsune', {
        Title = 'Locate Fox Island',
        Description = '',
        Default = false,
    }):OnChanged(function(p400)
        KitsuneIslandEsp = p400

        while KitsuneIslandEsp do
            wait()
            UpdateIslandKisuneESP()
        end
    end)
    _Options.ToggleEspKitsune:SetValue(false)

    function UpdateIslandKisuneESP()
        local v401, v402, v403 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

        while true do
            local u404

            v403, u404 = v401(v402, v403)

            if v403 == nil then
                break
            end

            pcall(function()
                if KitsuneIslandEsp then
                    if u404.Name == 'Kitsune Island' then
                        if u404:FindFirstChild('NameEsp') then
                            u404.NameEsp.TextLabel.Text = u404.Name .. '   \n' .. u179((game:GetService('Players').LocalPlayer.Character.Head.Position - u404.Position).Magnitude / 3) .. ' M'
                        else
                            local _BillboardGui24 = Instance.new('BillboardGui', u404)

                            _BillboardGui24.Name = 'NameEsp'
                            _BillboardGui24.ExtentsOffset = Vector3.new(0, 1, 0)
                            _BillboardGui24.Size = UDim2.new(1, 200, 1, 30)
                            _BillboardGui24.Adornee = u404
                            _BillboardGui24.AlwaysOnTop = true

                            local _TextLabel27 = Instance.new('TextLabel', _BillboardGui24)

                            _TextLabel27.Font = 'Code'
                            _TextLabel27.FontSize = 'Size14'
                            _TextLabel27.TextWrapped = true
                            _TextLabel27.Size = UDim2.new(1, 0, 1, 0)
                            _TextLabel27.TextYAlignment = 'Top'
                            _TextLabel27.BackgroundTransparency = 1
                            _TextLabel27.TextStrokeTransparency = 0.5
                            _TextLabel27.TextColor3 = Color3.fromRGB(80, 245, 245)
                        end
                    end
                elseif u404:FindFirstChild('NameEsp') then
                    u404:FindFirstChild('NameEsp'):Destroy()
                end
            end)
        end
    end

    v37.Sea:AddToggle('ToggleTPKitsune', {
        Title = 'Fly Into Fox Island',
        Description = '',
        Default = false,
    }):OnChanged(function(p407)
        _G.TweenToKitsune = p407
    end)
    _Options.ToggleTPKitsune:SetValue(false)
    spawn(function()
        local v408 = nil

        while not v408 do
            v408 = game:GetService('Workspace').Map:FindFirstChild('KitsuneIsland')

            wait()
        end
        while wait() do
            if _G.TweenToKitsune then
                local _ShrineActive = v408:FindFirstChild('ShrineActive')

                if _ShrineActive then
                    local v410, v411, v412 = pairs(_ShrineActive:GetDescendants())

                    while true do
                        local v413

                        v412, v413 = v410(v411, v412)

                        if v412 == nil then
                            break
                        end
                        if v413:IsA('BasePart') and v413.Name:find('NeonShrinePart') then
                            Tween(v413.CFrame)
                        end
                    end
                end
            end
        end
    end)
    v37.Sea:AddToggle('ToggleCollectAzure', {
        Title = 'Collect Azure Spirits',
        Description = '',
        Default = false,
    }):OnChanged(function(p414)
        _G.CollectAzure = p414
    end)
    _Options.ToggleCollectAzure:SetValue(false)
    spawn(function()
        while wait() do
            if _G.CollectAzure then
                pcall(function()
                    if game:GetService('Workspace'):FindFirstChild('AttachedAzureEmber') then
                        Tween(game:GetService('Workspace'):WaitForChild('EmberTemplate'):FindFirstChild('Part').CFrame)
                    end
                end)
            end
        end
    end)
end

v37.Sea:AddButton({
    Title = 'Exchange Azure Spirits',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage'):WaitForChild('Modules'):WaitForChild('Net'):WaitForChild('RF/KitsuneStatuePray'):InvokeServer()
    end,
})

if Sea3 then
    v37.Sea:AddSection('Sea')

    local _Players = game:GetService('Players')
    local _RunService = game:GetService('RunService')
    local _VirtualInputManager = game:GetService('VirtualInputManager')
    local _Workspace = game:GetService('Workspace')
    local u419 = 350

    v37.Sea:AddSlider('SliderSpeedBoat', {
        Title = 'Boat Speed',
        Description = '',
        Default = u419,
        Min = 0,
        Max = 350,
        Rounding = 1,
        Callback = function(p420)
            u419 = p420
        end,
    }):SetValue(u419)

    local _AutoFindPrehistoric = v37.Sea:AddToggle('AutoFindPrehistoric', {
        Title = 'Find Volcanic Island',
        Description = '',
        Default = false,
    })

    _Options.AutoFindPrehistoric:SetValue(false)
    _AutoFindPrehistoric:OnChanged(function(p422)
        _G.AutoFindPrehistoric = p422
    end)

    local u423 = {}
    local u424 = false
    local u425 = false

    _RunService.RenderStepped:Connect(function()
        if _G.AutoFindPrehistoric then
            local _Character3 = _Players.LocalPlayer.Character

            if _Character3 and _Character3:FindFirstChild('Humanoid') then
                local function v431()
                    if u424 then
                        return
                    end

                    u424 = true

                    local v427, v428, v429 = pairs(u423)

                    while true do
                        local v430

                        v429, v430 = v427(v428, v429)

                        if v429 == nil then
                            break
                        end
                        if v430 and (v430.Parent and (v430.Name == 'VehicleSeat' and not v430.Occupant)) then
                            Tween2(v430.CFrame)

                            break
                        end
                    end

                    u424 = false
                end

                local _Humanoid = _Character3.Humanoid
                local v433, v434, v435 = pairs(_Workspace.Boats:GetChildren())
                local v436 = false
                local v437 = nil

                while true do
                    local v438

                    v435, v438 = v433(v434, v435)

                    if v435 == nil then
                        break
                    end

                    local _VehicleSeat = v438:FindFirstChild('VehicleSeat')

                    if _VehicleSeat and _VehicleSeat.Occupant == _Humanoid then
                        u423[v438.Name] = _VehicleSeat
                        v437 = _VehicleSeat
                        v436 = true
                    elseif _VehicleSeat and _VehicleSeat.Occupant == nil then
                        v431()
                    end
                end

                if v436 then
                    v437.MaxSpeed = u419
                    v437.CFrame = CFrame.new(Vector3.new(v437.Position.X, v437.Position.Y, v437.Position.Z)) * v437.CFrame.Rotation

                    _VirtualInputManager:SendKeyEvent(true, 'W', false, game)

                    local v440, v441, v442 = pairs(_Workspace.Boats:GetDescendants())

                    while true do
                        local v443

                        v442, v443 = v440(v441, v442)

                        if v442 == nil then
                            break
                        end
                        if v443:IsA('BasePart') then
                            v443.CanCollide = false
                        end
                    end

                    local v444, v445, v446 = pairs(_Character3:GetDescendants())

                    while true do
                        local v447

                        v446, v447 = v444(v445, v446)

                        if v446 == nil then
                            break
                        end
                        if v447:IsA('BasePart') then
                            v447.CanCollide = false
                        end
                    end

                    local v448, v449, v450 = ipairs({
                        'ShipwreckIsland',
                        'SandIsland',
                        'TreeIsland',
                        'TinyIsland',
                        'MysticIsland',
                        'KitsuneIsland',
                        'FrozenDimension',
                    })

                    while true do
                        local v451

                        v450, v451 = v448(v449, v450)

                        if v450 == nil then
                            break
                        end

                        local v452 = _Workspace.Map:FindFirstChild(v451)

                        if v452 and v452:IsA('Model') then
                            v452:Destroy()
                        end
                    end

                    if _Workspace.Map:FindFirstChild('PrehistoricIsland') then
                        _VirtualInputManager:SendKeyEvent(false, 'W', false, game)

                        _G.AutoFindPrehistoric = false

                        if not u425 then
                            u33:Notify({
                                Title = 'barbecue blox kid hub',
                                Content = 'Volcanic Island Found',
                                Duration = 10,
                            })

                            u425 = true
                        end
                    end
                else
                    return
                end
            else
                return
            end
        else
            u425 = false

            return
        end
    end)

    local _AutoFindMirage = v37.Sea:AddToggle('AutoFindMirage', {
        Title = 'Find Mystery Island',
        Description = '',
        Default = false,
    })

    _Options.AutoFindMirage:SetValue(false)
    _AutoFindMirage:OnChanged(function(p454)
        _G.AutoFindMirage = p454
    end)

    local u455 = {}
    local u456 = false
    local u457 = false

    _RunService.RenderStepped:Connect(function()
        if _G.AutoFindMirage then
            local _Character4 = _Players.LocalPlayer.Character

            if _Character4 and _Character4:FindFirstChild('Humanoid') then
                local function v463()
                    if u456 then
                        return
                    end

                    u456 = true

                    local v459, v460, v461 = pairs(u455)

                    while true do
                        local v462

                        v461, v462 = v459(v460, v461)

                        if v461 == nil then
                            break
                        end
                        if v462 and (v462.Parent and (v462.Name == 'VehicleSeat' and not v462.Occupant)) then
                            Tween2(v462.CFrame)

                            break
                        end
                    end

                    u456 = false
                end

                local _Humanoid2 = _Character4.Humanoid
                local v465, v466, v467 = pairs(_Workspace.Boats:GetChildren())
                local v468 = false
                local v469 = nil

                while true do
                    local v470

                    v467, v470 = v465(v466, v467)

                    if v467 == nil then
                        break
                    end

                    local _VehicleSeat2 = v470:FindFirstChild('VehicleSeat')

                    if _VehicleSeat2 and _VehicleSeat2.Occupant == _Humanoid2 then
                        u455[v470.Name] = _VehicleSeat2
                        v469 = _VehicleSeat2
                        v468 = true
                    elseif _VehicleSeat2 and _VehicleSeat2.Occupant == nil then
                        v463()
                    end
                end

                if v468 then
                    v469.MaxSpeed = u419
                    v469.CFrame = CFrame.new(Vector3.new(v469.Position.X, v469.Position.Y, v469.Position.Z)) * v469.CFrame.Rotation

                    _VirtualInputManager:SendKeyEvent(true, 'W', false, game)

                    local v472, v473, v474 = pairs(_Workspace.Boats:GetDescendants())

                    while true do
                        local v475

                        v474, v475 = v472(v473, v474)

                        if v474 == nil then
                            break
                        end
                        if v475:IsA('BasePart') then
                            v475.CanCollide = false
                        end
                    end

                    local v476, v477, v478 = pairs(_Character4:GetDescendants())

                    while true do
                        local v479

                        v478, v479 = v476(v477, v478)

                        if v478 == nil then
                            break
                        end
                        if v479:IsA('BasePart') then
                            v479.CanCollide = false
                        end
                    end

                    local v480, v481, v482 = ipairs({
                        'ShipwreckIsland',
                        'SandIsland',
                        'TreeIsland',
                        'TinyIsland',
                        'PrehistoricIsland',
                        'KitsuneIsland',
                        'FrozenDimension',
                    })

                    while true do
                        local v483

                        v482, v483 = v480(v481, v482)

                        if v482 == nil then
                            break
                        end

                        local v484 = _Workspace.Map:FindFirstChild(v483)

                        if v484 and v484:IsA('Model') then
                            v484:Destroy()
                        end
                    end

                    if _Workspace.Map:FindFirstChild('MysticIsland') then
                        _VirtualInputManager:SendKeyEvent(false, 'W', false, game)

                        _G.AutoFindMirage = false

                        if not u457 then
                            u33:Notify({
                                Title = 'Min Gaming',
                                Content = 'Mystery Island Found',
                                Duration = 10,
                            })

                            u457 = true
                        end
                    end
                else
                    return
                end
            else
                return
            end
        else
            u457 = false

            return
        end
    end)

    local _AutoFindFrozen = v37.Sea:AddToggle('AutoFindFrozen', {
        Title = 'Find Leviathan Island',
        Description = 'Need 5 Players Idk',
        Default = false,
    })

    _Options.AutoFindFrozen:SetValue(false)
    _AutoFindFrozen:OnChanged(function(p486)
        _G.AutoFindFrozen = p486
    end)

    local u487 = {}
    local u488 = false
    local u489 = false

    _RunService.RenderStepped:Connect(function()
        if _G.AutoFindFrozen then
            local _Character5 = _Players.LocalPlayer.Character

            if _Character5 and _Character5:FindFirstChild('Humanoid') then
                local function v495()
                    if u488 then
                        return
                    end

                    u488 = true

                    local v491, v492, v493 = pairs(u487)

                    while true do
                        local v494

                        v493, v494 = v491(v492, v493)

                        if v493 == nil then
                            break
                        end
                        if v494 and (v494.Parent and (v494.Name == 'VehicleSeat' and not v494.Occupant)) then
                            Tween2(v494.CFrame)

                            break
                        end
                    end

                    u488 = false
                end

                local _Humanoid3 = _Character5.Humanoid
                local v497, v498, v499 = pairs(_Workspace.Boats:GetChildren())
                local v500 = false
                local v501 = nil

                while true do
                    local v502

                    v499, v502 = v497(v498, v499)

                    if v499 == nil then
                        break
                    end

                    local _VehicleSeat3 = v502:FindFirstChild('VehicleSeat')

                    if _VehicleSeat3 and _VehicleSeat3.Occupant == _Humanoid3 then
                        u487[v502.Name] = _VehicleSeat3
                        v501 = _VehicleSeat3
                        v500 = true
                    elseif _VehicleSeat3 and _VehicleSeat3.Occupant == nil then
                        v495()
                    end
                end

                if v500 then
                    v501.MaxSpeed = u419
                    v501.CFrame = CFrame.new(Vector3.new(v501.Position.X, v501.Position.Y, v501.Position.Z)) * v501.CFrame.Rotation

                    _VirtualInputManager:SendKeyEvent(true, 'W', false, game)

                    local v504, v505, v506 = pairs(_Workspace.Boats:GetDescendants())

                    while true do
                        local v507

                        v506, v507 = v504(v505, v506)

                        if v506 == nil then
                            break
                        end
                        if v507:IsA('BasePart') then
                            v507.CanCollide = false
                        end
                    end

                    local v508, v509, v510 = pairs(_Character5:GetDescendants())

                    while true do
                        local v511

                        v510, v511 = v508(v509, v510)

                        if v510 == nil then
                            break
                        end
                        if v511:IsA('BasePart') then
                            v511.CanCollide = false
                        end
                    end

                    local v512, v513, v514 = ipairs({
                        'ShipwreckIsland',
                        'SandIsland',
                        'TreeIsland',
                        'TinyIsland',
                        'MysticIsland',
                        'KitsuneIsland',
                        'PrehistoricIsland',
                    })

                    while true do
                        local v515

                        v514, v515 = v512(v513, v514)

                        if v514 == nil then
                            break
                        end

                        local v516 = _Workspace.Map:FindFirstChild(v515)

                        if v516 and v516:IsA('Model') then
                            v516:Destroy()
                        end
                    end

                    if _Workspace.Map:FindFirstChild('FrozenDimension') then
                        _VirtualInputManager:SendKeyEvent(false, 'W', false, game)

                        _G.AutoFindFrozen = false

                        if not u489 then
                            u33:Notify({
                                Title = 'Min Gaming',
                                Content = 'Leviathan Island Found',
                                Duration = 10,
                            })

                            u489 = true
                        end
                    end
                else
                    return
                end
            else
                return
            end
        else
            u489 = false

            return
        end
    end)
    v37.Sea:AddToggle('AutoComeTiki', {
        Title = 'Sail To Tiki Island',
        Description = '',
        Default = false,
    }):OnChanged(function(p517)
        _G.AutoComeTiki = p517
    end)
    _RunService.RenderStepped:Connect(function()
        if not _G.AutoComeTiki then
            return
        end

        local _Character6 = _Players.LocalPlayer.Character

        if not (_Character6 and _Character6:FindFirstChild('Humanoid')) then
            return
        end

        local _Humanoid4 = _Character6.Humanoid
        local v520, v521, v522 = pairs(_Workspace.Boats:GetChildren())
        local v523 = nil

        while true do
            local v524

            v522, v524 = v520(v521, v522)

            if v522 == nil then
                _VehicleSeat4 = v523

                break
            end

            local _VehicleSeat4 = v524:FindFirstChild('VehicleSeat')

            if _VehicleSeat4 and _VehicleSeat4.Occupant == _Humanoid4 then
                break
            end
        end

        if _VehicleSeat4 then
            _VehicleSeat4.MaxSpeed = u419

            local v526 = CFrame.new(-16217.7568359375, 9.126761436462402, 446.06536865234375)
            local _Position4 = _VehicleSeat4.Position
            local _Position5 = v526.Position
            local v529 = (_Position5 - _Position4).unit * _VehicleSeat4.MaxSpeed * _RunService.RenderStepped:Wait()

            _VehicleSeat4.CFrame = _VehicleSeat4.CFrame + v529

            CFrame.new(_Position4, _Position5)

            _VehicleSeat4.CFrame = CFrame.new(_VehicleSeat4.Position, _Position5)

            if (_VehicleSeat4.Position - _Position5).magnitude < 120 then
                _G.AutoComeTiki = false

                _VirtualInputManager:SendKeyEvent(false, 'W', false, game)
            end
        end
    end)
    v37.Sea:AddToggle('AutoComeHydra', {
        Title = 'Sail To Hydra Island',
        Description = '',
        Default = false,
    }):OnChanged(function(p530)
        _G.AutoComeHydra = p530
    end)
    _RunService.RenderStepped:Connect(function()
        if not _G.AutoComeHydra then
            return
        end

        local _Character7 = _Players.LocalPlayer.Character

        if not (_Character7 and _Character7:FindFirstChild('Humanoid')) then
            return
        end

        local _Humanoid5 = _Character7.Humanoid
        local v533, v534, v535 = pairs(_Workspace.Boats:GetChildren())
        local v536 = nil

        while true do
            local v537

            v535, v537 = v533(v534, v535)

            if v535 == nil then
                _VehicleSeat5 = v536

                break
            end

            local _VehicleSeat5 = v537:FindFirstChild('VehicleSeat')

            if _VehicleSeat5 and _VehicleSeat5.Occupant == _Humanoid5 then
                break
            end
        end

        if _VehicleSeat5 then
            _VehicleSeat5.MaxSpeed = u419

            local v539 = CFrame.new(5193.9375, -0.04690289497375488, 1631.578369140625)
            local _Position6 = _VehicleSeat5.Position
            local _Position7 = v539.Position
            local v542 = (_Position7 - _Position6).unit * _VehicleSeat5.MaxSpeed * _RunService.RenderStepped:Wait()

            _VehicleSeat5.CFrame = _VehicleSeat5.CFrame + v542

            CFrame.new(_Position6, _Position7)

            _VehicleSeat5.CFrame = CFrame.new(_VehicleSeat5.Position, _Position7)

            if (_VehicleSeat5.Position - _Position7).magnitude < 120 then
                _G.AutoComeHydra = false

                _VirtualInputManager:SendKeyEvent(false, 'W', false, game)
            end
        end
    end)
    v37.Sea:AddButton({
        Title = 'Fly To Hunting Area',
        Description = '',
        Callback = function()
            Tween2(CFrame.new(-16917.154296875, 7.757596015930176, 511.8203125))
        end,
    })

    local u543 = {}
    local _DropdownBoat = v37.Sea:AddDropdown('DropdownBoat', {
        Title = 'Select Boat',
        Description = '',
        Values = {
            'Beast Hunter',
            'Sleigh',
            'Miracle',
            'The Sentinel',
            'Guardian',
            'Lantern',
            'Dinghy',
            'PirateSloop',
            'PirateBrigade',
            'PirateGrandBrigade',
            'MarineGrandBrigade',
            'MarineBrigade',
            'MarineSloop',
        },
        Multi = false,
        Default = 1,
    })

    _DropdownBoat:SetValue(selectedBoat)
    _DropdownBoat:OnChanged(function(p545)
        selectedBoat = p545
    end)

    local function u552(p546)
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'BuyBoat',
            p546,
        }))
        task.delay(2, function()
            local v547, v548, v549 = pairs(_Workspace.Boats:GetChildren())

            while true do
                local v550

                v549, v550 = v547(v548, v549)

                if v549 == nil then
                    break
                end
                if v550:IsA('Model') and v550.Name == p546 then
                    local _VehicleSeat6 = v550:FindFirstChild('VehicleSeat')

                    if _VehicleSeat6 and not _VehicleSeat6.Occupant then
                        u543[p546] = _VehicleSeat6
                    end
                end
            end
        end)
    end
    local function u557()
        local v553, v554, v555 = pairs(u543)

        while true do
            local v556

            v555, v556 = v553(v554, v555)

            if v555 == nil then
                break
            end
            if v556 and (v556.Parent and (v556.Name == 'VehicleSeat' and not v556.Occupant)) then
                Tween2(v556.CFrame)
            end
        end
    end

    game:GetService('RunService').RenderStepped:Connect(function()
        local v558, v559, v560 = pairs(u543)

        while true do
            local v561

            v560, v561 = v558(v559, v560)

            if v560 == nil then
                break
            end
            if v561 and (v561.Parent and (v561.Name == 'VehicleSeat' and not v561.Occupant)) then
                u543[v560] = v561
            end
        end
    end)
    v37.Sea:AddButton({
        Title = 'Buy Boat',
        Description = '',
        Callback = function()
            u552(selectedBoat)
        end,
    })
    v37.Sea:AddButton({
        Title = 'Fly To Boat',
        Description = 'Only The Boat You Bought In Selection',
        Callback = function()
            u557()
        end,
    })
    v37.Sea:AddToggle('ToggleTerrorshark', {
        Title = 'Hunt Shark',
        Description = '',
        Default = false,
    }):OnChanged(function(p562)
        _G.AutoTerrorshark = p562
    end)
    _Options.ToggleTerrorshark:SetValue(false)
    spawn(function()
        while wait() do
            if _G.AutoTerrorshark then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark') then
                        local v563, v564, v565 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v566

                            v565, v566 = v563(v564, v565)

                            if v565 == nil then
                                break
                            end
                            if v566.Name == 'Terrorshark' and (v566:FindFirstChild('Humanoid') and (v566:FindFirstChild('HumanoidRootPart') and v566.Humanoid.Health > 0)) then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    v566.HumanoidRootPart.CanCollide = false
                                    v566.Humanoid.WalkSpeed = 0
                                    v566.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                    Tween(v566.HumanoidRootPart.CFrame * Pos)
                                until not _G.AutoTerrorshark or (not v566.Parent or v566.Humanoid.Health <= 0)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Terrorshark') then
                        Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Terrorshark').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    end
                end)
            end
        end
    end)
    v37.Sea:AddToggle('TogglePiranha', {
        Title = 'Hunt Piranha',
        Description = '',
        Default = false,
    }):OnChanged(function(p567)
        _G.farmpiranya = p567
    end)
    _Options.TogglePiranha:SetValue(false)
    spawn(function()
        while wait() do
            if _G.farmpiranya then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Piranha') then
                        local v568, v569, v570 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v571

                            v570, v571 = v568(v569, v570)

                            if v570 == nil then
                                break
                            end
                            if v571.Name == 'Piranha' and (v571:FindFirstChild('Humanoid') and (v571:FindFirstChild('HumanoidRootPart') and v571.Humanoid.Health > 0)) then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    v571.HumanoidRootPart.CanCollide = false
                                    v571.Humanoid.WalkSpeed = 0
                                    v571.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                    Tween(v571.HumanoidRootPart.CFrame * Pos)
                                until not _G.farmpiranya or (not v571.Parent or v571.Humanoid.Health <= 0)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Piranha') then
                        Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Piranha').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    end
                end)
            end
        end
    end)
    v37.Sea:AddToggle('ToggleShark', {
        Title = 'Hunt Small Fish',
        Description = '',
        Default = false,
    }):OnChanged(function(p572)
        _G.AutoShark = p572
    end)
    _Options.ToggleShark:SetValue(false)
    spawn(function()
        while wait() do
            if _G.AutoShark then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Shark') then
                        local v573, v574, v575 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v576

                            v575, v576 = v573(v574, v575)

                            if v575 == nil then
                                break
                            end
                            if v576.Name == 'Shark' and (v576:FindFirstChild('Humanoid') and (v576:FindFirstChild('HumanoidRootPart') and v576.Humanoid.Health > 0)) then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    v576.HumanoidRootPart.CanCollide = false
                                    v576.Humanoid.WalkSpeed = 0
                                    v576.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                    Tween(v576.HumanoidRootPart.CFrame * Pos)

                                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                until not _G.AutoShark or (not v576.Parent or v576.Humanoid.Health <= 0)
                            end
                        end
                    else
                        Tween(game:GetService('Workspace').Boats.PirateGrandBrigade.VehicleSeat.CFrame * CFrame.new(0, 1, 0))

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Terrorshark') then
                            Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Terrorshark').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
    v37.Sea:AddToggle('ToggleFishCrew', {
        Title = 'Hunt Fishing Boat',
        Description = '',
        Default = false,
    }):OnChanged(function(p577)
        _G.AutoFishCrew = p577
    end)
    _Options.ToggleFishCrew:SetValue(false)
    spawn(function()
        while wait() do
            if _G.AutoFishCrew then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Fish Crew Member') then
                        local v578, v579, v580 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v581

                            v580, v581 = v578(v579, v580)

                            if v580 == nil then
                                break
                            end
                            if v581.Name == 'Fish Crew Member' and (v581:FindFirstChild('Humanoid') and (v581:FindFirstChild('HumanoidRootPart') and v581.Humanoid.Health > 0)) then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    v581.HumanoidRootPart.CanCollide = false
                                    v581.Humanoid.WalkSpeed = 0
                                    v581.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                    Tween(v581.HumanoidRootPart.CFrame * Pos)

                                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                until not _G.AutoFishCrew or (not v581.Parent or v581.Humanoid.Health <= 0)
                            end
                        end
                    else
                        Tween(game:GetService('Workspace').Boats.PirateGrandBrigade.VehicleSeat.CFrame * CFrame.new(0, 1, 0))

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Fish Crew Member') then
                            Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Fish Crew Member').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
    v37.Sea:AddToggle('ToggleShip', {
        Title = 'Hunt Boat',
        Description = '',
        Default = false,
    }):OnChanged(function(p582)
        _G.Ship = p582
    end)
    _Options.ToggleShip:SetValue(false)

    function CheckPirateBoat()
        local v583 = next
        local v584, v585 = game:GetService('Workspace').Enemies:GetChildren()
        local v586 = {
            'PirateGrandBrigade',
            'PirateBrigade',
        }

        while true do
            local v587

            v585, v587 = v583(v584, v585)

            if v585 == nil then
                break
            end
            if table.find(v586, v587.Name) and (v587:FindFirstChild('Health') and v587.Health.Value > 0) then
                return v587
            end
        end
    end

    spawn(function()
        while wait() do
            if _G.Ship then
                pcall(function()
                    if CheckPirateBoat() then
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 32, false, game)
                        wait(0.5)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 32, false, game)

                        local v588 = CheckPirateBoat()

                        repeat
                            wait()
                            spawn(Tween(v588.Engine.CFrame * CFrame.new(0, -20, 0)), 1)

                            AimBotSkillPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
                            Skillaimbot = true
                            AutoSkill = false
                        until not v588 or (not v588.Parent or (v588.Health.Value <= 0 or not CheckPirateBoat()))

                        Skillaimbot = true
                        AutoSkill = false
                    end
                end)
            end
        end
    end)
    v37.Sea:AddToggle('ToggleGhostShip', {
        Title = 'Hunt Ghost Ship',
        Description = '',
        Default = false,
    }):OnChanged(function(p589)
        _G.GhostShip = p589
    end)
    _Options.ToggleGhostShip:SetValue(false)

    function CheckPirateBoat()
        local v590 = next
        local v591, v592 = game:GetService('Workspace').Enemies:GetChildren()
        local v593 = {
            'FishBoat',
        }

        while true do
            local v594

            v592, v594 = v590(v591, v592)

            if v592 == nil then
                break
            end
            if table.find(v593, v594.Name) and (v594:FindFirstChild('Health') and v594.Health.Value > 0) then
                return v594
            end
        end
    end

    spawn(function()
        while wait() do
            pcall(function()
                if _G.bjirFishBoat and CheckPirateBoat() then
                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 32, false, game)
                    wait()
                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 32, false, game)

                    local v595 = CheckPirateBoat()

                    repeat
                        wait()
                        spawn(Tween(v595.Engine.CFrame * CFrame.new(0, -20, 0), 1))

                        AutoSkill = true
                        Skillaimbot = true
                        AimBotSkillPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
                    until v595.Parent or (v595.Health.Value <= 0 or not CheckPirateBoat())

                    AutoSkill = false
                    Skillaimbot = false
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            if _G.bjirFishBoat then
                pcall(function()
                    if CheckPirateBoat() then
                        AutoHaki()
                        game:GetService('VirtualUser'):CaptureController()
                        game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))

                        local v596, v597, v598 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v599

                            v598, v599 = v596(v597, v598)

                            if v598 == nil then
                                break
                            end
                            if v599:IsA('Tool') and v599.ToolTip == 'Melee' then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v599)
                            end
                        end

                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(0.2)
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(0.2)
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(0.2)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 'C', false, game.Players.LocalPlayer.Character.HumanoidRootPart)

                        local v600, v601, v602 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v603

                            v602, v603 = v600(v601, v602)

                            if v602 == nil then
                                break
                            end
                            if v603:IsA('Tool') and v603.ToolTip == 'Blox Fruit' then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v603)
                            end
                        end

                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(0.2)
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(0.2)
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(0.2)
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 'V', false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 'V', false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait()

                        local v604, v605, v606 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v607

                            v606, v607 = v604(v605, v606)

                            if v606 == nil then
                                break
                            end
                            if v607:IsA('Tool') and v607.ToolTip == 'Sword' then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v607)
                            end
                        end

                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(0.2)
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(0.2)
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait()

                        local v608, v609, v610 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v611

                            v610, v611 = v608(v609, v610)

                            if v610 == nil then
                                break
                            end
                            if v611:IsA('Tool') and v611.ToolTip == 'Gun' then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v611)
                            end
                        end

                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(0.2)
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(0.2)
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                    end
                end)
            end
        end
    end)
    v37.Main:AddSection('Elite')

    local u612 = v37.Main:AddParagraph({
        Title = 'Elite Status',
        Content = '',
    })

    spawn(function()
        while wait() do
            pcall(function()
                if game:GetService('ReplicatedStorage'):FindFirstChild('Diablo') or (game:GetService('ReplicatedStorage'):FindFirstChild('Deandre') or (game:GetService('ReplicatedStorage'):FindFirstChild('Urban') or (game:GetService('Workspace').Enemies:FindFirstChild('Diablo') or (game:GetService('Workspace').Enemies:FindFirstChild('Deandre') or game:GetService('Workspace').Enemies:FindFirstChild('Urban'))))) then
                    u612:SetDesc('Elite Boss: ✅️ | Killed:  ' .. game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter', 'Progress'))
                else
                    u612:SetDesc('Elite Boss: ❌️ | Killed: ' .. game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter', 'Progress'))
                end
            end)
        end
    end)
    v37.Main:AddToggle('ToggleElite', {
        Title = 'Hunt Elite',
        Description = '',
        Default = false,
    }):OnChanged(function(p613)
        _G.AutoElite = p613
    end)
    _Options.ToggleElite:SetValue(false)
    spawn(function()
        while task.wait() do
            if _G.AutoElite then
                pcall(function()
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter')

                    if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= true then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter')
                    elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Diablo') or (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Deandre') or string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Urban')) then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Diablo') or (game:GetService('Workspace').Enemies:FindFirstChild('Deandre') or game:GetService('Workspace').Enemies:FindFirstChild('Urban')) then
                            local v614, v615, v616 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v617

                                v616, v617 = v614(v615, v616)

                                if v616 == nil then
                                    break
                                end
                                if v617:FindFirstChild('Humanoid') and (v617:FindFirstChild('HumanoidRootPart') and (v617.Humanoid.Health > 0 and (v617.Name == 'Diablo' or (v617.Name == 'Deandre' or v617.Name == 'Urban')))) then
                                    repeat
                                        wait(_G.Fast_Delay)
                                        AttackNoCoolDown()
                                        EquipTool(SelectWeapon)
                                        AutoHaki()
                                        Tween2(v617.HumanoidRootPart.CFrame * Pos)

                                        v617.Humanoid.WalkSpeed = 0
                                        v617.HumanoidRootPart.CanCollide = false
                                        v617.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    until _G.AutoElite == false or (v617.Humanoid.Health <= 0 or not v617.Parent)
                                end
                            end
                        elseif game:GetService('ReplicatedStorage'):FindFirstChild('Diablo') then
                            Tween2(game:GetService('ReplicatedStorage'):FindFirstChild('Diablo').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif game:GetService('ReplicatedStorage'):FindFirstChild('Deandre') then
                            Tween2(game:GetService('ReplicatedStorage'):FindFirstChild('Deandre').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif game:GetService('ReplicatedStorage'):FindFirstChild('Urban') then
                            Tween2(game:GetService('ReplicatedStorage'):FindFirstChild('Urban').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
end
if Sea3 then
    v37.Sea:AddSection('Mystery Island')

    local u618 = v37.Sea:AddParagraph({
        Title = 'Status',
        Content = '',
    })

    task.spawn(function()
        while task.wait() do
            pcall(function()
                local _MoonTextureId = game:GetService('Lighting').Sky.MoonTextureId

                if _MoonTextureId == 'http://www.roblox.com/asset/?id=9709149431' then
                    FullMoonStatus = '100%'
                elseif _MoonTextureId == 'http://www.roblox.com/asset/?id=9709149052' then
                    FullMoonStatus = '75%'
                elseif _MoonTextureId == 'http://www.roblox.com/asset/?id=9709143733' then
                    FullMoonStatus = '50%'
                elseif _MoonTextureId == 'http://www.roblox.com/asset/?id=9709150401' then
                    FullMoonStatus = '25%'
                elseif _MoonTextureId == 'http://www.roblox.com/asset/?id=9709149680' then
                    FullMoonStatus = '15%'
                else
                    FullMoonStatus = '0%'
                end
            end)
        end
    end)
    task.spawn(function()
        while task.wait() do
            pcall(function()
                if game.Workspace.Map:FindFirstChild('MysticIsland') then
                    MirageStatus = '✅️'
                else
                    MirageStatus = '❌️'
                end
            end)
        end
    end)
    spawn(function()
        pcall(function()
            while wait() do
                u618:SetDesc('Mystery Island: ' .. MirageStatus .. ' | Full Moon: ' .. FullMoonStatus)
            end
        end)
    end)
    v37.Sea:AddButton({
        Title = 'Fly To High Ground',
        Description = '',
        Callback = function()
            TweenToHighestPoint()
        end,
    })

    function TweenToHighestPoint()
        local v620 = getHighestPoint()

        if v620 then
            Tween2(v620.CFrame * CFrame.new(0, 211.88, 0))
        end
    end
    function getHighestPoint()
        if not game.Workspace.Map:FindFirstChild('MysticIsland') then
            return nil
        end

        local v621, v622, v623 = pairs(game:GetService('Workspace').Map.MysticIsland:GetDescendants())

        while true do
            local v624

            v623, v624 = v621(v622, v623)

            if v623 == nil then
                break
            end
            if v624:IsA('MeshPart') and v624.MeshId == 'rbxassetid://6745037796' then
                return v624
            end
        end
    end
end

v37.Sea:AddToggle('ToggleTpAdvanced', {
    Title = 'Fly To Advanced Fruit Dealer',
    Description = '',
    Default = false,
}):OnChanged(function(p625)
    _G.AutoTpAdvanced = p625
end)
spawn(function()
    while wait() do
        if _G.AutoTpAdvanced then
            local _AdvancedFruitDealer = game.ReplicatedStorage.NPCs:FindFirstChild('Advanced Fruit Dealer')

            if _AdvancedFruitDealer and _AdvancedFruitDealer:IsA('Model') then
                local _PrimaryPart = _AdvancedFruitDealer.PrimaryPart

                if _PrimaryPart then
                    _PrimaryPart = _AdvancedFruitDealer.PrimaryPart.Position
                end
                if _PrimaryPart then
                    Tween2(CFrame.new(_PrimaryPart))
                end
            end
        end
    end
end)
v37.Sea:AddToggle('ToggleTweenGear', {
    Title = 'Fly To Gear',
    Description = '',
    Default = false,
}):OnChanged(function(p628)
    _G.TweenToGear = p628
end)
_Options.ToggleTweenGear:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if _G.TweenToGear and game:GetService('Workspace').Map:FindFirstChild('MysticIsland') then
                local v629, v630, v631 = pairs(game:GetService('Workspace').Map.MysticIsland:GetChildren())

                while true do
                    local v632

                    v631, v632 = v629(v630, v631)

                    if v631 == nil then
                        break
                    end
                    if v632:IsA('MeshPart') and v632.Material == Enum.Material.Neon then
                        Tween2(v632.CFrame)
                    end
                end
            end
        end
    end)
end)
v37.Sea:AddToggle('Togglelockmoon', {
    Title = 'Moongazing And Use Race',
    Description = '',
    Default = false,
}):OnChanged(function(p633)
    _G.AutoLockMoon = p633
end)
_Options.Togglelockmoon:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoLockMoon then
                local v634 = game.Lighting:GetMoonDirection()
                local v635 = game.Workspace.CurrentCamera.CFrame.p + v634 * 100

                game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, v635)
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoLockMoon then
                game:GetService('ReplicatedStorage').Remotes.CommE:FireServer('ActivateAbility')
            end
        end)
    end
end)
v37.ITM:AddToggle('ToggleAutoSaber', {
    Title = 'Saber',
    Description = '',
    Default = false,
}):OnChanged(function(p636)
    _G.Auto_Saber = p636
end)
_Options.ToggleAutoSaber:SetValue(false)
spawn(function()
    while task.wait() do
        if _G.Auto_Saber and game.Players.LocalPlayer.Data.Level.Value >= 200 then
            pcall(function()
                if game:GetService('Workspace').Map.Jungle.Final.Part.Transparency ~= 0 then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Saber Expert') or game:GetService('ReplicatedStorage'):FindFirstChild('Saber Expert') then
                        local v637, v638, v639 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v640

                            v639, v640 = v637(v638, v639)

                            if v639 == nil then
                                break
                            end
                            if v640:FindFirstChild('Humanoid') and (v640:FindFirstChild('HumanoidRootPart') and (v640.Humanoid.Health > 0 and v640.Name == 'Saber Expert')) then
                                repeat
                                    task.wait(_G.Fast_Delay)
                                    EquipTool(SelectWeapon)
                                    Tween(v640.HumanoidRootPart.CFrame * Pos)

                                    v640.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v640.HumanoidRootPart.Transparency = 1
                                    v640.Humanoid.JumpPower = 0
                                    v640.Humanoid.WalkSpeed = 0
                                    v640.HumanoidRootPart.CanCollide = false
                                    bringmob = true
                                    FarmPos = v640.HumanoidRootPart.CFrame
                                    MonFarm = v640.Name

                                    AttackNoCoolDown()
                                until v640.Humanoid.Health <= 0 or not _G.Auto_Saber

                                bringmob = true

                                if v640.Humanoid.Health <= 0 then
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'PlaceRelic')
                                end
                            end
                        end
                    end
                elseif game:GetService('Workspace').Map.Jungle.QuestPlates.Door.Transparency ~= 0 then
                    if game:GetService('Workspace').Map.Desert.Burn.Part.Transparency ~= 0 then
                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'SickMan') == 0 then
                            if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon') ~= nil then
                                if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon') ~= 0 then
                                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon') == 1 then
                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon')
                                        wait(0.5)
                                        EquipTool('Relic')
                                        wait(0.5)
                                        Tween(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.6690688e-9, 0.481375456, 2.53852e-8, 1, -5.799956e-8, -0.481375456, 6.3057264e-8, 0.876514494))
                                    end
                                elseif game:GetService('Workspace').Enemies:FindFirstChild('Mob Leader') or game:GetService('ReplicatedStorage'):FindFirstChild('Mob Leader') then
                                    Tween(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559))

                                    local v641, v642, v643 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                    while true do
                                        local v644

                                        v643, v644 = v641(v642, v643)

                                        if v643 == nil then
                                            break
                                        end
                                        if v644.Name == 'Mob Leader' then
                                            if game:GetService('Workspace').Enemies:FindFirstChild('Mob Leader [Lv. 120] [Boss]') and (v644:FindFirstChild('Humanoid') and (v644:FindFirstChild('HumanoidRootPart') and v644.Humanoid.Health > 0)) then
                                                repeat
                                                    task.wait(_G.Fast_Delay)
                                                    AutoHaki()
                                                    EquipTool(SelectWeapon)

                                                    v644.HumanoidRootPart.CanCollide = false
                                                    v644.Humanoid.WalkSpeed = 0
                                                    v644.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                                    Tween(v644.HumanoidRootPart.CFrame * Pos)
                                                    AttackNoCoolDown()
                                                until v644.Humanoid.Health <= 0 or not _G.Auto_Saber
                                            end
                                            if game:GetService('ReplicatedStorage'):FindFirstChild('Mob Leader') then
                                                Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Mob Leader').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                            end
                                        end
                                    end
                                end
                            else
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon')
                            end
                        else
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'GetCup')
                            wait(0.5)
                            EquipTool('Cup')
                            wait(0.5)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'FillCup', game:GetService('Players').LocalPlayer.Character.Cup)
                            wait(0)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'SickMan')
                        end
                    elseif game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Torch') or game.Players.LocalPlayer.Character:FindFirstChild('Torch') then
                        EquipTool('Torch')
                        Tween(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.2879909e-9, 0.761243105, -5.706529e-10, 1, 1.2058454e-9, -0.761243105, 3.4754487999999997e-10, -0.648466587))
                    else
                        Tween(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 0.00003423728, -0.258850515, 0.965917408))
                    end
                elseif (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717149999999998e-9, -0.928667724, 3.970995e-8, 1, 1.9167934999999998e-8, 0.928667724, -4.398698e-8, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 100 then
                    Tween(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717149999999998e-9, -0.928667724, 3.970995e-8, 1, 1.9167934999999998e-8, 0.928667724, -4.398698e-8, 0.37091279))
                else
                    Tween(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait(1)

                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.Jungle.QuestPlates.Plate1.Button.CFrame

                    wait(1)

                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.Jungle.QuestPlates.Plate2.Button.CFrame

                    wait(1)

                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.Jungle.QuestPlates.Plate3.Button.CFrame

                    wait(1)

                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.Jungle.QuestPlates.Plate4.Button.CFrame

                    wait(1)

                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.Jungle.QuestPlates.Plate5.Button.CFrame

                    wait(1)
                end
            end)
        end
    end
end)
v37.ITM:AddToggle('ToggleAutoPoleV1', {
    Title = 'Pole V1',
    Description = '',
    Default = false,
}):OnChanged(function(p645)
    _G.Auto_PoleV1 = p645
end)
_Options.ToggleAutoPoleV1:SetValue(false)

local u646 = CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625)

spawn(function()
    while wait() do
        if _G.Auto_PoleV1 then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Thunder God') then
                    local v647, v648, v649 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v650

                        v649, v650 = v647(v648, v649)

                        if v649 == nil then
                            break
                        end
                        if v650.Name == 'Thunder God' and (v650:FindFirstChild('Humanoid') and (v650:FindFirstChild('HumanoidRootPart') and v650.Humanoid.Health > 0)) then
                            repeat
                                task.wait(_G.Fast_Delay)
                                AutoHaki()
                                EquipTool(SelectWeapon)

                                v650.HumanoidRootPart.CanCollide = false
                                v650.Humanoid.WalkSpeed = 0
                                v650.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                Tween(v650.HumanoidRootPart.CFrame * Pos)
                                AttackNoCoolDown()
                            until not _G.Auto_PoleV1 or (not v650.Parent or v650.Humanoid.Health <= 0)
                        end
                    end
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u646.Position).Magnitude < 1500 then
                    Tween(u646)
                end

                Tween(CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625))

                if game:GetService('ReplicatedStorage'):FindFirstChild('Thunder God') then
                    Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Thunder God').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                end
            end)
        end
    end
end)
v37.ITM:AddToggle('ToggleAutoSaw', {
    Title = 'Kill Shark',
    Description = '',
    Default = false,
}):OnChanged(function(p651)
    _G.Auto_Saw = p651
end)
_Options.ToggleAutoSaw:SetValue(false)

local u652 = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094)

spawn(function()
    while wait() do
        if _G.Auto_Saw then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('The Saw') then
                    local v653, v654, v655 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v656

                        v655, v656 = v653(v654, v655)

                        if v655 == nil then
                            break
                        end
                        if v656.Name == 'The Saw' and (v656:FindFirstChild('Humanoid') and (v656:FindFirstChild('HumanoidRootPart') and v656.Humanoid.Health > 0)) then
                            repeat
                                task.wait(_G.Fast_Delay)
                                AutoHaki()
                                EquipTool(SelectWeapon)

                                v656.HumanoidRootPart.CanCollide = false
                                v656.Humanoid.WalkSpeed = 0
                                v656.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                Tween(v656.HumanoidRootPart.CFrame * Pos)
                                AttackNoCoolDown()
                            until not _G.Auto_Saw or (not v656.Parent or v656.Humanoid.Health <= 0)
                        end
                    end
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u652.Position).Magnitude < 1500 then
                    Tween(u652)
                end

                Tween(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))

                if game:GetService('ReplicatedStorage'):FindFirstChild('The Saw') then
                    Tween(game:GetService('ReplicatedStorage'):FindFirstChild('The Saw').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                end
            end)
        end
    end
end)
v37.ITM:AddToggle('ToggleAutoWarden', {
    Title = 'Get Warden Sword',
    Description = '',
    Default = false,
}):OnChanged(function(p657)
    _G.Auto_Warden = p657
end)
_Options.ToggleAutoWarden:SetValue(false)

local u658 = CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976563)

spawn(function()
    while wait() do
        if _G.Auto_Warden then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Chief Warden') then
                    local v659, v660, v661 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v662

                        v661, v662 = v659(v660, v661)

                        if v661 == nil then
                            break
                        end
                        if v662.Name == 'Chief Warden' and (v662:FindFirstChild('Humanoid') and (v662:FindFirstChild('HumanoidRootPart') and v662.Humanoid.Health > 0)) then
                            repeat
                                task.wait(_G.Fast_Delay)
                                AutoHaki()
                                EquipTool(SelectWeapon)

                                v662.HumanoidRootPart.CanCollide = false
                                v662.Humanoid.WalkSpeed = 0
                                v662.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                Tween(v662.HumanoidRootPart.CFrame * Pos)
                                AttackNoCoolDown()
                            until not _G.Auto_Warden or (not v662.Parent or v662.Humanoid.Health <= 0)
                        end
                    end
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u658.Position).Magnitude < 1500 then
                    Tween(u658)
                end

                Tween(CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976563))

                if game:GetService('ReplicatedStorage'):FindFirstChild('Chief Warden') then
                    Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Chief Warden').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                end
            end)
        end
    end
end)

if Sea3 then
    v37.ITM:AddToggle('ToggleHallow', {
        Title = 'Scythe',
        Description = '',
        Default = false,
    }):OnChanged(function(p663)
        AutoHallowSycthe = p663
    end)
    _Options.ToggleHallow:SetValue(false)
    spawn(function()
        while wait() do
            if AutoHallowSycthe then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Soul Reaper') then
                        local v664, v665, v666 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v667

                            v666, v667 = v664(v665, v666)

                            if v666 == nil then
                                break
                            end
                            if string.find(v667.Name, 'Soul Reaper') then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    v667.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                                    Tween(v667.HumanoidRootPart.CFrame * Pos)

                                    v667.HumanoidRootPart.Transparency = 1

                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until v667.Humanoid.Health <= 0 or AutoHallowSycthe == false
                            end
                        end
                    elseif game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Hallow Essence') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Hallow Essence') then
                        repeat
                            Tween(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
                            wait()
                        until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8

                        wait()
                        EquipTool('Hallow Essence')
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Soul Reaper') then
                        Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Soul Reaper').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    end
                end)
            end
        end
    end)
    spawn(function()
        while wait() do
            if AutoHallowSycthe then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'Bones',
                    'Buy',
                    1,
                    1,
                }))
            end
        end
    end)
    v37.ITM:AddToggle('ToggleYama', {
        Title = 'Yama',
        Description = '',
        Default = false,
    }):OnChanged(function(p668)
        _G.AutoYama = p668
    end)
    _Options.ToggleYama:SetValue(false)
    spawn(function()
        while wait() do
            if _G.AutoYama and game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter', 'Progress') >= 30 then
                repeat
                    wait()
                    fireclickdetector(game:GetService('Workspace').Map.Waterfall.SealedKatana.Handle.ClickDetector)
                until game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Yama') or not _G.AutoYama
            end
        end
    end)
    v37.ITM:AddToggle('ToggleTushita', {
        Title = 'Tushita',
        Description = '',
        Default = false,
    }):OnChanged(function(p669)
        AutoTushita = p669
    end)
    _Options.ToggleTushita:SetValue(false)
    spawn(function()
        while true do
            repeat
                if not wait() then
                    return
                end
            until AutoTushita

            if game:GetService('Workspace').Enemies:FindFirstChild('Longma') then
                break
            end

            Tween(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
        end

        local v670, v671, v672 = pairs(game:GetService('Workspace').Enemies:GetChildren())
        local v673

        v672, v673 = v670(v671, v672)

        if v672 ~= nil then
        end
        if v673.Name == ('Longma' or v673.Name == 'Longma') and (v673.Humanoid.Health > 0 and (v673:IsA('Model') and (v673:FindFirstChild('Humanoid') and v673:FindFirstChild('HumanoidRootPart')))) then
        else
        end

        wait(_G.Fast_Delay)
        AttackNoCoolDown()
        AutoHaki()

        if not game.Players.LocalPlayer.Character:FindFirstChild(SelectWeapon) then
            wait()
            EquipTool(SelectWeapon)
        end

        FarmPos = v673.HumanoidRootPart.CFrame
        v673.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
        v673.Humanoid.JumpPower = 0
        v673.Humanoid.WalkSpeed = 0
        v673.HumanoidRootPart.CanCollide = false

        v673.Humanoid:ChangeState(11)
        Tween(v673.HumanoidRootPart.CFrame * Pos)

        if AutoTushita and (v673.Parent and v673.Humanoid.Health > 0) then
        else
        end
    end)
    v37.ITM:AddToggle('ToggleHoly', {
        Title = 'Light Torch',
        Description = '',
        Default = false,
    }):OnChanged(function(p674)
        _G.Auto_Holy_Torch = p674
    end)
    _Options.ToggleHoly:SetValue(false)
    spawn(function()
        while wait() do
            if _G.Auto_Holy_Torch then
                pcall(function()
                    wait()

                    repeat
                        Tween(CFrame.new(-10752, 417, -9366))
                        wait()
                    until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-10752, 417, -9366)).Magnitude <= 10

                    wait()

                    repeat
                        Tween(CFrame.new(-11672, 334, -9474))
                        wait()
                    until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-11672, 334, -9474)).Magnitude <= 10

                    wait()

                    repeat
                        Tween(CFrame.new(-12132, 521, -10655))
                        wait()
                    until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-12132, 521, -10655)).Magnitude <= 10

                    wait()

                    repeat
                        Tween(CFrame.new(-13336, 486, -6985))
                        wait()
                    until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-13336, 486, -6985)).Magnitude <= 10

                    wait()

                    repeat
                        Tween(CFrame.new(-13489, 332, -7925))
                        wait()
                    until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-13489, 332, -7925)).Magnitude <= 10
                end)
            end
        end
    end)
end

v37.ITM:AddToggle('ToggleAutoCanvander', {
    Title = 'Canvander',
    Description = '',
    Default = false,
}):OnChanged(function(p675)
    _G.Auto_Canvander = p675
end)
_Options.ToggleAutoCanvander:SetValue(false)

local u676 = CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875)

spawn(function()
    while wait() do
        if _G.Auto_Canvander then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Beautiful Pirate') then
                    local v677, v678, v679 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v680

                        v679, v680 = v677(v678, v679)

                        if v679 == nil then
                            break
                        end
                        if v680.Name == 'Beautiful Pirate' and (v680:FindFirstChild('Humanoid') and (v680:FindFirstChild('HumanoidRootPart') and v680.Humanoid.Health > 0)) then
                            repeat
                                task.wait(_G.Fast_Delay)
                                AutoHaki()
                                EquipTool(SelectWeapon)

                                v680.HumanoidRootPart.CanCollide = false
                                v680.Humanoid.WalkSpeed = 0
                                v680.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                Tween(v680.HumanoidRootPart.CFrame * Pos)
                                AttackNoCoolDown()
                            until not _G.Auto_Canvander or (not v680.Parent or v680.Humanoid.Health <= 0)
                        end
                    end
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u676.Position).Magnitude < 1500 then
                    Tween(u676)
                end

                Tween(CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875))

                if game:GetService('ReplicatedStorage'):FindFirstChild('Beautiful Pirate') then
                    Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Beautiful Pirate').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                end
            end)
        end
    end
end)
v37.ITM:AddToggle('ToggleAutoMusketeerHat', {
    Title = 'Musketeer Hat',
    Description = '',
    Default = false,
}):OnChanged(function(p681)
    _G.Auto_MusketeerHat = p681
end)
_Options.ToggleAutoMusketeerHat:SetValue(false)
spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.Auto_MusketeerHat then
                if game:GetService('Players').LocalPlayer.Data.Level.Value < 1800 or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress').KilledBandits ~= false then
                    if game:GetService('Players').LocalPlayer.Data.Level.Value < 1800 or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress').KilledBoss ~= false then
                        if game:GetService('Players').LocalPlayer.Data.Level.Value >= 1800 and game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen') == 2 then
                            Tween(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
                        end
                    elseif game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible and (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Captain Elephant') and game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Captain Elephant') then
                            local v682, v683, v684 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local u685

                                v684, u685 = v682(v683, v684)

                                if v684 == nil then
                                    break
                                end
                                if u685.Name == 'Captain Elephant' then
                                    OldCFrameElephant = u685.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait(_G.Fast_Delay)
                                        pcall(function()
                                            EquipTool(SelectWeapon)
                                            AutoHaki()

                                            u685.HumanoidRootPart.CanCollide = false
                                            u685.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                            Tween(u685.HumanoidRootPart.CFrame * Pos)

                                            u685.HumanoidRootPart.CanCollide = false
                                            u685.HumanoidRootPart.CFrame = OldCFrameElephant

                                            AttackNoCoolDown()
                                        end)
                                    until _G.Auto_MusketeerHat == false or (u685.Humanoid.Health <= 0 or not u685.Parent) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            Tween(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
                        end
                    else
                        Tween(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))

                        if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            wait(1.5)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen')
                        end
                    end
                elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Forest Pirate') and (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, '50') and game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Forest Pirate') then
                        local v686, v687, v688 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local u689

                            v688, u689 = v686(v687, v688)

                            if v688 == nil then
                                break
                            end
                            if u689.Name == 'Forest Pirate' then
                                repeat
                                    task.wait(_G.Fast_Delay)
                                    pcall(function()
                                        EquipTool(SelectWeapon)
                                        AutoHaki()

                                        u689.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                        Tween(u689.HumanoidRootPart.CFrame * Pos)

                                        u689.HumanoidRootPart.CanCollide = false

                                        AttackNoCoolDown()

                                        PosMon = u689.HumanoidRootPart.CFrame
                                        MonFarm = u689.Name
                                        bringmob = true
                                    end)
                                until _G.Auto_MusketeerHat == false or (not u689.Parent or u689.Humanoid.Health <= 0) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false

                                bringmob = false
                            end
                        end
                    else
                        bringmob = false

                        Tween(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
                    end
                else
                    Tween(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))

                    if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                        wait(1.5)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', 'CitizenQuest', 1)
                    end
                end
            end
        end
    end)
end)
v37.ITM:AddToggle('ToggleAutoObservationV2', {
    Title = 'Observation Haki V2',
    Description = '',
    Default = false,
}):OnChanged(function(p690)
    _G.Auto_ObservationV2 = p690
end)
_Options.ToggleAutoObservationV2:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_ObservationV2 then
                if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen') ~= 3 then
                    _G.Auto_MusketeerHat = true
                else
                    _G.Auto_MusketeerHat = false

                    if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Banana') and (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Apple') and game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Pineapple')) then
                        repeat
                            Tween(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))
                            wait()
                        until not _G.Auto_ObservationV2 or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10

                        wait(0.5)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen')
                    elseif game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Fruit Bowl') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Fruit Bowl') then
                        repeat
                            Tween(CFrame.new(-10920.125, 624.20275878906, -10266.995117188))
                            wait()
                        until not _G.Auto_ObservationV2 or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10

                        wait(0.5)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KenTalk2', 'Start')
                        wait(1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KenTalk2', 'Buy')
                    else
                        local v691, v692, v693 = pairs(game:GetService('Workspace'):GetDescendants())

                        while true do
                            local v694

                            v693, v694 = v691(v692, v693)

                            if v693 == nil then
                                break
                            end
                            if v694.Name == 'Apple' or (v694.Name == 'Banana' or v694.Name == 'Pineapple') then
                                v694.Handle.CFrame = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10)

                                wait()
                                firetouchinterest(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, v694.Handle, 0)
                                wait()
                            end
                        end
                    end
                end
            end
        end)
    end
end)
v37.ITM:AddToggle('ToggleAutoRainbowHaki', {
    Title = 'Rainbow Haki',
    Description = '',
    Default = false,
}):OnChanged(function(p695)
    _G.Auto_RainbowHaki = p695
end)
_Options.ToggleAutoRainbowHaki:SetValue(false)
spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.Auto_RainbowHaki then
                if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible then
                    if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Stone') then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Stone') then
                            local v696, v697, v698 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v699

                                v698, v699 = v696(v697, v698)

                                if v698 == nil then
                                    break
                                end
                                if v699.Name == 'Stone' then
                                    OldCFrameRainbow = v699.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait(_G.Fast_Delay)
                                        EquipTool(SelectWeapon)
                                        Tween(v699.HumanoidRootPart.CFrame * Pos)

                                        v699.HumanoidRootPart.CanCollide = false
                                        v699.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        v699.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                        AttackNoCoolDown()
                                    until not _G.Auto_RainbowHaki or (v699.Humanoid.Health <= 0 or not v699.Parent) or not game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible
                                end
                            end
                        else
                            Tween(CFrame.new(-1086.11621, 38.8425903, 6768.71436))
                        end
                    elseif game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Hydra Leader') then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Hydra Leader') then
                            local v700, v701, v702 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v703

                                v702, v703 = v700(v701, v702)

                                if v702 == nil then
                                    break
                                end
                                if v703.Name == 'Hydra Leader' then
                                    OldCFrameRainbow = v703.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait(_G.Fast_Delay)
                                        EquipTool(SelectWeapon)
                                        Tween(v703.HumanoidRootPart.CFrame * Pos)

                                        v703.HumanoidRootPart.CanCollide = false
                                        v703.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        v703.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                        AttackNoCoolDown()
                                    until not _G.Auto_RainbowHaki or (v703.Humanoid.Health <= 0 or not v703.Parent) or not game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible
                                end
                            end
                        else
                            Tween(CFrame.new(5713.98877, 601.922974, 202.751251))
                        end
                    elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Kilo Admiral') then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Kilo Admiral') then
                            local v704, v705, v706 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v707

                                v706, v707 = v704(v705, v706)

                                if v706 == nil then
                                    break
                                end
                                if v707.Name == 'Kilo Admiral' then
                                    OldCFrameRainbow = v707.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait(_G.Fast_Delay)
                                        EquipTool(SelectWeapon)
                                        Tween(v707.HumanoidRootPart.CFrame * Pos)

                                        v707.HumanoidRootPart.CanCollide = false
                                        v707.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v707.HumanoidRootPart.CFrame = OldCFrameRainbow

                                        AttackNoCoolDown()
                                    until not _G.Auto_RainbowHaki or (v707.Humanoid.Health <= 0 or not v707.Parent) or not game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible
                                end
                            end
                        else
                            Tween(CFrame.new(2877.61743, 423.558685, -7207.31006))
                        end
                    elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Captain Elephant') then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Captain Elephant') then
                            local v708, v709, v710 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v711

                                v710, v711 = v708(v709, v710)

                                if v710 == nil then
                                    break
                                end
                                if v711.Name == 'Captain Elephant' then
                                    OldCFrameRainbow = v711.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait(_G.Fast_Delay)
                                        EquipTool(SelectWeapon)
                                        Tween(v711.HumanoidRootPart.CFrame * Pos)

                                        v711.HumanoidRootPart.CanCollide = false
                                        v711.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v711.HumanoidRootPart.CFrame = OldCFrameRainbow

                                        AttackNoCoolDown()
                                    until not _G.Auto_RainbowHaki or (v711.Humanoid.Health <= 0 or not v711.Parent) or not game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible
                                end
                            end
                        else
                            Tween(CFrame.new(-13485.0283, 331.709259, -8012.4873))
                        end
                    elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Beautiful Pirate') then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Beautiful Pirate') then
                            local v712, v713, v714 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v715

                                v714, v715 = v712(v713, v714)

                                if v714 == nil then
                                    break
                                end
                                if v715.Name == 'Beautiful Pirate' then
                                    OldCFrameRainbow = v715.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait(_G.Fast_Delay)
                                        EquipTool(SelectWeapon)
                                        Tween(v715.HumanoidRootPart.CFrame * Pos)

                                        v715.HumanoidRootPart.CanCollide = false
                                        v715.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v715.HumanoidRootPart.CFrame = OldCFrameRainbow

                                        AttackNoCoolDown()
                                    until not _G.Auto_RainbowHaki or (v715.Humanoid.Health <= 0 or not v715.Parent) or not game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible
                                end
                            end
                        else
                            Tween(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
                        end
                    else
                        Tween(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))

                        if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('HornedMan', 'Bet')
                        end
                    end
                else
                    Tween(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))

                    if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                        wait(1.5)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('HornedMan', 'Bet')
                    end
                end
            end
        end
    end)
end)
v37.ITM:AddToggle('ToggleAutoSkullGuitar', {
    Title = 'Skull Guitar',
    Description = '',
    Default = false,
}):OnChanged(function(p716)
    _G.Auto_SkullGuitar = p716
end)
_Options.ToggleAutoSkullGuitar:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_SkullGuitar and GetWeaponInventory('Skull Guitar') == false then
                if (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 5000 then
                    Tween(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
                elseif game:GetService('Workspace').NPCs:FindFirstChild('Skeleton Machine') then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('soulGuitarBuy', true)
                elseif game:GetService('Workspace').Map['Haunted Castle'].Candle1.Transparency ~= 0 then
                    if string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2), 'Error') then
                        Tween(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
                    elseif string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2), 'Nothing') then
                        Tween('Wait Full Moon')
                    else
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2, true)
                    end
                elseif game:GetService('Workspace').Map['Haunted Castle'].Placard1.Left.Part.Transparency ~= 0 then
                    if game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment1:FindFirstChild('ClickDetector') then
                        if game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part1:FindFirstChild('ClickDetector') then
                            Quest4 = true

                            repeat
                                wait()
                                Tween(CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625))
                            until (CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_SkullGuitar

                            wait(1)
                            Tween(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part3.CFrame)
                            wait(1)
                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part3.ClickDetector)
                            wait(1)
                            Tween(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part4.CFrame)
                            wait(1)
                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part4.ClickDetector)
                            wait(1)
                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part4.ClickDetector)
                            wait(1)
                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part4.ClickDetector)
                            wait(1)
                            Tween(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part6.CFrame)
                            wait(1)
                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part6.ClickDetector)
                            wait(1)
                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part6.ClickDetector)
                            wait(1)
                            Tween(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part8.CFrame)
                            wait(1)
                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part8.ClickDetector)
                            wait(1)
                            Tween(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part10.CFrame)
                            wait(1)
                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part10.ClickDetector)
                            wait(1)
                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part10.ClickDetector)
                            wait(1)
                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part10.ClickDetector)
                        else
                            Quest3 = true
                        end
                    else
                        if game:GetService('Workspace').NPCs:FindFirstChild('Ghost') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                                'GuitarPuzzleProgress',
                                'Ghost',
                            }))
                        end
                        if game.Workspace.Enemies:FindFirstChild('Living Zombie') then
                            local v717, v718, v719 = pairs(game.Workspace.Enemies:GetChildren())

                            while true do
                                local v720

                                v719, v720 = v717(v718, v719)

                                if v719 == nil then
                                    break
                                end
                                if v720:FindFirstChild('HumanoidRootPart') and (v720:FindFirstChild('Humanoid') and (v720.Humanoid.Health > 0 and v720.Name == 'Living Zombie')) then
                                    EquipTool(SelectWeapon)

                                    v720.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v720.HumanoidRootPart.Transparency = 1
                                    v720.Humanoid.JumpPower = 0
                                    v720.Humanoid.WalkSpeed = 0
                                    v720.HumanoidRootPart.CanCollide = false
                                    v720.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)

                                    Tween(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
                                    game:GetService('VirtualUser'):CaptureController()
                                    game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                                end
                            end
                        else
                            Tween(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
                        end
                    end
                else
                    Quest2 = true

                    repeat
                        wait()
                        Tween(CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875))
                    until (CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_SkullGuitar

                    wait(1)
                    fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Placard7.Left.ClickDetector)
                    wait(1)
                    fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Placard6.Left.ClickDetector)
                    wait(1)
                    fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Placard5.Left.ClickDetector)
                    wait(1)
                    fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Placard4.Right.ClickDetector)
                    wait(1)
                    fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Placard3.Left.ClickDetector)
                    wait(1)
                    fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Placard2.Right.ClickDetector)
                    wait(1)
                    fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Placard1.Right.ClickDetector)
                    wait(1)
                end
            end
        end)
    end
end)
v37.ITM:AddToggle('ToggleAutoBuddy', {
    Title = 'Buddy Sword',
    Description = '',
    Default = false,
}):OnChanged(function(p721)
    _G.Auto_Buddy = p721
end)
_Options.ToggleAutoBuddy:SetValue(false)

local u722 = CFrame.new(-731.2034301757813, 381.5658874511719, -11198.4951171875)

spawn(function()
    while wait() do
        if _G.Auto_Buddy then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Cake Queen') then
                    local v723, v724, v725 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v726

                        v725, v726 = v723(v724, v725)

                        if v725 == nil then
                            break
                        end
                        if v726.Name == 'Cake Queen' and (v726:FindFirstChild('Humanoid') and (v726:FindFirstChild('HumanoidRootPart') and v726.Humanoid.Health > 0)) then
                            repeat
                                task.wait(_G.Fast_Delay)
                                AutoHaki()
                                EquipTool(SelectWeapon)

                                v726.HumanoidRootPart.CanCollide = false
                                v726.Humanoid.WalkSpeed = 0
                                v726.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                Tween(v726.HumanoidRootPart.CFrame * Pos)
                                AttackNoCoolDown()
                            until not _G.Auto_Buddy or (not v726.Parent or v726.Humanoid.Health <= 0)
                        end
                    end
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - u722.Position).Magnitude < 1500 then
                    Tween(u722)
                end

                Tween(CFrame.new(-731.2034301757813, 381.5658874511719, -11198.4951171875))

                if game:GetService('ReplicatedStorage'):FindFirstChild('Cake Queen') then
                    Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Cake Queen').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                end
            end)
        end
    end
end)
v37.ITM:AddToggle('ToggleAutoDualKatana', {
    Title = 'Dual Swords',
    Description = '',
    Default = false,
}):OnChanged(function(p727)
    _G.Auto_DualKatana = p727
end)
_Options.ToggleAutoDualKatana:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_DualKatana then
                if game.Players.LocalPlayer.Character:FindFirstChild('Tushita') or (game.Players.LocalPlayer.Backpack:FindFirstChild('Tushita') or (game.Players.LocalPlayer.Character:FindFirstChild('Yama') or game.Players.LocalPlayer.Backpack:FindFirstChild('Yama'))) then
                    if game.Players.LocalPlayer.Character:FindFirstChild('Tushita') or game.Players.LocalPlayer.Backpack:FindFirstChild('Tushita') then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild('Tushita') then
                            EquipTool('Tushita')
                        end
                    elseif (game.Players.LocalPlayer.Character:FindFirstChild('Yama') or game.Players.LocalPlayer.Backpack:FindFirstChild('Yama')) and game.Players.LocalPlayer.Backpack:FindFirstChild('Yama') then
                        EquipTool('Yama')
                    end
                else
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('LoadItem', 'Tushita')
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_DualKatana then
                if GetMaterial('Alucard Fragment') ~= 0 then
                    if GetMaterial('Alucard Fragment') ~= 1 then
                        if GetMaterial('Alucard Fragment') ~= 2 then
                            if GetMaterial('Alucard Fragment') ~= 3 then
                                if GetMaterial('Alucard Fragment') ~= 4 then
                                    if GetMaterial('Alucard Fragment') ~= 5 then
                                        if GetMaterial('Alucard Fragment') == 6 then
                                            if game:GetService('Workspace').Enemies:FindFirstChild('Cursed Skeleton Boss [Lv. 2025] [Boss]') or game:GetService('Workspace').ReplicatedStorage:FindFirstChild('Cursed Skeleton Boss [Lv. 2025] [Boss]') then
                                                Auto_Quest_Yama_1 = false
                                                Auto_Quest_Yama_2 = false
                                                Auto_Quest_Yama_3 = false
                                                Auto_Quest_Tushita_1 = false
                                                Auto_Quest_Tushita_2 = false
                                                Auto_Quest_Tushita_3 = false

                                                if game:GetService('Workspace').Enemies:FindFirstChild('Cursed Skeleton Boss [Lv. 2025] [Boss]') or game:GetService('Workspace').Enemies:FindFirstChild('Cursed Skeleton [Lv. 2200]') then
                                                    local v728, v729, v730 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                                    while true do
                                                        local v731

                                                        v730, v731 = v728(v729, v730)

                                                        if v730 == nil then
                                                            break
                                                        end
                                                        if (v731.Name == 'Cursed Skeleton Boss' or v731.Name == 'Cursed Skeleton') and v731.Humanoid.Health > 0 then
                                                            EquipTool(Sword)
                                                            Tween(v731.HumanoidRootPart.CFrame * pos)

                                                            v731.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                            v731.HumanoidRootPart.Transparency = 1
                                                            v731.Humanoid.JumpPower = 0
                                                            v731.Humanoid.WalkSpeed = 0
                                                            v731.HumanoidRootPart.CanCollide = false
                                                            bringmob = true
                                                            FarmPos = v731.HumanoidRootPart.CFrame
                                                            MonFarm = v731.Name

                                                            AttackNoCoolDown()
                                                        end
                                                    end
                                                end
                                            elseif (CFrame.new(-12361.7060546875, 603.3547973632813, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 100 then
                                                Tween(CFrame.new(-12361.7060546875, 603.3547973632813, -6550.5341796875))
                                            else
                                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Good')
                                                wait(1)
                                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Evil')
                                                wait(1)
                                                Tween(CFrame.new(-12361.7060546875, 603.3547973632813, -6550.5341796875))
                                                wait(1.5)
                                                game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                                                wait(1.5)
                                                Tween(CFrame.new(-12253.5419921875, 598.8999633789063, -6546.8388671875))
                                            end
                                        end
                                    else
                                        Auto_Quest_Yama_1 = false
                                        Auto_Quest_Yama_2 = false
                                        Auto_Quest_Yama_3 = false
                                        Auto_Quest_Tushita_1 = false
                                        Auto_Quest_Tushita_2 = false
                                        Auto_Quest_Tushita_3 = true

                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Good')
                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Good')
                                    end
                                else
                                    Auto_Quest_Yama_1 = false
                                    Auto_Quest_Yama_2 = false
                                    Auto_Quest_Yama_3 = false
                                    Auto_Quest_Tushita_1 = false
                                    Auto_Quest_Tushita_2 = true
                                    Auto_Quest_Tushita_3 = false

                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Good')
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Good')
                                end
                            else
                                Auto_Quest_Yama_1 = false
                                Auto_Quest_Yama_2 = false
                                Auto_Quest_Yama_3 = false
                                Auto_Quest_Tushita_1 = true
                                Auto_Quest_Tushita_2 = false
                                Auto_Quest_Tushita_3 = false

                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Good')
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Good')
                            end
                        else
                            Auto_Quest_Yama_1 = false
                            Auto_Quest_Yama_2 = false
                            Auto_Quest_Yama_3 = true
                            Auto_Quest_Tushita_1 = false
                            Auto_Quest_Tushita_2 = false
                            Auto_Quest_Tushita_3 = false

                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Evil')
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Evil')
                        end
                    else
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = true
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false

                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Evil')
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Evil')
                    end
                else
                    Auto_Quest_Yama_1 = true
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = false

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Evil')
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Evil')
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Yama_1 then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Mythological Pirate') then
                    local v732, v733, v734 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v735

                        v734, v735 = v732(v733, v734)

                        if v734 == nil then
                            break
                        end
                        if v735.Name == 'Mythological Pirate' then
                            repeat
                                wait()
                                Tween(v735.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2))
                            until _G.Auto_DualKatana == false or Auto_Quest_Yama_1 == false

                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Evil')
                        end
                    end
                else
                    Tween(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875))
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if Auto_Quest_Yama_2 then
                local v736, v737, v738 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    local v739

                    v738, v739 = v736(v737, v738)

                    if v738 == nil then
                        break
                    end
                    if v739:FindFirstChild('HazeESP') then
                        v739.HazeESP.Size = UDim2.new(50, 50, 50, 50)
                        v739.HazeESP.MaxDistance = 'inf'
                    end
                end

                local v740, v741, v742 = pairs(game:GetService('ReplicatedStorage'):GetChildren())

                while true do
                    local v743

                    v742, v743 = v740(v741, v742)

                    if v742 == nil then
                        break
                    end
                    if v743:FindFirstChild('HazeESP') then
                        v743.HazeESP.Size = UDim2.new(50, 50, 50, 50)
                        v743.HazeESP.MaxDistance = 'inf'
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            local v744, v745, v746 = pairs(game:GetService('Workspace').Enemies:GetChildren())

            while true do
                local v747

                v746, v747 = v744(v745, v746)

                if v746 == nil then
                    break
                end
                if Auto_Quest_Yama_2 and (v747:FindFirstChild('HazeESP') and (v747.HumanoidRootPart.Position - FarmPossEsp.Position).magnitude <= 300) then
                    v747.HumanoidRootPart.CFrame = FarmPossEsp
                    v747.HumanoidRootPart.CanCollide = false
                    v747.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                    if not v747.HumanoidRootPart:FindFirstChild('BodyVelocity') then
                        local _BodyVelocity2 = Instance.new('BodyVelocity', v747.HumanoidRootPart)

                        _BodyVelocity2.MaxForce = Vector3.new(1, 1, 1) * math.huge
                        _BodyVelocity2.Velocity = Vector3.new(0, 0, 0)
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Yama_2 then
            pcall(function()
                local v749, v750, v751 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    while true do
                        local v752

                        v751, v752 = v749(v750, v751)

                        if v751 == nil then
                            return
                        end
                        if v752:FindFirstChild('HazeESP') then
                            break
                        end

                        local v753, v754, v755 = pairs(game:GetService('ReplicatedStorage'):GetChildren())

                        while true do
                            local v756

                            v755, v756 = v753(v754, v755)

                            if v755 == nil then
                                break
                            end
                            if v756:FindFirstChild('HazeESP') then
                                if (v756.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
                                    Tween(v756.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                else
                                    Tween(v756.HumanoidRootPart.CFrameMon * CFrame.new(2, 20, 2))
                                end
                            end
                        end
                    end

                    if true then
                        wait()

                        if (v752.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
                            EquipTool(Sword)
                            Tween(v752.HumanoidRootPart.CFrame * Pos)

                            v752.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            v752.HumanoidRootPart.Transparency = 1
                            v752.Humanoid.JumpPower = 0
                            v752.Humanoid.WalkSpeed = 0
                            v752.HumanoidRootPart.CanCollide = false
                            FarmPos = v752.HumanoidRootPart.CFrame
                            MonFarm = v752.Name

                            AttackNoCoolDown()

                            if v752.Humanoid.Health <= 0 and v752.Humanoid:FindFirstChild('Animator') then
                                v752.Humanoid.Animator:Destroy()
                            end
                        else
                            Tween(v752.HumanoidRootPart.CFrame * Pos)
                        end
                    end
                    if _G.Auto_DualKatana ~= false and (Auto_Quest_Yama_2 ~= false and (v752.Parent and (v752.Humanoid.Health > 0 and v752:FindFirstChild('HazeESP')))) then
                        break
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Yama_3 then
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild('Hallow Essence') then
                    Tween(game:GetService('Workspace').Map['Haunted Castle'].Summoner.Detection.CFrame)
                end
                if not game:GetService('Workspace').Map:FindFirstChild('HellDimension') then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Soul Reaper') or game.ReplicatedStorage:FindFirstChild('Soul Reaper [Lv. 2100] [Raid Boss]') then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Soul Reaper') then
                            local v757, v758, v759 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v760

                                v759, v760 = v757(v758, v759)

                                if v759 == nil then
                                    break
                                end
                                if v760.Name == 'Soul Reaper' and v760.Humanoid.Health > 0 then
                                    repeat
                                        wait()
                                        Tween(v760.HumanoidRootPart.CFrame * Pos)
                                    until _G.Auto_DualKatana == false or Auto_Quest_Yama_3 == false or game:GetService('Workspace').Map:FindFirstChild('HellDimension')
                                end
                            end
                        else
                            Tween(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))
                        end
                    else
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Bones', 'Buy', 1, 1)
                    end

                    return
                end

                wait()

                if not (game:GetService('Workspace').Enemies:FindFirstChild('Cursed Skeleton [Lv. 2200]') or (game:GetService('Workspace').Enemies:FindFirstChild('Cursed Skeleton [Lv. 2200] [Boss]') or game:GetService('Workspace').Enemies:FindFirstChild("Hell's Messenger [Lv. 2200] [Boss]"))) then
                    wait(5)
                    Tween(game:GetService('Workspace').Map.HellDimension.Torch1.CFrame)
                    wait(1.5)
                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                    wait(1.5)
                    Tweem(game:GetService('Workspace').Map.HellDimension.Torch2.CFrame)
                    wait(1.5)
                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                    wait(1.5)
                    Tween(game:GetService('Workspace').Map.HellDimension.Torch3.CFrame)
                    wait(1.5)
                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                    wait(1.5)
                    Tween(game:GetService('Workspace').Map.HellDimension.Exit.CFrame)
                end

                local v761, v762, v763 = pairs(game:GetService('Workspace').Enemies:GetChildren())
                local v764

                v763, v764 = v761(v762, v763)

                if v763 == nil then
                end
                if v764.Name ~= 'Cursed Skeleton' and (v764.Name ~= 'Cursed Skeleton' and v764.Name ~= "Hell's Messenger") or v764.Humanoid.Health <= 0 then
                end

                wait()
                EquipTool(Sword)
                Tween(v764.HumanoidRootPart.CFrame * Pos)

                v764.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                v764.HumanoidRootPart.Transparency = 1
                v764.Humanoid.JumpPower = 0
                v764.Humanoid.WalkSpeed = 0
                v764.HumanoidRootPart.CanCollide = false
                FarmPos = v764.HumanoidRootPart.CFrame
                MonFarm = v764.Name

                AttackNoCoolDown()

                if v764.Humanoid.Health <= 0 and v764.Humanoid:FindFirstChild('Animator') then
                    v764.Humanoid.Animator:Destroy()
                end
                if v764.Humanoid.Health <= 0 or (not v764.Parent or Auto_Quest_Yama_3 == false) then
                else
                end
                if _G.Auto_DualKatana == false or (Auto_Quest_Yama_3 == false or GetMaterial('Alucard Fragment') == 3) then
                end
                if true then
                else
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Tushita_1 then
            Tween(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125))
            wait(5)
            Tween(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625))
            wait(5)
            Tween(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875))
        end
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Tushita_2 then
            pcall(function()
                if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
                    Tween(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))

                    return
                end

                local v765, v766, v767 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                wait()
                EquipTool(Sword)
                Tween(v768.HumanoidRootPart.CFrame * Pos)

                v768.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                v768.HumanoidRootPart.Transparency = 1
                v768.Humanoid.JumpPower = 0
                v768.Humanoid.WalkSpeed = 0
                v768.HumanoidRootPart.CanCollide = false
                FarmPos = v768.HumanoidRootPart.CFrame
                MonFarm = v768.Name

                AttackNoCoolDown()

                if v768.Humanoid.Health <= 0 and v768.Humanoid:FindFirstChild('Animator') then
                    v768.Humanoid.Animator:Destroy()
                end
                if v768.Humanoid.Health > 0 and (v768.Parent and Auto_Quest_Tushita_2 ~= false) then
                end

                local v768

                v767, v768 = v765(v766, v767)

                if v767 == nil then
                end
                if Auto_Quest_Tushita_2 and (v768:FindFirstChild('HumanoidRootPart') and (v768:FindFirstChild('Humanoid') and (v768.Humanoid.Health > 0 and (v768.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000))) then
                else
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Tushita_3 then
            pcall(function()
                if not (game:GetService('Workspace').Enemies:FindFirstChild('Cake Queen') or game.ReplicatedStorage:FindFirstChild('Cake Queen [Lv. 2175] [Boss]')) then
                end
                if not game:GetService('Workspace').Enemies:FindFirstChild('Cake Queen') then
                    Tween(CFrame.new(-709.3132934570313, 381.6005859375, -11011.396484375))
                end

                local v769, v770, v771 = pairs(game:GetService('Workspace').Enemies:GetChildren())
                local v772

                v771, v772 = v769(v770, v771)

                if v771 == nil then
                end
                if v772.Name ~= 'Cake Queen' or v772.Humanoid.Health <= 0 then
                end

                while true do
                    wait()
                    EquipTool(Sword)
                    Tween(v772.HumanoidRootPart.CFrame * Pos)

                    v772.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                    v772.HumanoidRootPart.Transparency = 1
                    v772.Humanoid.JumpPower = 0
                    v772.Humanoid.WalkSpeed = 0
                    v772.HumanoidRootPart.CanCollide = false
                    FarmPos = v772.HumanoidRootPart.CFrame
                    MonFarm = v772.Name

                    AttackNoCoolDown()

                    if v772.Humanoid.Health <= 0 and v772.Humanoid:FindFirstChild('Animator') then
                        v772.Humanoid.Animator:Destroy()
                    end
                    if _G.Auto_DualKatana == false or Auto_Quest_Tushita_3 == false or game:GetService('Workspace').Map:FindFirstChild('HeavenlyDimension') then
                    end
                end

                local v773, v774 = v775(v776, v773)

                if v773 == nil then
                end
                if v774.Name ~= 'Cursed Skeleton' and (v774.Name ~= 'Cursed Skeleton' and v774.Name ~= "Heaven's Guardian") or v774.Humanoid.Health <= 0 then
                end

                wait()
                EquipTool(Sword)
                Tween(v774.HumanoidRootPart.CFrame * Pos)

                v774.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                v774.HumanoidRootPart.Transparency = 1
                v774.Humanoid.JumpPower = 0
                v774.Humanoid.WalkSpeed = 0
                v774.HumanoidRootPart.CanCollide = false
                FarmPos = v774.HumanoidRootPart.CFrame
                MonFarm = v774.Name

                AttackNoCoolDown()

                if v774.Humanoid.Health <= 0 and v774.Humanoid:FindFirstChild('Animator') then
                    v774.Humanoid.Animator:Destroy()
                end
                if v774.Humanoid.Health <= 0 or (not v774.Parent or Auto_Quest_Tushita_3 == false) then
                else
                end
                if not _G.Auto_DualKatana or (not Auto_Quest_Tushita_3 or GetMaterial('Alucard Fragment') == 6) then
                end
                if true then
                else
                end

                wait()

                if not (game:GetService('Workspace').Enemies:FindFirstChild('Cursed Skeleton [Lv. 2200]') or (game:GetService('Workspace').Enemies:FindFirstChild('Cursed Skeleton [Lv. 2200] [Boss]') or game:GetService('Workspace').Enemies:FindFirstChild("Heaven's Guardian [Lv. 2200] [Boss]"))) then
                    wait(5)
                    Tween(game:GetService('Workspace').Map.HeavenlyDimension.Torch1.CFrame)
                    wait(1.5)
                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                    wait(1.5)
                    Tween(game:GetService('Workspace').Map.HeavenlyDimension.Torch2.CFrame)
                    wait(1.5)
                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                    wait(1.5)
                    Tween(game:GetService('Workspace').Map.HeavenlyDimension.Torch3.CFrame)
                    wait(1.5)
                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                    wait(1.5)
                    Tween(game:GetService('Workspace').Map.HeavenlyDimension.Exit.CFrame)
                end

                local v775, v776

                v775, v776, v773 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                if not game:GetService('Workspace').Map:FindFirstChild('HeavenlyDimension') then
                    return
                end
            end)
        end
    end
end)

if Sea2 then
    v37.ITM:AddToggle('ToggleFactory', {
        Title = 'Hunt Factory',
        Description = '',
        Default = false,
    }):OnChanged(function(p777)
        _G.Factory = p777
    end)
    _Options.ToggleFactory:SetValue(false)
    spawn(function()
        while true do
            repeat
                if not wait() then
                    return
                end
            until _G.Factory

            if game.Workspace.Enemies:FindFirstChild('Core') then
                break
            end
            if game.ReplicatedStorage:FindFirstChild('Core') then
                Tween(CFrame.new(448.46756, 199.356781, -441.389252))
                wait()

                if _G.Factory and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(448.46756, 199.356781, -441.389252)).Magnitude > 10 then
                    break
                end
            end
        end

        local v778, v779, v780 = pairs(game.Workspace.Enemies:GetChildren())

        if v781.Name == 'Core' and v781.Humanoid.Health > 0 then
        end

        local v781

        v780, v781 = v778(v779, v780)

        if v780 ~= nil then
        end

        wait(_G.Fast_Delay)
        AttackNoCoolDown()

        repeat
            Tween(CFrame.new(448.46756, 199.356781, -441.389252))
            wait()
        until not _G.Factory or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(448.46756, 199.356781, -441.389252)).Magnitude <= 10

        EquipTool(SelectWeapon)
        AutoHaki()
        Tween(v781.HumanoidRootPart.CFrame * Pos)

        v781.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
        v781.HumanoidRootPart.Transparency = 1
        v781.Humanoid.JumpPower = 0
        v781.Humanoid.WalkSpeed = 0
        v781.HumanoidRootPart.CanCollide = false
        FarmPos = v781.HumanoidRootPart.CFrame
        MonFarm = v781.Name

        if v781.Parent and (v781.Humanoid.Health > 0 and _G.Factory ~= false) then
        end
    end)
end

v37.ITM:AddToggle('ToggleAutoFarmSwan', {
    Title = 'Hunt Swan',
    Description = '',
    Default = false,
}):OnChanged(function(p782)
    _G.Auto_FarmSwan = p782
end)
_Options.ToggleAutoFarmSwan:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoFarmSwan then
                if game:GetService('Workspace').Enemies:FindFirstChild('Don Swan') then
                    local v783, v784, v785 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local u786

                        v785, u786 = v783(v784, v785)

                        if v785 == nil then
                            break
                        end
                        if u786.Name == 'Don Swan' and (u786.Humanoid.Health > 0 and (u786:IsA('Model') and (u786:FindFirstChild('Humanoid') and u786:FindFirstChild('HumanoidRootPart')))) then
                            repeat
                                task.wait()
                                pcall(function()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    u786.HumanoidRootPart.CanCollide = false
                                    u786.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                    Tween(u786.HumanoidRootPart.CFrame * Pos)
                                    AttackNoCoolDown()
                                end)
                            until _G.AutoFarmSwan == false or u786.Humanoid.Health <= 0
                        end
                    end
                else
                    repeat
                        task.wait()
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(2284.912109375, 15.537666320801, 905.48291015625))
                    until (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 or _G.AutoFarmSwan == false
                end
            end
        end
    end)
end)
v37.ITM:AddToggle('ToggleAutoRengoku', {
    Title = 'Rengoku',
    Description = '',
    Default = false,
}):OnChanged(function(p787)
    _G.Auto_Regoku = p787
end)
_Options.ToggleAutoRengoku:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if _G.Auto_Regoku then
                if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Hidden Key') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Hidden Key') then
                    EquipTool('Hidden Key')
                    Tween(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                elseif game:GetService('Workspace').Enemies:FindFirstChild('Snow Lurker') or game:GetService('Workspace').Enemies:FindFirstChild('Arctic Warrior') then
                    local v788, v789, v790 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v791

                        v790, v791 = v788(v789, v790)

                        if v790 == nil then
                            break
                        end
                        if (v791.Name == 'Snow Lurker' or v791.Name == 'Arctic Warrior') and v791.Humanoid.Health > 0 then
                            repeat
                                task.wait(_G.Fast_Delay)
                                EquipTool(SelectWeapon)
                                AutoHaki()

                                v791.HumanoidRootPart.CanCollide = false
                                v791.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                FarmPos = v791.HumanoidRootPart.CFrame
                                MonFarm = v791.Name

                                Tween(v791.HumanoidRootPart.CFrame * Pos)
                                AttackNoCoolDown()

                                bringmob = true
                            until game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Hidden Key') or (_G.Auto_Regoku == false or (not v791.Parent or v791.Humanoid.Health <= 0))

                            bringmob = false
                        end
                    end
                else
                    bringmob = false

                    Tween(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                end
            end
        end
    end)
end)

if Sea2 or Sea3 then
    v37.ITM:AddToggle('ToggleHakiColor', {
        Title = 'Buy Haki Color',
        Description = '',
        Default = false,
    }):OnChanged(function(p792)
        _G.Auto_Buy_Enchancement = p792
    end)
    _Options.ToggleHakiColor:SetValue(false)
    spawn(function()
        while wait() do
            if _G.Auto_Buy_Enchancement then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'ColorsDealer',
                    '2',
                }))
            end
        end
    end)
end
if Sea2 then
    v37.Main:AddToggle('ToggleSwordLengend', {
        Title = 'Buy Legendary Sword',
        Description = '',
        Default = false,
    }):OnChanged(function(p793)
        _G.BuyLengendSword = p793
    end)
    _Options.ToggleSwordLengend:SetValue(false)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.BuyLengendSword or Triple_A then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LegendarySwordDealer',
                        '2',
                    }))
                else
                    wait()
                end
            end)
        end
    end)
end
if Sea2 then
    v37.Main:AddToggle('ToggleEvoRace', {
        Title = 'Upgrade Race V2',
        Description = '',
        Default = false,
    }):OnChanged(function(p794)
        _G.AutoEvoRace = p794
    end)
    _Options.ToggleEvoRace:SetValue(false)
    spawn(function()
        pcall(function()
            while wait(0.1) do
                if _G.AutoEvoRace and not game:GetService('Players').LocalPlayer.Data.Race:FindFirstChild('Evolved') then
                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '1') ~= 0 then
                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '1') ~= 1 then
                            if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '1') == 2 then
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '3')
                            end
                        else
                            pcall(function()
                                if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flower 1') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Flower 1') then
                                    if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flower 2') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Flower 2') then
                                        if not (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flower 3') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Flower 3')) then
                                            if game:GetService('Workspace').Enemies:FindFirstChild('Zombie') then
                                                local v795, v796, v797 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                                while true do
                                                    local v798

                                                    v797, v798 = v795(v796, v797)

                                                    if v797 == nil then
                                                        break
                                                    end
                                                    if v798.Name == 'Zombie' then
                                                        repeat
                                                            task.wait(_G.Fast_Delay)
                                                            AutoHaki()
                                                            EquipTool(SelectWeapon)
                                                            Tween(v798.HumanoidRootPart.CFrame * Pos)

                                                            v798.HumanoidRootPart.CanCollide = false
                                                            v798.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

                                                            AttackNoCoolDown()

                                                            FarmPos = v798.HumanoidRootPart.CFrame
                                                            MonFarm = v798.Name
                                                            bringmob = true
                                                        until game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flower 3') or (not v798.Parent or (v798.Humanoid.Health <= 0 or _G.AutoEvoRace == false))

                                                        bringmob = false
                                                    end
                                                end
                                            else
                                                Tween(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234))
                                            end
                                        end
                                    else
                                        Tween(game:GetService('Workspace').Flower2.CFrame)
                                    end
                                else
                                    Tween(game:GetService('Workspace').Flower1.CFrame)
                                end
                            end)
                        end
                    else
                        Tween(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.390141e-8, -0.68292886, 3.5996322e-8, 1, 5.5066703e-8, 0.68292886, 1.5642466999999998e-8, -0.730484903))

                        if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            wait(1.3)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '2')
                        end
                    end
                end
            end
        end)
    end)
end

v37.Setting:AddToggle('ToggleAutoT', {
    Title = 'Enable Race V3',
    Description = '',
    Default = false,
}):OnChanged(function(p799)
    _G.AutoT = p799
end)
_Options.ToggleAutoT:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoT then
                game:GetService('ReplicatedStorage').Remotes.CommE:FireServer('ActivateAbility')
            end
        end)
    end
end)
v37.Setting:AddToggle('ToggleAutoY', {
    Title = 'Enable Race V4',
    Description = '',
    Default = false,
}):OnChanged(function(p800)
    _G.AutoY = p800
end)
_Options.ToggleAutoY:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoY then
                game:GetService('VirtualInputManager'):SendKeyEvent(true, 'Y', false, game)
                wait()
                game:GetService('VirtualInputManager'):SendKeyEvent(false, 'Y', false, game)
            end
        end)
    end
end)
v37.Setting:AddToggle('ToggleAutoKen', {
    Title = 'Enable Observation Haki',
    Description = '',
    Default = false,
}):OnChanged(function(p801)
    _G.AutoKen = p801

    if p801 then
        game:GetService('ReplicatedStorage').Remotes.CommE:FireServer('Ken', true)
    else
        game:GetService('ReplicatedStorage').Remotes.CommE:FireServer('Ken', false)
    end
end)
_Options.ToggleAutoKen:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoKen then
                game:GetService('ReplicatedStorage').Remotes.CommE:FireServer('Ken', true)
            end
        end)
    end
end)
v37.Setting:AddToggle('ToggleSaveSpawn', {
    Title = 'Save Respawn Point',
    Description = '',
    Default = false,
}):OnChanged(function(p802)
    _G.SaveSpawn = p802

    if p802 then
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'SetSpawnPoint',
        }))
    end
end)
_Options.ToggleSaveSpawn:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.SaveSpawn then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'SetSpawnPoint',
                }))
            end
        end)
    end
end)
pcall(function()
    require(game.ReplicatedStorage.Util.CameraShaker):Stop()
end)
v37.Setting:AddToggle('ToggleBringMob', {
    Title = 'Gather Mobs',
    Description = '',
    Default = true,
}):OnChanged(function(p803)
    _G.BringMob = p803
end)
_Options.ToggleBringMob:SetValue(true)
spawn(function()
    while wait() do
        pcall(function()
            local v804, v805, v806 = pairs(game:GetService('Workspace').Enemies:GetChildren())

            while true do
                local v807

                v806, v807 = v804(v805, v806)

                if v806 == nil then
                    break
                end
                if _G.BringMob and (bringmob and (v807.Name == MonFarm and (v807:FindFirstChild('Humanoid') and v807.Humanoid.Health > 0))) then
                    if v807.Name ~= 'Factory Staff' then
                        if v807.Name == MonFarm and (v807.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 1000000000 then
                            v807.HumanoidRootPart.CFrame = FarmPos
                            v807.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            v807.HumanoidRootPart.Transparency = 1
                            v807.Humanoid.JumpPower = 0
                            v807.Humanoid.WalkSpeed = 0

                            if v807.Humanoid:FindFirstChild('Animator') then
                                v807.Humanoid.Animator:Destroy()
                            end

                            v807.HumanoidRootPart.CanCollide = false
                            v807.Head.CanCollide = false

                            v807.Humanoid:ChangeState(11)
                            v807.Humanoid:ChangeState(14)
                            sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                        end
                    elseif (v807.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 1000000000 then
                        v807.Head.CanCollide = false
                        v807.HumanoidRootPart.CanCollide = false
                        v807.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                        v807.HumanoidRootPart.CFrame = FarmPos

                        if v807.Humanoid:FindFirstChild('Animator') then
                            v807.Humanoid.Animator:Destroy()
                        end

                        sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                    end
                end
            end
        end)
    end
end)
v37.Setting:AddToggle('ToggleRemoveNotify', {
    Title = 'Clear Notifications',
    Description = '',
    Default = false,
}):OnChanged(function(p808)
    RemoveNotify = p808
end)
_Options.ToggleRemoveNotify:SetValue(false)
spawn(function()
    while wait() do
        if RemoveNotify then
            game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
        else
            game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
        end
    end
end)
v37.Setting:AddToggle('ToggleWhite', {
    Title = 'White Screen',
    Description = '',
    Default = false,
}):OnChanged(function(p809)
    _G.WhiteScreen = p809

    if _G.WhiteScreen ~= true then
        if _G.WhiteScreen == false then
            game:GetService('RunService'):Set3dRenderingEnabled(true)
        end
    else
        game:GetService('RunService'):Set3dRenderingEnabled(false)
    end
end)
_Options.ToggleWhite:SetValue(false)
v37.Setting:AddSection('Mastery Skills')
v37.Setting:AddToggle('ToggleZ', {
    Title = 'Z Skill',
    Description = '',
    Default = true,
}):OnChanged(function(p810)
    SkillZ = p810
end)
_Options.ToggleZ:SetValue(true)
v37.Setting:AddToggle('ToggleX', {
    Title = 'X Skill',
    Description = '',
    Default = true,
}):OnChanged(function(p811)
    SkillX = p811
end)
_Options.ToggleX:SetValue(true)
v37.Setting:AddToggle('ToggleC', {
    Title = 'C Skill',
    Description = '',
    Default = true,
}):OnChanged(function(p812)
    SkillC = p812
end)
_Options.ToggleC:SetValue(true)
v37.Setting:AddToggle('ToggleV', {
    Title = 'V Skill',
    Description = '',
    Default = true,
}):OnChanged(function(p813)
    SkillV = p813
end)
_Options.ToggleV:SetValue(true)
v37.Setting:AddToggle('ToggleF', {
    Title = 'F Skill',
    Description = '',
    Default = false,
}):OnChanged(function(p814)
    SkillF = p814
end)
_Options.ToggleF:SetValue(true)

local _Status = v37.Status
local v816 = _Status
local _AddParagraph = _Status.AddParagraph

-- Safe reader so a missing Data field never crashes the paragraph build
local function _safeVal(fn, fallback)
    local ok, v = pcall(fn)
    return (ok and v ~= nil) and tostring(v) or (fallback or '?')
end

local _lp2 = game:GetService('Players').LocalPlayer
local v818 = {
    Title = 'Info',
    Content = '━━━━━━━━━━━━━━━━━━━━━\n'
        .. 'Name: ' .. _safeVal(function() return _lp2.DisplayName end) .. ' (@' .. _safeVal(function() return _lp2.Name end) .. ')\n'
        .. 'Level: ' .. _safeVal(function() return _lp2.Data.Level.Value end) .. '\n'
        .. 'Beli: ' .. _safeVal(function() return _lp2.Data.Beli.Value end) .. '\n'
        .. 'Fragments: ' .. _safeVal(function() return _lp2.Data.Fragments.Value end) .. '\n'
        .. 'Bounty: ' .. _safeVal(function() return _lp2.leaderstats['Bounty/Honor'].Value end) .. '\n'
        .. 'Health: ' .. _safeVal(function() return _lp2.Character.Humanoid.Health end) .. '/' .. _safeVal(function() return _lp2.Character.Humanoid.MaxHealth end) .. '\n'
        .. 'Energy: ' .. _safeVal(function() return _lp2.Character.Energy.Value end) .. '/' .. _safeVal(function() return _lp2.Character.Energy.MaxValue end) .. '\n'
        .. 'Race: ' .. _safeVal(function() return _lp2.Data.Race.Value end) .. '\n'
        .. 'Fruit: ' .. _safeVal(function() return _lp2.Data.DevilFruit.Value end) .. '\n'
        .. '━━━━━━━━━━━━━━━━━━━━━',
}

_AddParagraph(v816, v818)

local u819 = v37.Status:AddParagraph({
    Title = 'Time',
    Content = '',
})

local function u829()
    local _t = os.date('*t')
    local v821 = _t.hour % 24
    local v822 = v821 < 12 and 'AM' or 'PM'
    local __02i02i02is = string.format('%02i:%02i:%02i %s', (v821 - 1) % 12 + 1, _t.min, _t.sec, v822)
    local __02d02d04d = string.format('%02d/%02d/%04d', _t.day, _t.month, _t.year)
    local _LocalizationService = game:GetService('LocalizationService')
    local _LocalPlayer3 = game:GetService('Players').LocalPlayer
    local _ = _LocalPlayer3.Name
    local v827, v828 = pcall(function()
        return _LocalizationService:GetCountryRegionForPlayerAsync(_LocalPlayer3)
    end)

    u819:SetDesc(__02d02d04d .. '-' .. __02i02i02is .. ' [ ' .. (not v827 and 'Unknown' or v828) .. ' ]')
end

spawn(function()
    while true do
        u829()
        game:GetService('RunService').RenderStepped:Wait()
    end
end)

local u830 = v37.Status:AddParagraph({
    Title = 'Server Time',
    Content = '',
})

local function u835()
    local v831 = math.floor(workspace.DistributedGameTime + 0.5)
    local v832 = math.floor(v831 / 3600) % 24
    local v833 = math.floor(v831 / 60) % 60
    local v834 = v831 % 60

    u830:SetDesc(string.format('%02d Hours-%02d Minutes-%02d Seconds', v832, v833, v834))
end

spawn(function()
    while task.wait() do
        pcall(u835)
    end
end)

local u836 = v37.Status:AddParagraph({
    Title = 'Leviathan Island',
    Content = '',
})

spawn(function()
    pcall(function()
        while wait() do
            if game:GetService('Workspace').Map:FindFirstChild('FrozenDimension') then
                u836:SetDesc('✅')
            else
                u836:SetDesc('❌')
            end
        end
    end)
end)
v37.Status:AddInput('Input', {
    Title = 'Job ID',
    Default = '',
    Placeholder = 'Paste Job ID Here',
    Numeric = false,
    Finished = false,
    Callback = function(p837)
        _G.Job = p837
    end,
})
v37.Status:AddButton({
    Title = 'Start Join Job ID',
    Description = '',
    Callback = function()
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.placeId, _G.Job, game.Players.LocalPlayer)
    end,
})
v37.Status:AddButton({
    Title = 'Copy Job ID',
    Description = '',
    Callback = function()
        setclipboard(tostring(game.JobId))
    end,
})
v37.Status:AddToggle('MyToggle', {
    Title = 'Spam Tham Gia Job ID',
    Default = false,
}):OnChanged(function(p838)
    _G.Join = p838
end)
spawn(function()
    while wait() do
        if _G.Join then
            game:GetService('TeleportService'):TeleportToPlaceInstance(game.placeId, _G.Job, game.Players.LocalPlayer)
        end
    end
end)
v37.Stats:AddToggle('ToggleMelee', {
    Title = 'Put Stats on Melee',
    Description = '',
    Default = false,
}):OnChanged(function(p839)
    _G.Auto_Stats_Melee = p839
end)
_Options.ToggleMelee:SetValue(false)
v37.Stats:AddToggle('ToggleDe', {
    Title = 'Put Stats on Health',
    Description = '',
    Default = false,
}):OnChanged(function(p840)
    _G.Auto_Stats_Defense = p840
end)
_Options.ToggleDe:SetValue(false)
v37.Stats:AddToggle('ToggleSword', {
    Title = 'Put Stats on Sword',
    Description = '',
    Default = false,
}):OnChanged(function(p841)
    _G.Auto_Stats_Sword = p841
end)
_Options.ToggleSword:SetValue(false)
v37.Stats:AddToggle('ToggleGun', {
    Title = 'Put Stats on Gun',
    Description = '',
    Default = false,
}):OnChanged(function(p842)
    _G.Auto_Stats_Gun = p842
end)
_Options.ToggleGun:SetValue(false)
v37.Stats:AddToggle('ToggleFruit', {
    Title = 'Upgrade Fruit',
    Description = '',
    Default = false,
}):OnChanged(function(p843)
    _G.Auto_Stats_Devil_Fruit = p843
end)
_Options.ToggleFruit:SetValue(false)
spawn(function()
    while wait() do
        if _G.Auto_Stats_Devil_Fruit then
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'AddPoint',
                'Demon Fruit',
                3,
            }))
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Auto_Stats_Gun then
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'AddPoint',
                'Gun',
                3,
            }))
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Auto_Stats_Sword then
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'AddPoint',
                'Sword',
                3,
            }))
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Auto_Stats_Defense then
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'AddPoint',
                'Defense',
                3,
            }))
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Auto_Stats_Melee then
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'AddPoint',
                'Melee',
                3,
            }))
        end
    end
end)

local v844, v845, v846 = pairs(game:GetService('Players'):GetChildren())
local u847 = u179
local u848 = {}

while true do
    local v849

    v846, v849 = v844(v845, v846)

    if v846 == nil then
        break
    end

    table.insert(u848, v849.Name)
end

local _SelectedPly = v37.Player:AddDropdown('SelectedPly', {
    Title = 'Select Player',
    Description = '',
    Values = u848,
    Multi = false,
    Default = 1,
})

_SelectedPly:SetValue(_G.SelectPly)
_SelectedPly:OnChanged(function(p851)
    _G.SelectPly = p851
end)
v37.Player:AddButton({
    Title = 'Refresh Players',
    Description = '',
    Callback = function()
        table.clear(u848)

        local v852, v853, v854 = pairs(game:GetService('Players'):GetChildren())

        while true do
            local v855

            v854, v855 = v852(v853, v854)

            if v854 == nil then
                break
            end

            table.insert(u848, v855.Name)
        end
    end,
})
v37.Player:AddToggle('ToggleTeleport', {
    Title = 'Fly To Player',
    Description = '',
    Default = false,
}):OnChanged(function(p856)
    _G.TeleportPly = p856

    if p856 == false then
        wait()
        AutoHaki()
        Tween2(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
    end
end)
_Options.ToggleTeleport:SetValue(false)
spawn(function()
    while wait() do
        if _G.TeleportPly then
            pcall(function()
                if game.Players:FindFirstChild(_G.SelectPly) then
                    Tween2(game.Players[_G.SelectPly].Character.HumanoidRootPart.CFrame)
                end
            end)
        end
    end
end)
v37.Player:AddSection('Others')
v37.Player:AddToggle('ToggleNoClip', {
    Title = 'Walk Through Walls',
    Description = '',
    Default = true,
}):OnChanged(function(p857)
    _G.LOf = p857
end)
_Options.ToggleNoClip:SetValue(true)
spawn(function()
    pcall(function()
        game:GetService('RunService').Stepped:Connect(function()
            if _G.LOf then
                local v858, v859, v860 = pairs(game.Players.LocalPlayer.Character:GetDescendants())

                while true do
                    local v861

                    v860, v861 = v858(v859, v860)

                    if v860 == nil then
                        break
                    end
                    if v861:IsA('BasePart') then
                        v861.CanCollide = false
                    end
                end
            end
        end)
    end)
end)
v37.Player:AddToggle('ToggleWalkonWater', {
    Title = 'Walk On Water',
    Description = '',
    Default = true,
}):OnChanged(function(p862)
    _G.WalkonWater = p862
end)
_Options.ToggleWalkonWater:SetValue(true)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.WalkonWater then
                game:GetService('Workspace').Map['WaterBase-Plane'].Size = Vector3.new(1000, 112, 1000)
            else
                game:GetService('Workspace').Map['WaterBase-Plane'].Size = Vector3.new(1000, 80, 1000)
            end
        end)
    end
end)
v37.Player:AddToggle('ToggleEnablePvp', {
    Title = 'Enable PVP',
    Description = '',
    Default = false,
}):OnChanged(function(p863)
    _G.EnabledPvP = p863
end)
_Options.ToggleEnablePvp:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if _G.EnabledPvP and game:GetService('Players').LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EnablePvp')
            end
        end
    end)
end)

local _ThGii = v37.Teleport:AddSection('World')

v37.Teleport:AddToggle('ToggleAutoSea2', {
    Title = 'Do Quest Sea 2',
    Description = '',
    Default = false,
}):OnChanged(function(p865)
    _G.Auto_Sea2 = p865
end)
_Options.ToggleAutoSea2:SetValue(false)
spawn(function()
    while wait() do
        if _G.Auto_Sea2 then
            pcall(function()
                if game:GetService('Players').LocalPlayer.Data.Level.Value >= 700 and World1 then
                    if game:GetService('Workspace').Map.Ice.Door.CanCollide == false and game:GetService('Workspace').Map.Ice.Door.Transparency == 1 then
                        local v866 = CFrame.new(4849.29883, 5.65138149, 719.611877)

                        repeat
                            Tween(v866)
                            wait()
                        until (v866.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.Auto_Sea2 == false

                        wait(1.1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('DressrosaQuestProgress', 'Detective')
                        wait(0.5)
                        EquipTool('Key')

                        repeat
                            Tween(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            wait()
                        until (Vector3.new(1347.7124, 37.3751602, -1325.6488) - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.Auto_Sea2 == false

                        wait(0.5)
                    end
                    if game:GetService('Workspace').Map.Ice.Door.CanCollide ~= false or game:GetService('Workspace').Map.Ice.Door.Transparency ~= 1 then
                    end
                    if game:GetService('Workspace').Enemies:FindFirstChild('Ice Admiral') then
                        local v867, v868, v869 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v870

                            v869, v870 = v867(v868, v869)

                            if v869 == nil then
                                break
                            end
                            if v870.Name == 'Ice Admiral' then
                                if not v870.Humanoid.Health > 0 then
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelDressrosa')
                                elseif v870:FindFirstChild('Humanoid') and (v870:FindFirstChild('HumanoidRootPart') and v870.Humanoid.Health > 0) then
                                    OldCFrameSecond = v870.HumanoidRootPart.CFrame

                                    task.wait(_G.Fast_Delay)
                                    AutoHaki()
                                    EquipTool(SelectWeapon)

                                    v870.HumanoidRootPart.CanCollide = false
                                    v870.Humanoid.WalkSpeed = 0
                                    v870.Head.CanCollide = false
                                    v870.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    v870.HumanoidRootPart.CFrame = OldCFrameSecond

                                    Tween(v870.HumanoidRootPart.CFrame * Pos)
                                    AttackNoCoolDown()
                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)

                                    if _G.Auto_Sea2 and (v870.Parent and v870.Humanoid.Health > 0) then
                                    end
                                end
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Ice Admiral') then
                        Tween(game:GetService('ReplicatedStorage'):FindFirstChild('Ice Admiral').HumanoidRootPart.CFrame * CFrame.new(5, 10, 7))
                    end
                end
            end)
        end
    end
end)
v37.Teleport:AddToggle('ToggleAutoSea3', {
    Title = 'Do Quest Sea 3',
    Description = '',
    Default = false,
}):OnChanged(function(p871)
    _G.Auto_Sea3 = p871
end)
_Options.ToggleAutoSea3:SetValue(false)
spawn(function()
    while wait() do
        if _G.AutoSea3 then
            pcall(function()
                if game:GetService('Players').LocalPlayer.Data.Level.Value >= 1500 and World2 then
                    _G.AutoLevel = false

                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ZQuestProgress', 'General') == 0 then
                        Tween(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))

                        if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            wait(1.5)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ZQuestProgress', 'Begin')
                        end

                        wait(1.8)

                        if game:GetService('Workspace').Enemies:FindFirstChild('rip_indra') then
                            local v872, v873, v874 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v875

                                v874, v875 = v872(v873, v874)

                                if v874 == nil then
                                    break
                                end
                                if v875.Name == 'rip_indra' then
                                    OldCFrameThird = v875.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait(_G.Fast_Delay)
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        Tween(v875.HumanoidRootPart.CFrame * Pos)

                                        v875.HumanoidRootPart.CFrame = OldCFrameThird
                                        v875.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                        v875.HumanoidRootPart.CanCollide = false
                                        v875.Humanoid.WalkSpeed = 0

                                        AttackNoCoolDown()
                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelZou')
                                    until _G.AutoSea3 == false or (v875.Humanoid.Health <= 0 or not v875.Parent)
                                end
                            end
                        elseif not game:GetService('Workspace').Enemies:FindFirstChild('rip_indra') and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                            Tween(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                        end
                    end
                end
            end)
        end
    end
end)
v37.Teleport:AddButton({
    Title = 'Sea 1',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelMain')
    end,
})
v37.Teleport:AddButton({
    Title = 'Sea 2',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelDressrosa')
    end,
})
v37.Teleport:AddButton({
    Title = 'Sea 3',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelZou')
    end,
})
v37.Teleport:AddSection('Island')

if Sea1 then
    IslandList = {
        'WindMill',
        'Marine',
        'Middle Town',
        'Jungle',
        'Pirate Village',
        'Desert',
        'Snow Island',
        'MarineFord',
        'Colosseum',
        'Sky Island 1',
        'Sky Island 2',
        'Sky Island 3',
        'Prison',
        'Magma Village',
        'Under Water Island',
        'Fountain City',
        'Shank Room',
        'Mob Island',
    }
elseif Sea2 then
    IslandList = {
        'The Cafe',
        'Frist Spot',
        'Dark Area',
        'Flamingo Mansion',
        'Flamingo Room',
        'Green Zone',
        'Factory',
        'Colossuim',
        'Zombie Island',
        'Two Snow Mountain',
        'Punk Hazard',
        'Cursed Ship',
        'Ice Castle',
        'Forgotten Island',
        'Ussop Island',
        'Mini Sky Island',
    }
elseif Sea3 then
    IslandList = {
        'Mansion',
        'Port Town',
        'Great Tree',
        'Castle On The Sea',
        'MiniSky',
        'Hydra Island',
        'Floating Turtle',
        'Haunted Castle',
        'Ice Cream Island',
        'Peanut Island',
        'Cake Island',
        'Cocoa Island',
        'Candy Island',
        'Tiki Outpost',
    }
end

local _DropdownIsland = v37.Teleport:AddDropdown('DropdownIsland', {
    Title = 'Select Island',
    Description = '',
    Values = IslandList,
    Multi = false,
    Default = 1,
})

_DropdownIsland:SetValue(_G.SelectIsland)
_DropdownIsland:OnChanged(function(p877)
    _G.SelectIsland = p877
end)
v37.Teleport:AddButton({
    Title = 'Fly To Island',
    Description = '',
    Callback = function()
        if _G.SelectIsland ~= 'WindMill' then
            if _G.SelectIsland ~= 'Marine' then
                if _G.SelectIsland ~= 'Middle Town' then
                    if _G.SelectIsland ~= 'Jungle' then
                        if _G.SelectIsland ~= 'Pirate Village' then
                            if _G.SelectIsland ~= 'Desert' then
                                if _G.SelectIsland ~= 'Snow Island' then
                                    if _G.SelectIsland ~= 'MarineFord' then
                                        if _G.SelectIsland ~= 'Colosseum' then
                                            if _G.SelectIsland ~= 'Sky Island 1' then
                                                if _G.SelectIsland ~= 'Sky Island 2' then
                                                    if _G.SelectIsland ~= 'Sky Island 3' then
                                                        if _G.SelectIsland ~= 'Prison' then
                                                            if _G.SelectIsland ~= 'Magma Village' then
                                                                if _G.SelectIsland ~= 'Under Water Island' then
                                                                    if _G.SelectIsland ~= 'Fountain City' then
                                                                        if _G.SelectIsland ~= 'Shank Room' then
                                                                            if _G.SelectIsland ~= 'Mob Island' then
                                                                                if _G.SelectIsland ~= 'The Cafe' then
                                                                                    if _G.SelectIsland ~= 'Frist Spot' then
                                                                                        if _G.SelectIsland ~= 'Dark Area' then
                                                                                            if _G.SelectIsland ~= 'Flamingo Mansion' then
                                                                                                if _G.SelectIsland ~= 'Flamingo Room' then
                                                                                                    if _G.SelectIsland ~= 'Green Zone' then
                                                                                                        if _G.SelectIsland ~= 'Factory' then
                                                                                                            if _G.SelectIsland ~= 'Colossuim' then
                                                                                                                if _G.SelectIsland ~= 'Zombie Island' then
                                                                                                                    if _G.SelectIsland ~= 'Two Snow Mountain' then
                                                                                                                        if _G.SelectIsland ~= 'Punk Hazard' then
                                                                                                                            if _G.SelectIsland ~= 'Cursed Ship' then
                                                                                                                                if _G.SelectIsland ~= 'Ice Castle' then
                                                                                                                                    if _G.SelectIsland ~= 'Forgotten Island' then
                                                                                                                                        if _G.SelectIsland ~= 'Ussop Island' then
                                                                                                                                            if _G.SelectIsland ~= 'Mini Sky Island' then
                                                                                                                                                if _G.SelectIsland ~= 'Great Tree' then
                                                                                                                                                    if _G.SelectIsland ~= 'Castle On The Sea' then
                                                                                                                                                        if _G.SelectIsland ~= 'MiniSky' then
                                                                                                                                                            if _G.SelectIsland ~= 'Port Town' then
                                                                                                                                                                if _G.SelectIsland ~= 'Hydra Island' then
                                                                                                                                                                    if _G.SelectIsland ~= 'Floating Turtle' then
                                                                                                                                                                        if _G.SelectIsland ~= 'Mansion' then
                                                                                                                                                                            if _G.SelectIsland ~= 'Castle On The Sea' then
                                                                                                                                                                                if _G.SelectIsland ~= 'Haunted Castle' then
                                                                                                                                                                                    if _G.SelectIsland ~= 'Ice Cream Island' then
                                                                                                                                                                                        if _G.SelectIsland ~= 'Peanut Island' then
                                                                                                                                                                                            if _G.SelectIsland ~= 'Cake Island' then
                                                                                                                                                                                                if _G.SelectIsland ~= 'Cocoa Island' then
                                                                                                                                                                                                    if _G.SelectIsland ~= 'Candy Island' then
                                                                                                                                                                                                        if _G.SelectIsland == 'Tiki Outpost' then
                                                                                                                                                                                                            Tween2(CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625))
                                                                                                                                                                                                        end
                                                                                                                                                                                                    else
                                                                                                                                                                                                        Tween2(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
                                                                                                                                                                                                    end
                                                                                                                                                                                                else
                                                                                                                                                                                                    Tween2(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
                                                                                                                                                                                                end
                                                                                                                                                                                            else
                                                                                                                                                                                                Tween2(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
                                                                                                                                                                                            end
                                                                                                                                                                                        else
                                                                                                                                                                                            Tween2(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
                                                                                                                                                                                        end
                                                                                                                                                                                    else
                                                                                                                                                                                        Tween2(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
                                                                                                                                                                                    end
                                                                                                                                                                                else
                                                                                                                                                                                    Tween2(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
                                                                                                                                                                                end
                                                                                                                                                                            else
                                                                                                                                                                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-5075.50927734375, 314.5155029296875, -3150.0224609375))
                                                                                                                                                                            end
                                                                                                                                                                        else
                                                                                                                                                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-12468.5380859375, 375.0094299316406, -7554.62548828125))
                                                                                                                                                                        end
                                                                                                                                                                    else
                                                                                                                                                                        Tween2(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
                                                                                                                                                                    end
                                                                                                                                                                else
                                                                                                                                                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(5661.5322265625, 1013.0907592773438, -334.9649963378906))
                                                                                                                                                                end
                                                                                                                                                            else
                                                                                                                                                                Tween2(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
                                                                                                                                                            end
                                                                                                                                                        else
                                                                                                                                                            Tween2(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                                                                                                                                                        end
                                                                                                                                                    else
                                                                                                                                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-5075.50927734375, 314.5155029296875, -3150.0224609375))
                                                                                                                                                    end
                                                                                                                                                else
                                                                                                                                                    Tween2(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
                                                                                                                                                end
                                                                                                                                            else
                                                                                                                                                Tween2(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
                                                                                                                                            end
                                                                                                                                        else
                                                                                                                                            Tween2(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                                                                                                                                        end
                                                                                                                                    else
                                                                                                                                        Tween2(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                                                                                                                                    end
                                                                                                                                else
                                                                                                                                    Tween2(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                                                                                                                                end
                                                                                                                            else
                                                                                                                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.40197753906, 125.05712890625, 32885.875))
                                                                                                                            end
                                                                                                                        else
                                                                                                                            Tween2(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
                                                                                                                        end
                                                                                                                    else
                                                                                                                        Tween2(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
                                                                                                                    end
                                                                                                                else
                                                                                                                    Tween2(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
                                                                                                                end
                                                                                                            else
                                                                                                                Tween2(CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                                                                                                            end
                                                                                                        else
                                                                                                            Tween2(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                                                                                                        end
                                                                                                    else
                                                                                                        Tween2(CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                                                                                                    end
                                                                                                else
                                                                                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(2284.912109375, 15.152034759521484, 905.48291015625))
                                                                                                end
                                                                                            else
                                                                                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-281.93707275390625, 306.130615234375, 609.280029296875))
                                                                                            end
                                                                                        else
                                                                                            Tween2(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                                                                                        end
                                                                                    else
                                                                                        Tween2(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                                                                                    end
                                                                                else
                                                                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-281.93707275390625, 306.130615234375, 609.280029296875))
                                                                                    wait()
                                                                                    Tween2(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                                                                                end
                                                                            else
                                                                                Tween2(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                                                                            end
                                                                        else
                                                                            Tween2(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
                                                                        end
                                                                    else
                                                                        Tween2(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                                                                    end
                                                                else
                                                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                                                end
                                                            else
                                                                Tween2(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                                                            end
                                                        else
                                                            Tween2(CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                                                        end
                                                    else
                                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                                                    end
                                                else
                                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-4607.82275, 872.54248, -1667.55688))
                                                end
                                            else
                                                Tween2(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                                            end
                                        else
                                            Tween2(CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                                        end
                                    else
                                        Tween2(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                                    end
                                else
                                    Tween2(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                                end
                            else
                                Tween2(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                            end
                        else
                            Tween2(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                        end
                    else
                        Tween2(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                    end
                else
                    Tween2(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                end
            else
                Tween2(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
            end
        else
            Tween2(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
        end
    end,
})
v37.Teleport:AddButton({
    Title = 'Stop Flying',
    Description = '',
    Callback = function()
        CancelTween()
    end,
})
v37.Visual:AddButton({
    Title = 'Spoof',
    Description = '',
    Callback = function()
        local _LocalPlayer4 = game:GetService('Players').LocalPlayer
        local v879 = require(game:GetService('ReplicatedStorage').Notification)
        local _Data = _LocalPlayer4:WaitForChild('Data')
        local v881 = require(game.ReplicatedStorage:WaitForChild('EXPFunction'))
        local v882 = require(game:GetService('ReplicatedStorage').Effect.Container.LevelUp)
        local v883 = require(game:GetService('ReplicatedStorage').Util.Sound)
        local v884 = game:GetService('ReplicatedStorage').Util.Sound.Storage.Other:FindFirstChild('LevelUp_Proxy') or game:GetService('ReplicatedStorage').Util.Sound.Storage.Other:FindFirstChild('LevelUp')

        function v129(p885)
            repeat
                local v886

                p885, v886 = string.gsub(p885, '^(-?%d+)(%d%d%d)', '%1,%2')
            until v886 == 0

            return p885
        end

        v879.new('<Color=Yellow>QUEST COMPLETED!<Color=/>'):Display()
        v879.new('Earned<Color=Yellow>9,999,999,999,999 Exp.<Color=/>(+None)'):Display()
        v879.new('Earned<Color=Green>$9,999,999,999,999<Color=/>'):Display()

        _LocalPlayer4.Data.Exp.Value = 999999999999
        _LocalPlayer4.Data.Beli.Value = _LocalPlayer4.Data.Beli.Value + 999999999999
        delay = 0
        count = 0

        while _LocalPlayer4.Data.Exp.Value - v881(_Data.Level.Value) > 0 do
            _LocalPlayer4.Data.Exp.Value = _LocalPlayer4.Data.Exp.Value - v881(_Data.Level.Value)
            _LocalPlayer4.Data.Level.Value = _LocalPlayer4.Data.Level.Value + 1
            _LocalPlayer4.Data.Points.Value = _LocalPlayer4.Data.Points.Value + 3

            v882({_LocalPlayer4})
            v883:Play(v884.Value)
            v879.new('<Color=Green>LEVEL UP!<Color=/>(' .. _LocalPlayer4.Data.Level.Value .. ')'):Display()

            count = count + 1

            if count >= 5 then
                delay = tick()
                count = 0

                wait()
            end
        end
    end,
})
v37.Visual:AddInput('Input_Level', {
    Title = 'Level',
    Default = '',
    Placeholder = 'Enter',
    Numeric = false,
    Finished = false,
    Callback = function(p887)
        game:GetService('Players').LocalPlayer.Data.Level.Value = tonumber(p887)
    end,
})
v37.Visual:AddInput('Input_EXP', {
    Title = 'Experience',
    Default = '',
    Placeholder = 'Enter',
    Numeric = false,
    Finished = false,
    Callback = function(p888)
        game:GetService('Players').LocalPlayer.Data.Exp.Value = tonumber(p888)
    end,
})
v37.Visual:AddInput('Input_Beli', {
    Title = 'Beli',
    Default = '',
    Placeholder = 'Enter',
    Numeric = false,
    Finished = false,
    Callback = function(p889)
        game:GetService('Players').LocalPlayer.Data.Beli.Value = tonumber(p889)
    end,
})
v37.Visual:AddInput('Input_Fragments', {
    Title = 'Fragments',
    Default = '',
    Placeholder = 'Enter',
    Numeric = false,
    Finished = false,
    Callback = function(p890)
        game:GetService('Players').LocalPlayer.Data.Fragments.Value = tonumber(p890)
    end,
})

local _GetFruits = game.ReplicatedStorage:FindFirstChild('Remotes').CommF_:InvokeServer('GetFruits')

Table_DevilFruitSniper = {}
ShopDevilSell = {}

local v892 = next
local v893 = nil

while true do
    local v894

    v893, v894 = v892(_GetFruits, v893)

    if v893 == nil then
        break
    end

    table.insert(Table_DevilFruitSniper, v894.Name)

    if v894.OnSale then
        table.insert(ShopDevilSell, v894.Name)
    end
end

_G.SelectFruit = 'Dragon-Dragon'
_G.PermanentFruit = 'Dragon-Dragon'
_G.AutoBuyFruitSniper = false
_G.AutoSwitchPermanentFruit = false

local _DropdownFruit = v37.Fruit:AddDropdown('DropdownFruit', {
    Title = 'Select Fruit',
    Description = '',
    Values = Table_DevilFruitSniper,
    Multi = false,
    Default = 1,
})

_DropdownFruit:SetValue(_G.SelectFruit)
_DropdownFruit:OnChanged(function(p896)
    _G.SelectFruit = p896
end)
v37.Fruit:AddToggle('ToggleFruit', {
    Title = 'Buy Selected Fruit',
    Description = '',
    Default = false,
}):OnChanged(function(p897)
    if p897 then
        _G.AutoBuyFruitSniper = true

        pcall(function()
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GetFruits')
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('PurchaseRawFruit', _G.SelectFruit, false)
        end)

        _G.AutoBuyFruitSniper = false
    end
end)
_Options.ToggleFruit:SetValue(false)

local _DropdownPermanentFruit = v37.Fruit:AddDropdown('DropdownPermanentFruit', {
    Title = 'Select Permanent Fruit',
    Description = '',
    Values = Table_DevilFruitSniper,
    Multi = false,
    Default = 1,
})

_DropdownPermanentFruit:SetValue(_G.PermanentFruit)
_DropdownPermanentFruit:OnChanged(function(p899)
    _G.PermanentFruit = p899
end)
v37.Fruit:AddToggle('TogglePermanentFruit', {
    Title = 'Switch Permanent Fruit',
    Description = '',
    Default = false,
}):OnChanged(function(p900)
    if p900 then
        _G.AutoSwitchPermanentFruit = true

        pcall(function()
            local v901 = {
                'SwitchFruit',
                _G.PermanentFruit,
            }

            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v901))
        end)

        _G.AutoSwitchPermanentFruit = false
    end
end)
_Options.TogglePermanentFruit:SetValue(false)
v37.Fruit:AddToggle('ToggleStore', {
    Title = 'Save Fruit',
    Description = '',
    Default = false,
}):OnChanged(function(p902)
    _G.AutoStoreFruit = p902
end)
_Options.ToggleStore:SetValue(false)
spawn(function()
    while task.wait() do
        if _G.AutoStoreFruit then
            pcall(function()
                if _G.AutoStoreFruit then
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Bomb Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Bomb Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Bomb-Bomb', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Bomb Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Spike Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spike Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Spike-Spike', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spike Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Chop Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Chop Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Chop-Chop', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Chop Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Spring Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spring Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Spring-Spring', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spring Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Rocket Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Kilo Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Rocket-Rocket', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Kilo Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Smoke Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Smoke Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Smoke-Smoke', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Smoke Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Spin Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spin Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Spin-Spin', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spin Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Flame Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flame Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Flame-Flame', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flame Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Falcon Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Falcon Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Falcon', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('alcon Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Ice Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Ice Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Ice-Ice', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Ice Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Sand Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Sand Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Sand-Sand', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Sand Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dark Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dark Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Dark-Dark', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dark Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Ghost Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Revive Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Ghost-Ghost', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Revive Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Diamond Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Diamond Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Diamond-Diamond', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Diamond Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Light Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Light Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Light-Light', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Light Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Love Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Love Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Love-Love', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Love Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Rubber Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Rubber Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Rubber-Rubber', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Rubber Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Barrier Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Barrier Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Barrier-Barrier', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Barrier Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Magma Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Magma Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Magma-Magma', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Magma Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Portal Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Portal Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Door-Door', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Portal Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Quake Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Quake Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Quake-Quake', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Quake Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Buddha Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Buddha Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Buddha', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Buddha Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Spider Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spider Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Spider-Spider', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spider Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Bird: Phoenix Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Phoenix Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Phoenix', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Phoenix Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Rumble Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Rumble Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Rumble-Rumble', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Rumble Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Pain Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Pain Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Pain-Pain', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Pain Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Gravity Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Gravity Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Gravity-Gravity', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Gravity Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dough Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dough Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Dough-Dough', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dough Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Shadow Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Shadow Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Shadow-Shadow', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Shadow Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Venom Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Venom Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Venom-Venom', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Venom Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Control Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Control Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Control-Control', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Control Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Spirit Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spirit Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Soul-Soul', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Spirit Fruit'))
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dragon Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dragon Fruit') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Dragon-Dragon', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dragon Fruit'))

                        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Leopard Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Leopard Fruit') then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', 'Leopard-Leopard', game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Leopard Fruit'))
                        end
                    end
                end
            end)
        end

        wait()
    end
end)
v37.Fruit:AddToggle('ToggleRandomFruit', {
    Title = 'Random Fruit',
    Description = '',
    Default = false,
}):OnChanged(function(p903)
    _G.Random_Auto = p903
end)
_Options.ToggleRandomFruit:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if _G.Random_Auto then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Cousin', 'Buy')
            end
        end
    end)
end)
v37.Fruit:AddToggle('ToggleCollectTP', {
    Title = 'Fly To Fruit',
    Description = '',
    Default = false,
}):OnChanged(function(p904)
    _G.CollectFruitTP = p904
end)
_Options.ToggleCollectTP:SetValue(false)
spawn(function()
    while wait() do
        if _G.CollectFruitTP then
            local v905, v906, v907 = pairs(game.Workspace:GetChildren())

            while true do
                local v908

                v907, v908 = v905(v906, v907)

                if v907 == nil then
                    break
                end
                if string.find(v908.Name, 'Fruit') then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v908.Handle.CFrame
                end
            end
        end
    end
end)
v37.Fruit:AddToggle('ToggleCollect', {
    Title = 'Teleport To Fruit',
    Description = '',
    Default = false,
}):OnChanged(function(p909)
    _G.Tweenfruit = p909
end)
_Options.ToggleCollect:SetValue(false)
spawn(function()
    while wait() do
        if _G.Tweenfruit then
            local v910, v911, v912 = pairs(game.Workspace:GetChildren())

            while true do
                local v913

                v912, v913 = v910(v911, v912)

                if v912 == nil then
                    break
                end
                if string.find(v913.Name, 'Fruit') then
                    Tween(v913.Handle.CFrame)
                end
            end
        end
    end
end)
v37.Fruit:AddSection('Location')
v37.Fruit:AddToggle('ToggleEspPlayer', {
    Title = 'Player',
    Description = '',
    Default = false,
}):OnChanged(function(p914)
    ESPPlayer = p914

    UpdatePlayerChams()
end)
_Options.ToggleEspPlayer:SetValue(false)
v37.Fruit:AddToggle('ToggleEspFruit', {
    Title = 'Fruit',
    Description = '',
    Default = false,
}):OnChanged(function(p915)
    DevilFruitESP = p915

    while DevilFruitESP do
        wait()
        UpdateDevilChams()
    end
end)
_Options.ToggleEspFruit:SetValue(false)
v37.Fruit:AddToggle('ToggleEspIsland', {
    Title = 'Island',
    Description = '',
    Default = false,
}):OnChanged(function(p916)
    IslandESP = p916

    while IslandESP do
        wait()
        UpdateIslandESP()
    end
end)
_Options.ToggleEspIsland:SetValue(false)
v37.Fruit:AddToggle('ToggleEspFlower', {
    Title = 'Flower',
    Description = '',
    Default = false,
}):OnChanged(function(p917)
    FlowerESP = p917

    UpdateFlowerChams()
end)
_Options.ToggleEspFlower:SetValue(false)
spawn(function()
    while wait() do
        if FlowerESP then
            UpdateFlowerChams()
        end
        if DevilFruitESP then
            UpdateDevilChams()
        end
        if ChestESP then
            UpdateChestChams()
        end
        if ESPPlayer then
            UpdatePlayerChams()
        end
        if RealFruitESP then
            UpdateRealFruitChams()
        end
    end
end)
v37.Fruit:AddToggle('ToggleEspRealFruit', {
    Title = 'Pineapple Apple Fruit',
    Description = '',
    Default = false,
}):OnChanged(function(p918)
    RealFruitEsp = p918

    while RealFruitEsp do
        wait()
        UpdateRealFruitEsp()
    end
end)
_Options.ToggleEspRealFruit:SetValue(false)

function UpdateRealFruitEsp()
    local v919, v920, v921 = pairs(game.Workspace.AppleSpawner:GetChildren())

    while true do
        local v922

        v921, v922 = v919(v920, v921)

        if v921 == nil then
            break
        end
        if v922:IsA('Tool') then
            if RealFruitEsp then
                if v922.Handle:FindFirstChild('NameEsp' .. Number) then
                    v922.Handle['NameEsp' .. Number].TextLabel.Text = v922.Name .. ' ' .. u847((game:GetService('Players').LocalPlayer.Character.Head.Position - v922.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui25 = Instance.new('BillboardGui', v922.Handle)

                    _BillboardGui25.Name = 'NameEsp' .. Number
                    _BillboardGui25.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui25.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui25.Adornee = v922.Handle
                    _BillboardGui25.AlwaysOnTop = true

                    local _TextLabel28 = Instance.new('TextLabel', _BillboardGui25)

                    _TextLabel28.Font = Enum.Font.GothamSemibold
                    _TextLabel28.FontSize = 'Size14'
                    _TextLabel28.TextWrapped = true
                    _TextLabel28.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel28.TextYAlignment = 'Top'
                    _TextLabel28.BackgroundTransparency = 1
                    _TextLabel28.TextStrokeTransparency = 0.5
                    _TextLabel28.TextColor3 = Color3.fromRGB(255, 0, 0)
                    _TextLabel28.Text = v922.Name .. ' \n' .. u847((game:GetService('Players').LocalPlayer.Character.Head.Position - v922.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v922.Handle:FindFirstChild('NameEsp' .. Number) then
                v922.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v925, v926, v927 = pairs(game.Workspace.PineappleSpawner:GetChildren())

    while true do
        local v928

        v927, v928 = v925(v926, v927)

        if v927 == nil then
            break
        end
        if v928:IsA('Tool') then
            if RealFruitEsp then
                if v928.Handle:FindFirstChild('NameEsp' .. Number) then
                    v928.Handle['NameEsp' .. Number].TextLabel.Text = v928.Name .. ' ' .. u847((game:GetService('Players').LocalPlayer.Character.Head.Position - v928.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui26 = Instance.new('BillboardGui', v928.Handle)

                    _BillboardGui26.Name = 'NameEsp' .. Number
                    _BillboardGui26.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui26.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui26.Adornee = v928.Handle
                    _BillboardGui26.AlwaysOnTop = true

                    local _TextLabel29 = Instance.new('TextLabel', _BillboardGui26)

                    _TextLabel29.Font = Enum.Font.GothamSemibold
                    _TextLabel29.FontSize = 'Size14'
                    _TextLabel29.TextWrapped = true
                    _TextLabel29.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel29.TextYAlignment = 'Top'
                    _TextLabel29.BackgroundTransparency = 1
                    _TextLabel29.TextStrokeTransparency = 0.5
                    _TextLabel29.TextColor3 = Color3.fromRGB(255, 174, 0)
                    _TextLabel29.Text = v928.Name .. ' \n' .. u847((game:GetService('Players').LocalPlayer.Character.Head.Position - v928.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v928.Handle:FindFirstChild('NameEsp' .. Number) then
                v928.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end

    local v931, v932, v933 = pairs(game.Workspace.BananaSpawner:GetChildren())

    while true do
        local v934

        v933, v934 = v931(v932, v933)

        if v933 == nil then
            break
        end
        if v934:IsA('Tool') then
            if RealFruitEsp then
                if v934.Handle:FindFirstChild('NameEsp' .. Number) then
                    v934.Handle['NameEsp' .. Number].TextLabel.Text = v934.Name .. ' ' .. u847((game:GetService('Players').LocalPlayer.Character.Head.Position - v934.Handle.Position).Magnitude / 3) .. ' Distance'
                else
                    local _BillboardGui27 = Instance.new('BillboardGui', v934.Handle)

                    _BillboardGui27.Name = 'NameEsp' .. Number
                    _BillboardGui27.ExtentsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui27.Size = UDim2.new(1, 200, 1, 30)
                    _BillboardGui27.Adornee = v934.Handle
                    _BillboardGui27.AlwaysOnTop = true

                    local _TextLabel30 = Instance.new('TextLabel', _BillboardGui27)

                    _TextLabel30.Font = Enum.Font.GothamSemibold
                    _TextLabel30.FontSize = 'Size14'
                    _TextLabel30.TextWrapped = true
                    _TextLabel30.Size = UDim2.new(1, 0, 1, 0)
                    _TextLabel30.TextYAlignment = 'Top'
                    _TextLabel30.BackgroundTransparency = 1
                    _TextLabel30.TextStrokeTransparency = 0.5
                    _TextLabel30.TextColor3 = Color3.fromRGB(251, 255, 0)
                    _TextLabel30.Text = v934.Name .. ' \n' .. u847((game:GetService('Players').LocalPlayer.Character.Head.Position - v934.Handle.Position).Magnitude / 3) .. ' Distance'
                end
            elseif v934.Handle:FindFirstChild('NameEsp' .. Number) then
                v934.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end
    end
end

v37.Fruit:AddToggle('ToggleIslandMirageEsp', {
    Title = 'Mystery Island',
    Description = '',
    Default = false,
}):OnChanged(function(p937)
    IslandMirageEsp = p937

    while IslandMirageEsp do
        wait()
        UpdateIslandMirageEsp()
    end
end)
_Options.ToggleIslandMirageEsp:SetValue(false)

function isnil(p938)
    return p938 == nil
end

local function u940(p939)
    return math.floor(tonumber(p939) + 0.5)
end

Number = math.random(1, 1000000)

function UpdateIslandMirageEsp()
    local v941, v942, v943 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

    while true do
        local u944

        v943, u944 = v941(v942, v943)

        if v943 == nil then
            break
        end

        pcall(function()
            if MirageIslandESP then
                if u944.Name == 'Mirage Island' then
                    if u944:FindFirstChild('NameEsp') then
                        u944.NameEsp.TextLabel.Text = u944.Name .. '   \n' .. u940((game:GetService('Players').LocalPlayer.Character.Head.Position - u944.Position).Magnitude / 3) .. ' M'
                    else
                        local _BillboardGui28 = Instance.new('BillboardGui', u944)

                        _BillboardGui28.Name = 'NameEsp'
                        _BillboardGui28.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui28.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui28.Adornee = u944
                        _BillboardGui28.AlwaysOnTop = true

                        local _TextLabel31 = Instance.new('TextLabel', _BillboardGui28)

                        _TextLabel31.Font = Enum.Font.Code
                        _TextLabel31.FontSize = Enum.FontSize.Size14
                        _TextLabel31.TextWrapped = true
                        _TextLabel31.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel31.TextYAlignment = Enum.TextYAlignment.Top
                        _TextLabel31.BackgroundTransparency = 1
                        _TextLabel31.TextStrokeTransparency = 0.5
                        _TextLabel31.TextColor3 = Color3.fromRGB(80, 245, 245)
                    end
                end
            elseif u944:FindFirstChild('NameEsp') then
                u944:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end

local _DropdownRaid = v37.Raid:AddDropdown('DropdownRaid', {
    Title = 'Select Chip',
    Description = '',
    Values = {
        'Flame',
        'Ice',
        'Quake',
        'Light',
        'Dark',
        'Spider',
        'Rumble',
        'Magma',
        'Buddha',
        'Sand',
        'Phoenix',
        'Dough',
    },
    Multi = false,
    Default = 1,
})

_DropdownRaid:SetValue(SelectChip)
_DropdownRaid:OnChanged(function(p948)
    SelectChip = p948
end)
v37.Raid:AddToggle('ToggleBuy', {
    Title = 'Buy Chip',
    Description = '',
    Default = false,
}):OnChanged(function(p949)
    _G.Auto_Buy_Chips_Dungeon = p949
end)
_Options.ToggleBuy:SetValue(false)
spawn(function()
    while wait() do
        if _G.Auto_Buy_Chips_Dungeon then
            pcall(function()
                local v950 = {
                    'RaidsNpc',
                    'Select',
                    SelectChip,
                }

                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v950))
            end)
        end
    end
end)
v37.Raid:AddToggle('ToggleStart', {
    Title = 'Start Raid',
    Description = '',
    Default = false,
}):OnChanged(function(p951)
    _G.Auto_StartRaid = p951
end)
_Options.ToggleStart:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_StartRaid and (game:GetService('Players').LocalPlayer.PlayerGui.Main.Timer.Visible == false and (not game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Island 1') and (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Special Microchip') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Special Microchip')))) then
                if Sea2 then
                    Tween2(CFrame.new(-6438.73535, 250.645355, -4501.50684))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'SetSpawnPoint',
                    }))
                    fireclickdetector(game:GetService('Workspace').Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                elseif Sea3 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-5075.50927734375, 314.5155029296875, -3150.0224609375))
                    Tween2(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.482175e-8, -0.378151238, 4.5550315e-9, 1, 1.0737756e-7, 0.378151238, 9.768162e-8, -0.925743818))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'SetSpawnPoint',
                    }))
                    fireclickdetector(game:GetService('Workspace').Map['Boat Castle'].RaidSummon2.Button.Main.ClickDetector)
                end
            end
        end)
    end
end)
v37.Raid:AddToggle('ToggleNextIsland', {
    Title = 'Hunt Raid Mobs+Fly To Island',
    Description = '',
    Default = false,
}):OnChanged(function(p952)
    AutoNextIsland = p952

    if not p952 then
        _G.AutoNear = false
    end
end)
_Options.ToggleNextIsland:SetValue(false)
spawn(function()
    local u953 = {}

    while task.wait() do
        if AutoNextIsland then
            pcall(function()
                local _Character8 = game.Players.LocalPlayer.Character

                if _Character8 and _Character8:FindFirstChild('HumanoidRootPart') then
                    local _Locations = game:GetService('Workspace')._WorldOrigin.Locations
                    local _Position8 = _Character8.HumanoidRootPart.Position

                    if (_Position8 - Vector3.new(-6438.73535, 250.645355, -4501.50684)).Magnitude < 1 or (_Position8 - Vector3.new(-5017.40869, 314.844055, -2823.0127)).Magnitude < 1 then
                        u953 = {}
                    end
                    if _Locations:FindFirstChild('Island 1') then
                        _G.AutoNear = true
                    end
                    if _Locations:FindFirstChild('Island 2') and not u953['Island 2'] then
                        Tween(_Locations:FindFirstChild('Island 2').CFrame)

                        u953['Island 2'] = true
                        AutoNextIsland = false

                        wait()

                        AutoNextIsland = true
                    elseif _Locations:FindFirstChild('Island 3') and not u953['Island 3'] then
                        Tween(_Locations:FindFirstChild('Island 3').CFrame)

                        u953['Island 3'] = true
                        AutoNextIsland = false

                        wait()

                        AutoNextIsland = true
                    elseif _Locations:FindFirstChild('Island 4') and not u953['Island 4'] then
                        Tween(_Locations:FindFirstChild('Island 4').CFrame)

                        u953['Island 4'] = true
                        AutoNextIsland = false

                        wait()

                        AutoNextIsland = true
                    elseif _Locations:FindFirstChild('Island 5') and not u953['Island 5'] then
                        Tween(_Locations:FindFirstChild('Island 5').CFrame)

                        u953['Island 5'] = true
                        AutoNextIsland = false

                        wait()

                        AutoNextIsland = true
                    end
                end
            end)
        end
    end
end)
v37.Raid:AddToggle('ToggleAwake', {
    Title = 'Awakening',
    Description = '',
    Default = false,
}):OnChanged(function(p957)
    AutoAwakenAbilities = p957
end)
_Options.ToggleAwake:SetValue(false)
spawn(function()
    while task.wait() do
        if AutoAwakenAbilities then
            pcall(function()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Awakener', 'Awaken')
            end)
        end
    end
end)
v37.Raid:AddToggle('ToggleGetFruit', {
    Title = 'Get Fruit Under 1M',
    Description = '',
    Default = false,
}):OnChanged(function(p958)
    _G.Autofruit = p958
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Autofruit then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Rocket-Rocket',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Spin-Spin',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Chop-Chop',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Spring-Spring',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Bomb-Bomb',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Smoke-Smoke',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Spike-Spike',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Flame-Flame',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Falcon-Falcon',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Ice-Ice',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Sand-Sand',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Dark-Dark',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Ghost-Ghost',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Diamond-Diamond',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Light-Light',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Rubber-Rubber',
                }))
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'LoadFruit',
                    'Barrier-Barrier',
                }))
            end
        end)
    end
end)

if Sea2 then
    v37.Raid:AddButton({
        Title = 'Fly To Ambush Spot',
        Description = '',
        Callback = function()
            Tween2(CFrame.new(-6438.73535, 250.645355, -4501.50684))
        end,
    })
elseif Sea3 then
    v37.Raid:AddButton({
        Title = 'Fly To Ambush Spot',
        Description = '',
        Callback = function()
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-5075.50927734375, 314.5155029296875, -3150.0224609375))
            Tween2(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.482175e-8, -0.378151238, 4.5550315e-9, 1, 1.0737756e-7, 0.378151238, 9.768162e-8, -0.925743818))
        end,
    })
end

v37.Raid:AddSection('Law Ambush')
v37.Raid:AddToggle('ToggleLaw', {
    Title = 'Buy Chip And Hunt Law',
    Description = '',
    Default = false,
}):OnChanged(function(p959)
    Auto_Law = p959
end)
_Options.ToggleLaw:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if Auto_Law and not (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Microchip') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Microchip') or (game:GetService('Workspace').Enemies:FindFirstChild('Order') or game:GetService('ReplicatedStorage'):FindFirstChild('Order')))) then
                wait()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Microchip', '1')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Microchip', '2')
            end
        end
    end)
end)
spawn(function()
    pcall(function()
        while wait() do
            if Auto_Law then
                if not game:GetService('Workspace').Enemies:FindFirstChild('Order') and (not game:GetService('ReplicatedStorage'):FindFirstChild('Order') and (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Microchip') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Microchip'))) then
                    fireclickdetector(game:GetService('Workspace').Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
                end
                if game:GetService('ReplicatedStorage'):FindFirstChild('Order') or game:GetService('Workspace').Enemies:FindFirstChild('Order') then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Order') then
                        local v960, v961, v962 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v963

                            v962, v963 = v960(v961, v962)

                            if v962 == nil then
                                break
                            end
                            if v963.Name == 'Order' then
                                repeat
                                    wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Tween(v963.HumanoidRootPart.CFrame * Pos)

                                    v963.HumanoidRootPart.CanCollide = false
                                    v963.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                until not v963.Parent or (v963.Humanoid.Health <= 0 or Auto_Law == false)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Order') then
                        Tween(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
                    end
                end
            end
        end
    end)
end)
v37.Race:AddButton({
    Title = 'Wait For Time',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
    end,
})
v37.Race:AddButton({
    Title = 'Lever',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
        Tween2(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
    end,
})
v37.Race:AddButton({
    Title = 'Gear Shop Location',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
        Tween2(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
    end,
})
v37.Race:AddSection('Race')
v37.Race:AddButton({
    Title = 'Race Door',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))

        if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Human' then
            if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Skypiea' then
                if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Fishman' then
                    if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Cyborg' then
                        if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Ghoul' then
                            if game:GetService('Players').LocalPlayer.Data.Race.Value == 'Mink' then
                                Tween2(CFrame.new(29012.341796875, 14890.9755859375, -380.1492614746094))
                            end
                        else
                            Tween2(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))
                        end
                    else
                        Tween2(CFrame.new(28502.681640625, 14895.9755859375, -423.7279357910156))
                    end
                else
                    Tween2(CFrame.new(28231.17578125, 14890.9755859375, -211.64173889160156))
                end
            else
                Tween2(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))
            end
        else
            Tween2(CFrame.new(29221.822265625, 14890.9755859375, -205.99114990234375))
        end
    end,
})
v37.Race:AddToggle('ToggleHumanandghoul', {
    Title = 'Complete Trial [Human/Ghoul]',
    Description = '',
    Default = false,
}):OnChanged(function(p964)
    KillAura = p964
end)
_Options.ToggleHumanandghoul:SetValue(false)
v37.Race:AddToggle('ToggleAutotrial', {
    Title = 'Complete Trial',
    Description = '',
    Default = false,
}):OnChanged(function(p965)
    _G.AutoQuestRace = p965
end)
_Options.ToggleAutotrial:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoQuestRace then
                if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Human' then
                    if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Skypiea' then
                        if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Fishman' then
                            if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Cyborg' then
                                if game:GetService('Players').LocalPlayer.Data.Race.Value ~= 'Ghoul' then
                                    if game:GetService('Players').LocalPlayer.Data.Race.Value == 'Mink' then
                                        local v966, v967, v968 = pairs(game:GetService('Workspace'):GetDescendants())

                                        while true do
                                            local v969

                                            v968, v969 = v966(v967, v968)

                                            if v968 == nil then
                                                break
                                            end
                                            if v969.Name == 'StartPoint' then
                                                Tween(v969.CFrame * CFrame.new(0, 10, 0))
                                            end
                                        end
                                    end
                                else
                                    local v970, v971, v972 = pairs(game.Workspace.Enemies:GetDescendants())

                                    while true do
                                        local u973

                                        v972, u973 = v970(v971, v972)

                                        if v972 == nil then
                                            break
                                        end
                                        if u973:FindFirstChild('Humanoid') and (u973:FindFirstChild('HumanoidRootPart') and u973.Humanoid.Health > 0) then
                                            pcall(function()
                                                repeat
                                                    wait()

                                                    u973.Humanoid.Health = 0
                                                    u973.HumanoidRootPart.CanCollide = false

                                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                                until not _G.AutoQuestRace or (not u973.Parent or u973.Humanoid.Health <= 0)
                                            end)
                                        end
                                    end
                                end
                            else
                                Tween(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                            end
                        else
                            local v974, v975, v976 = pairs(game:GetService('Workspace').SeaBeasts.SeaBeast1:GetDescendants())

                            while true do
                                local v977

                                v976, v977 = v974(v975, v976)

                                if v976 == nil then
                                    break
                                end
                                if v977.Name == 'HumanoidRootPart' then
                                    Tween(v977.CFrame * Pos)

                                    local v978, v979, v980 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                    while true do
                                        local v981

                                        v980, v981 = v978(v979, v980)

                                        if v980 == nil then
                                            break
                                        end
                                        if v981:IsA('Tool') and v981.ToolTip == 'Melee' then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v981)
                                        end
                                    end

                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

                                    local v982, v983, v984 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                    while true do
                                        local v985

                                        v984, v985 = v982(v983, v984)

                                        if v984 == nil then
                                            break
                                        end
                                        if v985:IsA('Tool') and v985.ToolTip == 'Blox Fruit' then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v985)
                                        end
                                    end

                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait()

                                    local v986, v987, v988 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                    while true do
                                        local v989

                                        v988, v989 = v986(v987, v988)

                                        if v988 == nil then
                                            break
                                        end
                                        if v989:IsA('Tool') and v989.ToolTip == 'Sword' then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v989)
                                        end
                                    end

                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait()

                                    local v990, v991, v992 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                    while true do
                                        local v993

                                        v992, v993 = v990(v991, v992)

                                        if v992 == nil then
                                            break
                                        end
                                        if v993:IsA('Tool') and v993.ToolTip == 'Gun' then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v993)
                                        end
                                    end

                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                end
                            end
                        end
                    else
                        local v994, v995, v996 = pairs(game:GetService('Workspace').Map.SkyTrial.Model:GetDescendants())

                        while true do
                            local v997

                            v996, v997 = v994(v995, v996)

                            if v996 == nil then
                                break
                            end
                            if v997.Name == 'snowisland_Cylinder.081' then
                                BTPZ(v997.CFrame * CFrame.new(0, 0, 0))
                            end
                        end
                    end
                else
                    local v998, v999, v1000 = pairs(game.Workspace.Enemies:GetDescendants())

                    while true do
                        local u1001

                        v1000, u1001 = v998(v999, v1000)

                        if v1000 == nil then
                            break
                        end
                        if u1001:FindFirstChild('Humanoid') and (u1001:FindFirstChild('HumanoidRootPart') and u1001.Humanoid.Health > 0) then
                            pcall(function()
                                repeat
                                    wait()

                                    u1001.Humanoid.Health = 0
                                    u1001.HumanoidRootPart.CanCollide = false

                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.AutoQuestRace or (not u1001.Parent or u1001.Humanoid.Health <= 0)
                            end)
                        end
                    end
                end
            end
        end
    end)
end)
v37.Race:AddToggle('ToggleKillTrial', {
    Title = 'Hunt Player In Trial',
    Description = '',
    Default = false,
}):OnChanged(function(p1002)
    _G.AutoKillTrial = p1002
end)
_Options.ToggleKillTrial:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoKillTrial then
                local v1003, v1004, v1005 = pairs(game:GetService('Players'):GetChildren())

                while true do
                    local v1006

                    v1005, v1006 = v1003(v1004, v1005)

                    if v1005 == nil then
                        break
                    end
                    if v1006.Name and (v1006.Name ~= game.Players.LocalPlayer.Name and ((v1006.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 and v1006.Character.Humanoid.Health > 0)) then
                        repeat
                            wait(_G.Fast_Delay)
                            EquipTool(SelectWeapon)
                            AutoHaki()
                            Tween(v1006.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5))

                            v1006.Character.HumanoidRootPart.CanCollide = false
                            v1006.Character.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

                            AttackNoCoolDown()
                        until not _G.AutoKillTrial or (not v1006.Parent or v1006.Character.Humanoid.Health <= 0)
                    end
                end
            end
        end)
    end
end)
v37.Race:AddSection('Training')

local _ToggleFarmRace = v37.Race:AddToggle('ToggleFarmRace', {
    Title = 'Grind Race Training',
    Description = '',
    Default = false,
})
local u1008 = false

_ToggleFarmRace:OnChanged(function(p1009)
    u1008 = p1009
end)
_Options.ToggleFarmRace:SetValue(false)
spawn(function()
    while wait() do
        if u1008 then
            pcall(function()
                if game.Players.LocalPlayer.Character:FindFirstChild('RaceTransformed') then
                    if game.Players.LocalPlayer.Character.RaceTransformed.Value ~= true then
                        if game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
                            _G.AutoBoneNoQuest = true

                            game:GetService('VirtualInputManager'):SendKeyEvent(true, 'Y', false, game)
                            wait()
                            game:GetService('VirtualInputManager'):SendKeyEvent(false, 'Y', false, game)
                        end
                    else
                        _G.AutoBoneNoQuest = false

                        Tween(CFrame.new(-9698.4736328125, 445.09442138671875, 6545.8525390625))
                    end
                end
            end)
        else
            _G.AutoBoneNoQuest = false
        end
    end
end)
v37.Race:AddToggle('ToggleUpgrade', {
    Title = 'Mua Gear',
    Description = '',
    Default = false,
}):OnChanged(function(p1010)
    _G.AutoUpgrade = p1010

    if _G.AutoUpgrade then
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('UpgradeRace', 'Buy')
    end
end)
_Options.ToggleUpgrade:SetValue(false)
v37.Shop:AddSection('Abilities')
v37.Shop:AddButton({
    Title = 'Jump',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Geppo')
    end,
})
v37.Shop:AddButton({
    Title = 'Melee Haki',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Buso')
    end,
})
v37.Shop:AddButton({
    Title = 'Teleport',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Soru')
    end,
})
v37.Shop:AddButton({
    Title = 'Observation Haki',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KenTalk', 'Buy')
    end,
})
v37.Shop:AddSection('Sword')
v37.Shop:AddButton({
    Title = 'Cutlass',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Cutlass')
    end,
})
v37.Shop:AddButton({
    Title = 'Katana',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Katana')
    end,
})
v37.Shop:AddButton({
    Title = 'Iron Mace',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Iron Mace')
    end,
})
v37.Shop:AddButton({
    Title = 'Duel Katana',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Duel Katana')
    end,
})
v37.Shop:AddButton({
    Title = 'Triple Katana',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Triple Katana')
    end,
})
v37.Shop:AddButton({
    Title = 'Pipe',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Pipe')
    end,
})
v37.Shop:AddButton({
    Title = 'Dual-Headed Blade',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Dual-Headed Blade')
    end,
})
v37.Shop:AddButton({
    Title = 'Bisento',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Bisento')
    end,
})
v37.Shop:AddButton({
    Title = 'Soul Cane',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Soul Cane')
    end,
})
v37.Shop:AddButton({
    Title = 'Pole V2',
    Description = '',
    Callback = function()
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer('ThunderGodTalk')
    end,
})
v37.Shop:AddSection('Fighting Style')
v37.Shop:AddButton({
    Title = 'Black Leg',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyBlackLeg')
    end,
})
v37.Shop:AddButton({
    Title = 'Electro',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectro')
    end,
})
v37.Shop:AddButton({
    Title = 'Fishman Karate',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyFishmanKarate')
    end,
})
v37.Shop:AddButton({
    Title = 'Dragon Claw',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '1')
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '2')
    end,
})
v37.Shop:AddButton({
    Title = 'Superhuman',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySuperhuman')
    end,
})
v37.Shop:AddButton({
    Title = 'Death Step',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDeathStep')
    end,
})
v37.Shop:AddButton({
    Title = 'Sharkman Karate',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate', true)
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate')
    end,
})
v37.Shop:AddButton({
    Title = 'Electric Claw',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')
    end,
})
v37.Shop:AddButton({
    Title = 'Dragon Talon',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDragonTalon')
    end,
})
v37.Shop:AddButton({
    Title = 'Godhuman',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyGodhuman')
    end,
})
v37.Shop:AddButton({
    Title = 'Sanguine Art',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySanguineArt')
    end,
})
v37.Shop:AddSection('Others')
v37.Shop:AddButton({
    Title = 'Change Stats',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Refund', '1')
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Refund', '2')
    end,
})
v37.Shop:AddButton({
    Title = 'Change Race',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Reroll', '1')
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Reroll', '2')
    end,
})
v37.Shop:AddButton({
    Title = 'Change Race To Ghoul',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'Ectoplasm',
            'Change',
            4,
        }))
    end,
})
v37.Shop:AddButton({
    Title = 'Change Race To Cyborg',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'CyborgTrainer',
            'Buy',
        }))
    end,
})
v37.Shop:AddButton({
    Title = 'Change Race To Draco',
    Description = 'Only Available In Sea 3',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(5661.5322265625, 1013.0907592773438, -334.9649963378906))
        Tween2(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938))

        local v1011 = Vector3.new(5814.42724609375, 1208.3267822265625, 884.5785522460938)
        local _LocalPlayer5 = game.Players.LocalPlayer
        local _Character9 = _LocalPlayer5.Character

        if not _Character9 then
            _Character9 = _LocalPlayer5.CharacterAdded:Wait()
        end

        repeat
            wait()
        until (_Character9.HumanoidRootPart.Position - v1011).Magnitude < 1

        local v1014 = {
            {
                NPC = 'Dragon Wizard',
                Command = 'DragonRace',
            },
        }

        game:GetService('ReplicatedStorage').Modules.Net:FindFirstChild('RF/InteractDragonQuest'):InvokeServer(unpack(v1014))
    end,
})
v37.Misc:AddButton({
    Title = 'Rejoin Server',
    Description = '',
    Callback = function()
        game:GetService('TeleportService'):Teleport(game.PlaceId, game:GetService('Players').LocalPlayer)
    end,
})
v37.Misc:AddButton({
    Title = 'Change Server',
    Description = '',
    Callback = function()
        Hop()
    end,
})

function Hop()
    local _PlaceId3 = game.PlaceId
    local u1016 = {}
    local u1017 = ''
    local _hour = os.date('!*t').hour

    function TPReturner()
        local v1019

        if u1017 ~= '' then
            v1019 = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. _PlaceId3 .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. u1017))
        else
            v1019 = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. _PlaceId3 .. '/servers/Public?sortOrder=Asc&limit=100'))
        end
        if v1019.nextPageCursor and (v1019.nextPageCursor ~= 'null' and v1019.nextPageCursor ~= nil) then
            u1017 = v1019.nextPageCursor
        end

        local v1020, v1021, v1022 = pairs(v1019.data)
        local v1023 = 0

        while true do
            local v1024

            v1022, v1024 = v1020(v1021, v1022)

            if v1022 == nil then
                break
            end

            local v1025 = true
            local u1026 = tostring(v1024.id)

            if tonumber(v1024.maxPlayers) > tonumber(v1024.playing) then
                local v1027, v1028, v1029 = pairs(u1016)

                while true do
                    local v1030

                    v1029, v1030 = v1027(v1028, v1029)

                    if v1029 == nil then
                        break
                    end
                    if v1023 == 0 then
                        if tonumber(_hour) ~= tonumber(v1030) then
                            pcall(function()
                                u1016 = {}

                                table.insert(u1016, _hour)
                            end)
                        end
                    elseif u1026 == tostring(v1030) then
                        v1025 = false
                    end

                    v1023 = v1023 + 1
                end

                if v1025 == true then
                    table.insert(u1016, u1026)
                    wait()
                    pcall(function()
                        wait()
                        game:GetService('TeleportService'):TeleportToPlaceInstance(_PlaceId3, u1026, game.Players.LocalPlayer)
                    end)
                    wait()
                end
            end
        end
    end

    _ThGii = function()
        while wait() do
            pcall(function()
                TPReturner()

                if u1017 ~= '' then
                    TPReturner()
                end
            end)
        end
    end

    _ThGii()
end

v37.Misc:AddSection('Team')
v37.Misc:AddButton({
    Title = 'Pirate',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetTeam', 'Pirates')
    end,
})
v37.Misc:AddButton({
    Title = 'Marine',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetTeam', 'Marines')
    end,
})
v37.Misc:AddSection('Codes')

local u1031 = {
    'KITT_RESET',
    'Sub2UncleKizaru',
    'SUB2GAMERROBOT_RESET1',
    'Sub2Fer999',
    'Enyu_is_Pro',
    'JCWK',
    'StarcodeHEO',
    'MagicBus',
    'KittGaming',
    'Sub2CaptainMaui',
    'Sub2OfficalNoobie',
    'TheGreatAce',
    'Sub2NoobMaster123',
    'Sub2Daigrock',
    'Axiore',
    'StrawHatMaine',
    'TantaiGaming',
    'Bluxxy',
    'SUB2GAMERROBOT_EXP1',
    'Chandler',
    'NOMOREHACK',
    'BANEXPLOIT',
    'WildDares',
    'BossBuild',
    'GetPranked',
    'EARN_FRUITS',
    'FIGHT4FRUIT',
    'NOEXPLOITER',
    'NOOB2ADMIN',
    'CODESLIDE',
    'ADMINHACKED',
    'ADMINDARES',
    'fruitconcepts',
    'krazydares',
    'TRIPLEABUSE',
    'SEATROLLING',
    '24NOADMIN',
    'REWARDFUN',
    'NEWTROLL',
    'fudd10_v2',
    'Fudd10',
    'Bignews',
    'SECRET_ADMIN',
}

v37.Misc:AddButton({
    Title = 'Redeem All',
    Description = '',
    Callback = function()
        local v1032, v1033, v1034 = ipairs(u1031)

        while true do
            local v1035

            v1034, v1035 = v1032(v1033, v1034)

            if v1034 == nil then
                break
            end

            RedeemCode(v1035)
        end
    end,
})

function RedeemCode(p1036)
    game:GetService('ReplicatedStorage').Remotes.Redeem:InvokeServer(p1036)
end

v37.Misc:AddSection('Title')
v37.Misc:AddButton({
    Title = 'Title',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'getTitles',
        }))

        game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
    end,
})
v37.Misc:AddSection('Awakening')
v37.Misc:AddButton({
    Title = 'Check Awakening',
    Description = '',
    Callback = function()
        game:GetService('Players').LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
    end,
})
v37.Misc:AddSection('Others')
v37.Misc:AddToggle('ToggleRejoin', {
    Title = 'Rejoin Server',
    Description = '',
    Default = true,
}):OnChanged(function(p1037)
    _G.AutoRejoin = p1037
end)
_Options.ToggleRejoin:SetValue(true)
spawn(function()
    while wait() do
        if _G.AutoRejoin then
            getgenv().rejoin = game:GetService('CoreGui').RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(p1038)
                if p1038.Name == 'ErrorPrompt' and p1038:FindFirstChild('MessageArea') and p1038.MessageArea:FindFirstChild('ErrorFrame') then
                    game:GetService('TeleportService'):Teleport(game.PlaceId)
                end
            end)
        end
    end
end)
v37.Misc:AddSection('Fog')

local function u1040()
    local _Lighting = game:GetService('Lighting')

    if _Lighting:FindFirstChild('BaseAtmosphere') then
        _Lighting.BaseAtmosphere:Destroy()
    end
    if _Lighting:FindFirstChild('SeaTerrorCC') then
        _Lighting.SeaTerrorCC:Destroy()
    end
    if _Lighting:FindFirstChild('LightingLayers') then
        if _Lighting.LightingLayers:FindFirstChild('Atmosphere') then
            _Lighting.LightingLayers.Atmosphere:Destroy()
        end

        wait()

        if _Lighting.LightingLayers:FindFirstChild('DarkFog') then
            _Lighting.LightingLayers.DarkFog:Destroy()
        end
    end

    _Lighting.FogEnd = 100000
end

v37.Misc:AddButton({
    Title = 'Remove Fog',
    Description = '',
    Callback = function()
        u1040()
    end,
})
v37.Misc:AddToggle('ToggleAntiBand', {
    Title = 'Anti-Ban',
    Description = '',
    Default = true,
}):OnChanged(function(p1041)
    _G.AntiBand = p1041
end)

local u1042 = {17884881, 120173604, 912348}

spawn(function()
    while wait() do
        if _G.AntiBand then
            local v1043, v1044, v1045 = pairs(game:GetService('Players'):GetPlayers())

            while true do
                local v1046

                v1045, v1046 = v1043(v1044, v1045)

                if v1045 == nil then
                    break
                end
                if table.find(u1042, v1046.UserId) then
                    Hop()
                end
            end
        end
    end
end)
v37.Sea:AddSection('Leviathan')
v37.Sea:AddButton({
    Title = 'Mua Chip Leviathan',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('InfoLeviathan', '2')
    end,
})

local _ToggleTPFrozenDimension = v37.Sea:AddToggle('ToggleTPFrozenDimension', {
    Title = 'Fly To Leviathan Island',
    Description = '',
    Default = false,
})

_ToggleTPFrozenDimension:OnChanged(function(p1048)
    _G.TweenToFrozenDimension = p1048
end)
_ToggleTPFrozenDimension:SetValue(false)
spawn(function()
    local v1049 = nil

    while not v1049 do
        v1049 = game:GetService('Workspace').Map:FindFirstChild('FrozenDimension')

        wait()
    end
    while wait() do
        if _G.TweenToFrozenDimension and v1049 then
            Tween(v1049.CFrame)
        end
    end
end)

if Sea3 then
    local u1050 = v37.Sea:AddParagraph({
        Title = 'Leviathan Chip Status',
        Content = '',
    })

    spawn(function()
        pcall(function()
            while wait() do
                local _InfoLeviathan = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('InfoLeviathan', '1')

                if _InfoLeviathan == 5 then
                    u1050:SetDesc('Leviathan Is Out There')
                elseif _InfoLeviathan == 0 then
                    u1050:SetDesc("I Don't Know")
                else
                    u1050:SetDesc('Mua: ' .. tostring(_InfoLeviathan))
                end
            end
        end)
    end)
end

local _Draco = v37.Sea:AddSection('Draco')

v37.Sea:AddToggle('ToggleBlazeEmber', {
    Title = 'Collect Red Flames',
    Description = '',
    Default = false,
}):OnChanged(function(p1053)
    _G.AutoBlazeEmber = p1053
end)
spawn(function()
    while wait() do
        if _G.AutoBlazeEmber then
            pcall(function()
                game:GetService('ReplicatedStorage'):WaitForChild('Modules'):WaitForChild('Net'):WaitForChild('RE/DragonDojoEmber'):FireServer()
            end)
        end
    end
end)
v37.Sea:AddToggle('ToggleReceiveQuest', {
    Title = 'Accept Red Flame Quest',
    Description = 'Enable Once To Get 1, Enable Again To Reset',
    Default = false,
}):OnChanged(function(p1054)
    _G.AutoReceiveQuest = p1054

    if _G.AutoReceiveQuest then
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(5661.5322265625, 1013.0907592773438, -334.9649963378906))
        Tween2(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938))
        spawn(function()
            pcall(function()
                while wait() do
                    game:GetService('ReplicatedStorage').Modules.Net:FindFirstChild('RF/DragonHunter'):InvokeServer(unpack({
                        {
                            Context = 'RequestQuest',
                        },
                    }))
                    game:GetService('ReplicatedStorage').Modules.Net:FindFirstChild('RF/DragonHunter'):InvokeServer(unpack({
                        {
                            Context = 'Check',
                        },
                    }))
                end
            end)
        end)
    end
end)

local u1055 = v37.Sea:AddParagraph({
    Title = 'Red Flame Quest Status',
    Content = '',
})

spawn(function()
    pcall(function()
        while wait() do
            local v1056 = game:GetService('ReplicatedStorage').Modules.Net:FindFirstChild('RF/DragonHunter'):InvokeServer(unpack({
                {
                    Context = 'Check',
                },
            }))

            if typeof(v1056) ~= 'table' then
                print(v1056)
            else
                local v1057, v1058, v1059 = pairs(v1056)

                while true do
                    local v1060

                    v1059, v1060 = v1057(v1058, v1059)

                    if v1059 == nil then
                        break
                    end
                    if v1060 == 'Defeat 3 Venomous Assailants on Hydra Island.' then
                        u1055:SetDesc('Defeat 3 Venomous Assailants on Hydra Island.')
                    elseif v1060 == 'Defeat 3 Hydra Enforcers on Hydra Island.' then
                        u1055:SetDesc('Defeat 3 Hydra Enforcers on Hydra Island.')
                    elseif v1060 == 'Destroy 10 trees on Hydra Island.' then
                        u1055:SetDesc('Destroy 10 trees on Hydra Island.')
                    end
                end
            end
        end
    end)
end)
v37.Sea:AddToggle('ToggleHydraTree', {
    Title = 'Break Trees On Hydra Island',
    Description = '',
    Default = false,
}):OnChanged(function(p1061)
    _G.AutoHydraTree = p1061
end)

local function u1064(p1062)
    local _VirtualInputManager2 = game:GetService('VirtualInputManager')

    _VirtualInputManager2:SendKeyEvent(true, p1062, false, game)
    _VirtualInputManager2:SendKeyEvent(false, p1062, false, game)
end
local function u1076(p1065)
    local _LocalPlayer6 = game.Players.LocalPlayer
    local _Backpack = _LocalPlayer6.Backpack
    local v1068, v1069, v1070 = pairs(_Backpack:GetChildren())

    while true do
        local v1071

        v1070, v1071 = v1068(v1069, v1070)

        if v1070 == nil then
            break
        end
        if v1071:IsA('Tool') and v1071.ToolTip == p1065 then
            v1071.Parent = _LocalPlayer6.Character

            local v1072, v1073, v1074 = ipairs({
                'Z',
                'X',
                'C',
                'V',
                'F',
            })

            while true do
                local u1075

                v1074, u1075 = v1072(v1073, v1074)

                if v1074 == nil then
                    break
                end

                wait()
                pcall(function()
                    u1064(u1075)
                end)
            end

            v1071.Parent = _Backpack

            break
        end
    end
end

local u1077 = {
    CFrame.new(5288.61962890625, 1005.4000244140625, 392.43011474609375),
    CFrame.new(5343.39453125, 1004.1998901367188, 361.0687561035156),
    CFrame.new(5235.78564453125, 1004.1998901367188, 431.4530944824219),
    CFrame.new(5321.30615234375, 1004.1998901367188, 440.8951416015625),
    CFrame.new(5258.96484375, 1004.1998901367188, 345.5052490234375),
}

spawn(function()
    while wait() do
        if _G.AutoHydraTree then
            AutoHaki()

            local v1078, v1079, v1080 = ipairs(u1077)

            while true do
                local v1081

                v1080, v1081 = v1078(v1079, v1080)

                if v1080 == nil or not _G.AutoHydraTree then
                    break
                end

                Tween2(v1081)
                wait()

                local _Character10 = game.Players.LocalPlayer.Character

                if _Character10 and (_Character10:FindFirstChild('HumanoidRootPart') and (_Character10.HumanoidRootPart.Position - v1081.Position).Magnitude <= 1) then
                    u1076('Melee')
                    u1076('Sword')
                    u1076('Gun')
                end
            end
        end
    end
end)
_Draco:AddButton({
    Title = 'Fly To Dragon Dojo Area',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(5661.5322265625, 1013.0907592773438, -334.9649963378906))
        Tween2(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938))
    end,
})
_Draco:AddButton({
    Title = 'Craft Volcanic Magnet',
    Description = '',
    Callback = function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'CraftItem',
            'Craft',
            'Volcanic Magnet',
        }))
    end,
})
v37.Sea:AddToggle('ToggleCollectFireFlowers', {
    Title = 'Collect Red Flowers',
    Description = '',
    Default = false,
}):OnChanged(function(p1083)
    _G.AutoCollectFireFlowers = p1083
end)
spawn(function()
    while wait() do
        local v1084 = _G.AutoCollectFireFlowers and workspace:FindFirstChild('FireFlowers')

        if v1084 then
            local v1085, v1086, v1087 = pairs(v1084:GetChildren())

            while true do
                local v1088

                v1087, v1088 = v1085(v1086, v1087)

                if v1087 == nil then
                    break
                end
                if v1088:IsA('Model') and v1088.PrimaryPart then
                    local _Position9 = v1088.PrimaryPart.Position

                    if (_Position9 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1 then
                        Tween2(CFrame.new(_Position9))
                    else
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                        wait(1.5)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 'E', false, game)
                    end
                end
            end
        end
    end
end)
v37.Sea:AddToggle('ToggleWhiteBelt', {
    Title = 'Grind White Belt',
    Description = '',
    Default = false,
}):OnChanged(function(p1090)
    _G.AutoLevel = p1090

    if p1090 then
        game:GetService('ReplicatedStorage').Modules.Net:FindFirstChild('RF/InteractDragonQuest'):InvokeServer(unpack({
            {
                NPC = 'Dojo Trainer',
                Command = 'RequestQuest',
            },
        }))
        spawn(function()
            while _G.AutoLevel do
                game:GetService('ReplicatedStorage').Modules.Net:FindFirstChild('RF/InteractDragonQuest'):InvokeServer(unpack({
                    {
                        NPC = 'Dojo Trainer',
                        Command = 'ClaimQuest',
                    },
                }))
                wait()
            end
        end)
    end
end)
v37.Sea:AddParagraph({
    Title = 'Complete Draco V4 Trial (Early)',
    Content = '',
})
v37.Sea:AddToggle('ToggleTrialTeleport', {
    Title = 'Fly To Draco Race Trial Door',
    Description = '',
    Default = false,
}):OnChanged(function(p1091)
    _G.AutoTrialTeleport = p1091
end)
spawn(function()
    while wait() do
        if _G.AutoTrialTeleport then
            local _TrialTeleport = workspace.Map.PrehistoricIsland:FindFirstChild('TrialTeleport')

            if _TrialTeleport and _TrialTeleport:IsA('Part') then
                Tween2(CFrame.new(_TrialTeleport.Position))
            end
        end
    end
end)
v37.Sea:AddSection('Volcanic Island')

local u1093 = v37.Sea:AddParagraph({
    Title = 'Volcanic Island Status',
    Content = '',
})

spawn(function()
    pcall(function()
        while wait() do
            if ggame:GetService('Workspace').Map:FindFirstChild('PrehistoricIsland') then
                u1093:SetDesc('Volcanic Island: ✅️')
            else
                u1093:SetDesc('Volcanic Island: ❌️')
            end
        end
    end)
end)
v37.Sea:AddToggle('ToggleTPVolcano', {
    Title = 'Fly To Volcanic Island',
    Description = '',
    Default = false,
}):OnChanged(function(p1094)
    _G.TweenToPrehistoric = p1094
end)
_Options.ToggleTPVolcano:SetValue(false)
spawn(function()
    local v1095 = nil

    while not v1095 do
        v1095 = game:GetService('Workspace').Map:FindFirstChild('PrehistoricIsland')

        wait()
    end
    while wait() do
        local v1096 = _G.TweenToPrehistoric and game:GetService('Workspace').Map:FindFirstChild('PrehistoricIsland')

        if v1096 then
            local _Core = v1096:FindFirstChild('Core')

            if _Core then
                _Core = v1096.Core:FindFirstChild('PrehistoricRelic')
            end
            if _Core then
                _Core = _Core:FindFirstChild('Skull')
            end
            if _Core then
                Tween2(CFrame.new(_Core.Position))

                _G.TweenToPrehistoric = false
            end
        end
    end
end)
v37.Sea:AddToggle('ToggleDefendVolcano', {
    Title = 'Defense',
    Description = '',
    Default = false,
}):OnChanged(function(p1098)
    _G.AutoDefendVolcano = p1098
end)
v37.Sea:AddToggle('ToggleMelee', {
    Title = 'Use Melee',
    Description = '',
    Default = false,
}):OnChanged(function(p1099)
    _G.UseMelee = p1099
end)
v37.Sea:AddToggle('ToggleSword', {
    Title = 'Use Sword',
    Description = '',
    Default = false,
}):OnChanged(function(p1100)
    _G.UseSword = p1100
end)
v37.Sea:AddToggle('ToggleGun', {
    Title = 'Use Gun',
    Description = '',
    Default = false,
}):OnChanged(function(p1101)
    _G.UseGun = p1101
end)

local function u1103(p1102)
    game:GetService('VirtualInputManager'):SendKeyEvent(true, p1102, false, game)
    game:GetService('VirtualInputManager'):SendKeyEvent(false, p1102, false, game)
end
local function u1119()
    local _InteriorLava = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild('InteriorLava')

    if _InteriorLava and _InteriorLava:IsA('Model') then
        _InteriorLava:Destroy()
    end

    local _PrehistoricIsland = game.Workspace.Map:FindFirstChild('PrehistoricIsland')

    if _PrehistoricIsland then
        local v1106, v1107, v1108 = pairs(_PrehistoricIsland:GetDescendants())

        while true do
            local v1109

            v1108, v1109 = v1106(v1107, v1108)

            if v1108 == nil then
                break
            end
            if v1109:IsA('Part') and v1109.Name:lower():find('lava') then
                v1109:Destroy()
            end
        end
    end

    local _PrehistoricIsland2 = game.Workspace.Map:FindFirstChild('PrehistoricIsland')

    if _PrehistoricIsland2 then
        local v1111, v1112, v1113 = pairs(_PrehistoricIsland2:GetDescendants())

        while true do
            local v1114

            v1113, v1114 = v1111(v1112, v1113)

            if v1113 == nil then
                break
            end
            if v1114:IsA('Model') then
                local v1115, v1116, v1117 = pairs(v1114:GetDescendants())

                while true do
                    local v1118

                    v1117, v1118 = v1115(v1116, v1117)

                    if v1117 == nil then
                        break
                    end
                    if v1118:IsA('MeshPart') and v1118.Name:lower():find('lava') then
                        v1118:Destroy()
                    end
                end
            end
        end
    end
end
local function u1127()
    local _VolcanoRocks = game.Workspace.Map.PrehistoricIsland.Core.VolcanoRocks
    local v1121, v1122, v1123 = pairs(_VolcanoRocks:GetChildren())

    while true do
        local v1124

        v1123, v1124 = v1121(v1122, v1123)

        if v1123 == nil then
            break
        end
        if v1124:IsA('Model') then
            local _volcanorock = v1124:FindFirstChild('volcanorock')

            if _volcanorock and _volcanorock:IsA('MeshPart') then
                local _Color = _volcanorock.Color

                if _Color == Color3.fromRGB(185, 53, 56) or _Color == Color3.fromRGB(185, 53, 57) then
                    return _volcanorock
                end
            end
        end
    end

    return nil
end
local function u1139(p1128)
    local _LocalPlayer7 = game.Players.LocalPlayer
    local _Backpack2 = _LocalPlayer7.Backpack
    local v1131, v1132, v1133 = pairs(_Backpack2:GetChildren())

    while true do
        local v1134

        v1133, v1134 = v1131(v1132, v1133)

        if v1133 == nil then
            break
        end
        if v1134:IsA('Tool') and v1134.ToolTip == p1128 then
            v1134.Parent = _LocalPlayer7.Character

            local v1135, v1136, v1137 = ipairs({
                'Z',
                'X',
                'C',
                'V',
                'F',
            })

            while true do
                local u1138

                v1137, u1138 = v1135(v1136, v1137)

                if v1137 == nil then
                    break
                end

                wait()
                pcall(function()
                    u1103(u1138)
                end)
            end

            v1134.Parent = _Backpack2

            break
        end
    end
end

spawn(function()
    while wait() do
        if _G.AutoDefendVolcano then
            AutoHaki()
            pcall(u1119)

            local v1140 = u1127()

            if v1140 then
                local v1141 = CFrame.new(v1140.Position + Vector3.new(0, 0, 0))

                Tween2(v1141)

                local _Color2 = v1140.Color

                if _Color2 == Color3.fromRGB(185, 53, 56) or _Color2 == Color3.fromRGB(185, 53, 57) then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1140.Position - Vector3.new(0, 0, 0)).Magnitude <= 1 then
                        if _G.UseMelee then
                            u1139('Melee')
                        end
                        if _G.UseSword then
                            u1139('Sword')
                        end
                        if _G.UseGun then
                            u1139('Gun')
                        end
                    end

                    _G.TweenToPrehistoric = false
                else
                    u1127()
                end
            else
                _G.TweenToPrehistoric = true
            end
        end
    end
end)
v37.Sea:AddToggle('ToggleKillAura', {
    Title = 'Hunt Golems Aura',
    Description = '',
    Default = false,
}):OnChanged(function(p1143)
    KillAura = p1143
end)
_Options.ToggleKillAura:SetValue(false)
spawn(function()
    while wait() do
        if KillAura then
            pcall(function()
                local v1144, v1145, v1146 = pairs(game.Workspace.Enemies:GetDescendants())

                while true do
                    local v1147

                    v1146, v1147 = v1144(v1145, v1146)

                    if v1146 == nil then
                        break
                    end
                    if v1147:FindFirstChild('Humanoid') and (v1147:FindFirstChild('HumanoidRootPart') and v1147.Humanoid.Health > 0) then
                        repeat
                            task.wait()
                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)

                            v1147.Humanoid.Health = 0
                            v1147.HumanoidRootPart.CanCollide = false
                        until not KillAura or (not v1147.Parent or v1147.Humanoid.Health <= 0)
                    end
                end
            end)
        end
    end
end)
v37.Sea:AddToggle('ToggleCollectBone', {
    Title = 'Collect Bones',
    Description = '',
    Default = false,
}):OnChanged(function(p1148)
    _G.AutoCollectBone = p1148
end)
spawn(function()
    while wait() do
        if _G.AutoCollectBone then
            local v1149, v1150, v1151 = pairs(workspace:GetDescendants())

            while true do
                local v1152

                v1151, v1152 = v1149(v1150, v1151)

                if v1151 == nil then
                    break
                end
                if v1152:IsA('BasePart') and v1152.Name == 'DinoBone' then
                    Tween2(CFrame.new(v1152.Position))
                end
            end
        end
    end
end)
v37.Sea:AddToggle('ToggleCollectEgg', {
    Title = 'Collect Eggs',
    Description = '',
    Default = false,
}):OnChanged(function(p1153)
    _G.AutoCollectEgg = p1153
end)
spawn(function()
    while wait() do
        if _G.AutoCollectEgg then
            local v1154 = workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:GetChildren()

            if #v1154 > 0 then
                local v1155 = v1154[math.random(1, #v1154)]

                if v1155:IsA('Model') and v1155.PrimaryPart then
                    Tween2(v1155.PrimaryPart.CFrame)

                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1155.PrimaryPart.Position).Magnitude <= 1 then
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                        wait(1.5)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 'E', false, game)
                    end
                end
            end
        end
    end
end)
u33:Notify({
    Title = 'barbecue blox kid hub',
    Content = 'Loaded Successfully',
    Duration = 10,
})
