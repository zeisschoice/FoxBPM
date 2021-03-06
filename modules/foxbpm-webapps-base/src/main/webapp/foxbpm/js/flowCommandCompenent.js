/**
 * 
 */

Foxbpm.FlowCommandCompenent = function (flowConfig){
	 this._config = flowConfig;
};


Foxbpm.FlowCommandCompenent.prototype={
	init:function(){
		var self = this;
		var toolbarsDiv = $("#toolbar");
		 $.ajax({
	         type: "get",//使用get方法访问后台
	         dataType: "json",//返回json格式的数据
	         url: _bpmServiceUrl+"/task/taskCommands",//要访问的后台地址
	         data:{key:_processDefinitionKey,taskId:_taskId},
	         success: function(msg){//msg为返回的数据，在这里做数据绑定
	             var data = msg.data;
	             
	             //画任务命令
	             $.each(data, function(i, n){
	                 var toolBarDiv = $("<div class='btn-normal'></div>");
	                 toolBarDiv.attr("commandType",n.type);
	                 toolBarDiv.attr("commandId",n.id);
	                 toolBarDiv.attr("id","btn_"+i);
	                 var name = "<a>"+n.name+"</a>";
	                 toolBarDiv.append(name);
	                 toolbarsDiv.append(toolBarDiv);
	             });
	             
	             //给任务命令赋值事件
	             $("div[commandType]").click(function(){
	            	 
	            	 var data = {};
	            	 data.processDefinitionKey = _processDefinitionKey;
	            	 data.processInstanceId = _processInstanceId;
	            	 data.taskId = _taskId;
	            	 
	            	 var result = null;
	            	 var commandType = $(this).attr("commandType");
	            	 
	            	 if(Foxbpm.commandHandler[commandType] !== undefined){
	            		 result = Foxbpm.commandHandler[commandType](data);
	            		 if(result === undefined || result == null){
	            			 return;
	            		 }
	                	 if(result.status == "error"){
	                		 alert(result.message);
	                		 return;
	                	 }else if(result.status == "success"){
	                		 return ;
	                	 }
	            	 }
	            	 
	            	 //流程提交所需信息
	            	 var commandObj = {};
	            	 commandObj.processDefinitionKey=_processDefinitionKey;
	            	 commandObj.processInstanceId = _processInstanceId;
	            	 commandObj.taskId=_taskId;
	            	 commandObj.commandId=$(this).attr("commandId");
	            	 commandObj.commandType = commandType;
	            	 commandObj.commandParams = result;
	            	 
	            	 commandObj.bizKey = self._config.getBizKey();
	            	 commandObj.taskComment = self._config.getTaskComment();
	            	 self._config.flowCommit(commandObj);
	        	 });
	         }
		 });
	}
};
