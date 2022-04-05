# esx-printer
Convert of qb-printer
You need to change notify to your liking

## Requirements
ESX_LEGACY
OX_INVENTORY
qtarget
### qtarget event and item

```
local printers = {
		`prop_printer_01`,
		`prop_printer_02`,
		`v_res_printer`
	}
	AddTargetModel(printers, {
        options = {
            {
                event = "useprinter",
                icon = "fas fa-circle",
                label = "Use Printer",
            },
        },
            
        distance = 2.5
    })```
    
Item

```['printerdocument'] = {
		label = 'Printed Document',
		weight = 10,
		stack = false,
		close = true,
		consume = 0
    },```


