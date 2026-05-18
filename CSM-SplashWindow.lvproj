<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="_Example" Type="Folder">
			<Item Name="Test SplashWindow1.vi" Type="VI" URL="../_Example/Test SplashWindow1.vi"/>
			<Item Name="Test SplashWindow2.vi" Type="VI" URL="../_Example/Test SplashWindow2.vi"/>
			<Item Name="Test SplashWindow3.vi" Type="VI" URL="../_Example/Test SplashWindow3.vi"/>
		</Item>
		<Item Name="CSM-SplashWindow.lvlib" Type="Library" URL="../CSM-SplashWindow.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="user.lib" Type="Folder">
				<Item Name="API String Arguments Support.lvlib" Type="Library" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/addons/API-String-Arugments-Support/API String Arguments Support.lvlib"/>
				<Item Name="Communicable State Machine.lvlib" Type="Library" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/Communicable State Machine.lvlib"/>
				<Item Name="CSM Module Template.vi" Type="VI" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/CSM Module Template.vi"/>
				<Item Name="CSM Shared.lvlib" Type="Library" URL="/&lt;userlib&gt;/_NEVSTOP/Communicable State Machine(CSM)/_Shared/CSM Shared.lvlib"/>
				<Item Name="Not Empty Array_nevstop.vim" Type="VI" URL="/&lt;userlib&gt;/NEVSTOP-Programming-Palette/Array/Not Empty Array_nevstop.vim"/>
				<Item Name="TagDB RefManager.lvlib" Type="Library" URL="/&lt;userlib&gt;/_NEVSTOP/TagDB/Add-ons/RefManager/TagDB RefManager.lvlib"/>
				<Item Name="TagDB.lvlib" Type="Library" URL="/&lt;userlib&gt;/_NEVSTOP/TagDB/TagDB.lvlib"/>
				<Item Name="Using ParentVIRef If Input Invalid_nevstop.vi" Type="VI" URL="/&lt;userlib&gt;/NEVSTOP-Programming-Palette/Application/Using ParentVIRef If Input Invalid_nevstop.vi"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Add State(s) to Queue__JKI_lib_State_Machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Add State(s) to Queue__JKI_lib_State_Machine.vi"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="Build State String with Arguments__JKI_lib_State_Machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Build State String with Arguments__JKI_lib_State_Machine.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="NI_Data Type.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/Data Type/NI_Data Type.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
