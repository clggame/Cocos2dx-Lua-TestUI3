
local MainScene = class("MainScene", cc.load("mvc").ViewBase)

MainScene.RESOURCE_FILENAME = "MainScene.csb"

function MainScene:onCreate()
    printf("resource node = %s", tostring(self:getResourceNode()))     
    self._btn_left = self.resourceNode_:getChildByName("enter_game")    
    print("------------click me--------0000")    
    self._btn_left:addClickEventListener(function()
            print("------------click me--------")                
        end        
    )

    self._game1 = cc.CSLoader:createNode("Game/game1.csb")
    self:addChild(self._game1)
    self._game1:setVisible(true)
end

return MainScene
