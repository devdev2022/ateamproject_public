<%@page contentType="text/html; charset=UTF-8"%>
<%

%>


<style>

.w-layout-grid {
  display: -ms-grid;
  display: grid;
  grid-auto-columns: 1fr;
  -ms-grid-columns: 1fr 1fr;
  grid-template-columns: 1fr 1fr;
  -ms-grid-rows: auto auto;
  grid-template-rows: auto auto;
  grid-row-gap: 16px;
  grid-column-gap: 16px;
}

.grid {
  padding-top: 0px;
  -ms-grid-columns: 20% 20% 20% 20%;
  grid-template-columns: 20% 20% 20% 20%;
  -ms-grid-rows: 100% 100% 100%;
  grid-template-rows: 100% 100% 100%;
}

.panel {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
  -webkit-justify-content: center;
  -ms-flex-pack: center;
  justify-content: center;
  grid-auto-columns: 1fr;
  grid-column-gap: 16px;
  grid-row-gap: 16px;
  -ms-grid-columns: 1fr 1fr 1fr;
  grid-template-columns: 1fr 1fr 1fr;
  -ms-grid-rows: auto auto auto;
  grid-template-rows: auto auto auto;
}

.grid_container {
  display: -ms-grid;
  display: grid;
  padding-top: 0%;
  grid-auto-columns: 1fr;
  grid-column-gap: 16px;
  grid-row-gap: 16px;
  -ms-grid-columns: 1fr 1fr 1fr 1fr;
  grid-template-columns: 1fr 1fr 1fr 1fr;
  -ms-grid-rows: 1fr auto auto;
  grid-template-rows: 1fr auto auto;
  background-color: transparent;
}

.grid_item {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  width: 15vw;
  height: 15vw;
  padding: 0.5vw;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
  -ms-flex-direction: column;
  flex-direction: column;
  -webkit-box-pack: center;
  -webkit-justify-content: center;
  -ms-flex-pack: center;
  justify-content: center;
  -webkit-box-align: stretch;
  -webkit-align-items: stretch;
  -ms-flex-align: stretch;
  align-items: stretch;
  background-color: #4b4343;
}

.grid_upper {
  height: 60%;
  background-color: #fff;
}

.grid_lower {
  display: -ms-grid;
  display: grid;
  height: 40%;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
  -ms-flex-direction: column;
  flex-direction: column;
  grid-auto-columns: 1fr;
  grid-column-gap: 0px;
  grid-row-gap: 0px;
  -ms-grid-columns: 1fr 1fr;
  grid-template-columns: 1fr 1fr;
  -ms-grid-rows: auto auto auto;
  grid-template-rows: auto auto auto;
  background-color: #080808;
}

.grid_main {
  -webkit-box-pack: center;
  -webkit-justify-content: center;
  -ms-flex-pack: center;
  justify-content: center;
  justify-items: center;
  -webkit-box-align: center;
  -webkit-align-items: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-align-content: center;
  -ms-flex-line-pack: center;
  align-content: center;
  -ms-grid-row-align: center;
  align-self: center;
  -ms-grid-columns: 1fr 1fr 1fr 1fr;
  grid-template-columns: 1fr 1fr 1fr 1fr;
  -ms-grid-rows: 0.25fr 0.25fr 0.25fr;
  grid-template-rows: 0.25fr 0.25fr 0.25fr;
}

#w-node-d1c3c07c-8ff6-dd72-39b2-8cb50c75383f-69768b56 {
  -ms-grid-row: span 1;
  grid-row-start: span 1;
  -ms-grid-row-span: 1;
  grid-row-end: span 1;
  -ms-grid-column: span 1;
  grid-column-start: span 1;
  -ms-grid-column-span: 1;
  grid-column-end: span 1;
  -ms-grid-row-align: center;
  align-self: center;
  -ms-grid-column-align: center;
  justify-self: center;
}

#w-node-b4e60396-3f5c-2666-cda1-5f36c6c24f6b-69768b56 {
  -ms-grid-row: span 1;
  grid-row-start: span 1;
  -ms-grid-row-span: 1;
  grid-row-end: span 1;
  -ms-grid-column: span 1;
  grid-column-start: span 1;
  -ms-grid-column-span: 1;
  grid-column-end: span 1;
  -ms-grid-row-align: center;
  align-self: center;
  -ms-grid-column-align: center;
  justify-self: center;
}

#w-node-_39ee5758-19f5-2c1d-72d0-dbec2d870d4b-69768b56 {
  -ms-grid-row: span 1;
  grid-row-start: span 1;
  -ms-grid-row-span: 1;
  grid-row-end: span 1;
  -ms-grid-column: span 1;
  grid-column-start: span 1;
  -ms-grid-column-span: 1;
  grid-column-end: span 1;
  -ms-grid-row-align: center;
  align-self: center;
  -ms-grid-column-align: center;
  justify-self: center;
}

#w-node-_000580c8-6ed2-1e99-a326-036597573d24-69768b56 {
  -ms-grid-row: span 1;
  grid-row-start: span 1;
  -ms-grid-row-span: 1;
  grid-row-end: span 1;
  -ms-grid-column: span 1;
  grid-column-start: span 1;
  -ms-grid-column-span: 1;
  grid-column-end: span 1;
  -ms-grid-row-align: center;
  align-self: center;
  -ms-grid-column-align: center;
  justify-self: center;
}

#w-node-c4e0159a-b068-3c84-8ecf-a752c27fde1c-69768b56 {
  -ms-grid-row: span 1;
  grid-row-start: span 1;
  -ms-grid-row-span: 1;
  grid-row-end: span 1;
  -ms-grid-column: span 1;
  grid-column-start: span 1;
  -ms-grid-column-span: 1;
  grid-column-end: span 1;
  -ms-grid-row-align: center;
  align-self: center;
  -ms-grid-column-align: center;
  justify-self: center;
}

#w-node-_21580256-8792-1e30-1ec8-5c4f5252f5de-69768b56 {
  -ms-grid-row: span 1;
  grid-row-start: span 1;
  -ms-grid-row-span: 1;
  grid-row-end: span 1;
  -ms-grid-column: span 1;
  grid-column-start: span 1;
  -ms-grid-column-span: 1;
  grid-column-end: span 1;
  -ms-grid-row-align: center;
  align-self: center;
  -ms-grid-column-align: center;
  justify-self: center;
}

#w-node-_7213e12e-3970-9480-b0ef-dadb08d6a0c7-69768b56 {
  -ms-grid-row: span 1;
  grid-row-start: span 1;
  -ms-grid-row-span: 1;
  grid-row-end: span 1;
  -ms-grid-column: span 1;
  grid-column-start: span 1;
  -ms-grid-column-span: 1;
  grid-column-end: span 1;
  -ms-grid-row-align: center;
  align-self: center;
  -ms-grid-column-align: center;
  justify-self: center;
}

#w-node-cc52f553-dd95-4f3f-1873-f783a6cec922-69768b56 {
  -ms-grid-row: span 1;
  grid-row-start: span 1;
  -ms-grid-row-span: 1;
  grid-row-end: span 1;
  -ms-grid-column: span 1;
  grid-column-start: span 1;
  -ms-grid-column-span: 1;
  grid-column-end: span 1;
  -ms-grid-row-align: center;
  align-self: center;
  -ms-grid-column-align: center;
  justify-self: center;
}

#w-node-_56282eef-749e-3724-ffc3-38ae1d9ebc1e-69768b56 {
  -ms-grid-row: span 1;
  grid-row-start: span 1;
  -ms-grid-row-span: 1;
  grid-row-end: span 1;
  -ms-grid-column: span 1;
  grid-column-start: span 1;
  -ms-grid-column-span: 1;
  grid-column-end: span 1;
  -ms-grid-row-align: center;
  align-self: center;
  -ms-grid-column-align: center;
  justify-self: center;
}

#w-node-_48bb873c-a2e8-9371-843f-4cbd377d67c3-69768b56 {
  -ms-grid-row: span 1;
  grid-row-start: span 1;
  -ms-grid-row-span: 1;
  grid-row-end: span 1;
  -ms-grid-column: span 1;
  grid-column-start: span 1;
  -ms-grid-column-span: 1;
  grid-column-end: span 1;
  -ms-grid-row-align: center;
  align-self: center;
  -ms-grid-column-align: center;
  justify-self: center;
}

#w-node-_00f1580a-04be-1bdc-6513-c4eb65b8d58f-69768b56 {
  -ms-grid-row: span 1;
  grid-row-start: span 1;
  -ms-grid-row-span: 1;
  grid-row-end: span 1;
  -ms-grid-column: span 1;
  grid-column-start: span 1;
  -ms-grid-column-span: 1;
  grid-column-end: span 1;
  -ms-grid-row-align: center;
  align-self: center;
  -ms-grid-column-align: center;
  justify-self: center;
}

#w-node-e4a98705-2c26-7f31-e30b-07e9f0171ba7-69768b56 {
  -ms-grid-row: span 1;
  grid-row-start: span 1;
  -ms-grid-row-span: 1;
  grid-row-end: span 1;
  -ms-grid-column: span 1;
  grid-column-start: span 1;
  -ms-grid-column-span: 1;
  grid-column-end: span 1;
  -ms-grid-row-align: center;
  align-self: center;
  -ms-grid-column-align: center;
  justify-self: center;
}
</style>

</head>
<div class="panel">
	<div class="w-layout-grid grid_main">
		<div id="w-node-d1c3c07c-8ff6-dd72-39b2-8cb50c75383f-69768b56"
			class="grid_item">
			<div class="grid_upper"></div>
			<div class="grid_lower"></div>
		</div>
		<div id="w-node-b4e60396-3f5c-2666-cda1-5f36c6c24f6b-69768b56"
			class="grid_item">
			<div class="grid_upper"></div>
			<div class="grid_lower"></div>
		</div>
		<div id="w-node-_39ee5758-19f5-2c1d-72d0-dbec2d870d4b-69768b56"
			class="grid_item">
			<div class="grid_upper"></div>
			<div class="grid_lower"></div>
		</div>
		<div id="w-node-_000580c8-6ed2-1e99-a326-036597573d24-69768b56"
			class="grid_item">
			<div class="grid_upper"></div>
			<div class="grid_lower"></div>
		</div>
		<div id="w-node-c4e0159a-b068-3c84-8ecf-a752c27fde1c-69768b56"
			class="grid_item">
			<div class="grid_upper"></div>
			<div class="grid_lower"></div>
		</div>
		<div id="w-node-_21580256-8792-1e30-1ec8-5c4f5252f5de-69768b56"
			class="grid_item">
			<div class="grid_upper"></div>
			<div class="grid_lower"></div>
		</div>
		<div id="w-node-_7213e12e-3970-9480-b0ef-dadb08d6a0c7-69768b56"
			class="grid_item">
			<div class="grid_upper"></div>
			<div class="grid_lower"></div>
		</div>
		<div id="w-node-cc52f553-dd95-4f3f-1873-f783a6cec922-69768b56"
			class="grid_item">
			<div class="grid_upper"></div>
			<div class="grid_lower"></div>
		</div>
		<div id="w-node-_56282eef-749e-3724-ffc3-38ae1d9ebc1e-69768b56"
			class="grid_item">
			<div class="grid_upper"></div>
			<div class="grid_lower"></div>
		</div>
		<div id="w-node-_48bb873c-a2e8-9371-843f-4cbd377d67c3-69768b56"
			class="grid_item">
			<div class="grid_upper"></div>
			<div class="grid_lower"></div>
		</div>
		<div id="w-node-_00f1580a-04be-1bdc-6513-c4eb65b8d58f-69768b56"
			class="grid_item">
			<div class="grid_upper"></div>
			<div class="grid_lower"></div>
		</div>
		<div id="w-node-e4a98705-2c26-7f31-e30b-07e9f0171ba7-69768b56"
			class="grid_item">
			<div class="grid_upper"></div>
			<div class="grid_lower"></div>
		</div>
	</div>
</div>
