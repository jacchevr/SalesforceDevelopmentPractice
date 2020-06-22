({
	
    onSingleSelectChange: function(cmp) {
    	var selectCmp = cmp.find("InputSelectSingle");
        cmp.set("v.whom", selectCmp.get("v.value"));
}
})