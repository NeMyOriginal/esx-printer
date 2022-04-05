# esx-printer
Convert of qb-printer
You need to change notify to your liking

## Requirements
ESX_LEGACY
OX_INVENTORY
qtarget
### qtarget
```	local printers = {
		`prop_printer_01`,
		`prop_printer_02`,
		`v_res_printer`
	}
	AddTargetModel(printers, {
        options = {
            {
                event = "useprinter",
                icon = "fas fa-circle",
                label = "Koristi Printer",
            },
        },
            
        distance = 2.5
    })```
    
Item

```['printerdocument'] = {
		label = 'printerdocument',
		weight = 110,
		stack = false,
		close = true,
		consume = 0
    },```


