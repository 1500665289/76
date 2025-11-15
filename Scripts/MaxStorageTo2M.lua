local tbMSTM = GameMain:NewMod("MaxStorageTo2M");--先注册一个新的MOD模块

function tbMSTM:OnInit()
	print("MaxStorageTo2M init");
end

function tbMSTM:OnEnter()
	print("MaxStorageTo2M enter");
	--[[CS.XiaWorld.OutspreadMgr.Instance:GetRegion("HeYin").MaxStorageSize = 2000000;
	CS.XiaWorld.OutspreadMgr.Instance:GetRegion("GuanHai").MaxStorageSize = 2000000;
	CS.XiaWorld.OutspreadMgr.Instance:GetRegion("PanShe").MaxStorageSize = 2000000;
	CS.XiaWorld.OutspreadMgr.Instance:GetRegion("Feng").MaxStorageSize = 2000000;
	CS.XiaWorld.OutspreadMgr.Instance:GetRegion("DaLiang").MaxStorageSize = 2000000;--]]
	local regionList = {"zhongyuan", "JiangAnWoYe", "DaXueYuan", "DaMo", "NanHuang", "OurPlace"};
	if CS.XiaWorld.OutspreadMgr.Instance:GetRegion("zhongyuan") ~= nil then
		CS.XiaWorld.OutspreadMgr.Instance:GetRegion("zhongyuan").MaxStorageSize = 2000000;
	end
	if CS.XiaWorld.OutspreadMgr.Instance:GetRegion("JiangAnWoYe") ~= nil then
		CS.XiaWorld.OutspreadMgr.Instance:GetRegion("JiangAnWoYe").MaxStorageSize = 2000000;
	end
	if CS.XiaWorld.OutspreadMgr.Instance:GetRegion("DaXueYuan") ~= nil then
		CS.XiaWorld.OutspreadMgr.Instance:GetRegion("DaXueYuan").MaxStorageSize = 2000000;
	end
	if CS.XiaWorld.OutspreadMgr.Instance:GetRegion("DaMo") ~= nil then
		CS.XiaWorld.OutspreadMgr.Instance:GetRegion("DaMo").MaxStorageSize = 2000000;
	end
	if CS.XiaWorld.OutspreadMgr.Instance:GetRegion("NanHuang") ~= nil then
		CS.XiaWorld.OutspreadMgr.Instance:GetRegion("NanHuang").MaxStorageSize = 2000000;
	end
	if CS.XiaWorld.OutspreadMgr.Instance:GetRegion("OurPlace") ~= nil then
		CS.XiaWorld.OutspreadMgr.Instance:GetRegion("OurPlace").MaxStorageSize = 2000000;
	end
end

----------
--访问方式演示 可以直接在Story中调用模块
local tbTest = GameMain:GetMod("MaxStorageTo2M");
if tbTest ~= nil then
	print(tbTest:Test(1,3));
end
