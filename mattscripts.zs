import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.item.IItemStack;

val 3x3BlockItems = [
    <item:ad_astra:steel_block>,
    <item:mekanism:block_steel>,
    <item:electrodynamics:resourceblocksteel>
] as IItemStack[];

val 3x3BlockIngredients = [
    <item:ad_astra:steel_ingot>,
    <item:mekanism:ingot_steel>,
    <item:electrodynamics:ingotsteel>

] as IItemStack[];

val 3x3BlockNames = [
    "steel_block_ad_astra",
    "steel_block_mekanism",
    "steel_block_electrodynamics",
] as string;


for item in 3x3BlockItems {
    craftingTable.remove(item);
}

for i, item in 3x3BlockItems {
    make3x3Block(3x3BlockNames[i], 3x3BlockItems[i], 3x3BlockIngredients[i]);
}


/*

public function make3x3Block(recipeName as string, 3x3BlockOutput as IItemStack, blockInputIngredient as IItemStack) as void {
     craftingTable.addShapeless(recipeName, 3x3BlockOutput, 
     [blockInputIngredient, blockInputIngredient, blockInputIngredient,
      blockInputIngredient, blockInputIngredient, blockInputIngredient,
      blockInputIngredient, blockInputIngredient, blockInputIngredient]);
}



craftingTable.addShapeless("steel_block_ad_astra", <item:ad_astra:steel_block>,
    [<item:ad_astra:steel_ingot>, <item:ad_astra:steel_ingot>, <item:ad_astra:steel_ingot>,
    <item:ad_astra:steel_ingot>,<item:ad_astra:steel_ingot>,<item:ad_astra:steel_ingot>,
    <item:ad_astra:steel_ingot>,<item:ad_astra:steel_ingot>,<item:ad_astra:steel_ingot>]);

craftingTable.addShapeless("steel_block_mekanism", <item:mekanism:block_steel>,
    [<item:mekanism:ingot_steel>,<item:mekanism:ingot_steel>,<item:mekanism:ingot_steel>,
    <item:mekanism:ingot_steel>,<item:mekanism:ingot_steel>,<item:mekanism:ingot_steel>,
    <item:mekanism:ingot_steel>,<item:mekanism:ingot_steel>,<item:mekanism:ingot_steel>]);

craftingTable.addShapeless("steel_block_electrodynamics", <item:electrodynamics:resourceblocksteel>,
    [<item:electrodynamics:ingotsteel>,<item:electrodynamics:ingotsteel>,<item:electrodynamics:ingotsteel>,
    <item:electrodynamics:ingotsteel>,<item:electrodynamics:ingotsteel>,<item:electrodynamics:ingotsteel>,
    <item:electrodynamics:ingotsteel>,<item:electrodynamics:ingotsteel>,<item:electrodynamics:ingotsteel>]);
    */