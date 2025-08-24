---@meta

---@class UBPDimensionCheatManager_C : UDimensionCheatManager
---@field UberGraphFrame FPointerToUberGraphFrame
---@field flag int32
---@field NextShotIsCrit boolean
---@field AsyncLevel boolean
---@field DemoCheats_Enabled boolean
---@field DemoCheats_InfiniteStamina boolean
---@field HalfDamageTakenModifierHandle FDamageComponentHandle
---@field TestGameplayTag FGameplayTag
---@field TestQuartzClock UQuartzClockHandle
---@field TestACS TArray<UAudioComponent>
---@field ACsCount int32
---@field ACIndex int32
---@field ACsEnable boolean
---@field Timestamp float
---@field Team ETeamAttitude::Type
---@field TestGameplayAttribute FGameplayAttribute
---@field ZombieSoftClass TSoftClassPtr<AActor>
---@field ['Actor Class'] TSoftClassPtr<AActor>
---@field HordeSize int32
---@field AllEnemyTypes TArray<EDimensionGameplayEnemyType>
---@field HordeEnemyTypes TArray<EDimensionGameplayEnemyType>
---@field EnemyType_Numbers TArray<int32>
---@field EnemyTypes int32
---@field EnemyTypes_Grenadier EDimensionGameplayEnemyType
---@field EnemyTypes_Heavy EDimensionGameplayEnemyType
---@field ['Max Elites'] int32
---@field ['Current Enemy Type'] EDimensionGameplayEnemyType
---@field ['Current Enemy Type Number'] int32
---@field ['Current EQS'] UEnvQuery
---@field CurrentSpawnInfo TArray<FDimensionGameplaySpawnInfo>
---@field CurrentHordeSize int32
---@field ['Out Coefficients'] TArray<float>
---@field ['Out Values'] TArray<int32>
---@field StarterItemsLoadingID int32
---@field ['Out Generated Curse'] FDimensionActiveCurse
---@field TestHandles TArray<FDataTableRowHandle>
---@field TestRandomElementsTimerHandle FTimerHandle
---@field TestRandomElementsCounter int32
---@field OverrideHandle1 FActiveGameplayEffectHandle
---@field OverrideHandle2 FActiveGameplayEffectHandle
---@field OverrideHandle3 FActiveGameplayEffectHandle
---@field CalamityName FString
---@field DoomClockSoftClassPtr TSoftClassPtr<ABPGameplayScenario_C>
---@field GnosisAttribute FGameplayAttribute
---@field GnosisLevelRequirement FDimensionAttributeRequirement
---@field WeaponQuestID int32
---@field WeaponObjectiveIndexes TArray<FDimensionQuestObjective>
---@field WeaponSlotID int32
---@field TowerPuzzleScenarioSoftClassPtr TSoftClassPtr<AActor>
---@field CalamityTotemSoftClassPtr TSoftClassPtr<AActor>
---@field VillageRoamersScenarioSoftClassPtr TSoftClassPtr<AActor>
---@field ProximityMineSoftClassPtr TSoftClassPtr<AActor>
---@field ItemQuestBoostingItems TMap<FString, FDataTableRowHandle>
---@field SCM_Footstep USoundMix
---@field QuestItemNameToHandleMap TMap<FString, FDataTableRowHandle>
---@field SwordsmanSoftClassPtr TSoftClassPtr<ADimensionCharacter>
local UBPDimensionCheatManager_C = {}

---@param Override boolean
function UBPDimensionCheatManager_C:OverrideDivineIntervention_Internal(Override) end
function UBPDimensionCheatManager_C:TestInteractions() end
---@param ClassName FString
---@param ResetGear boolean
function UBPDimensionCheatManager_C:ChangePlayerClass_Internal(ClassName, ResetGear) end
---@param RunSuccessful boolean
function UBPDimensionCheatManager_C:EndRun_Internal(RunSuccessful) end
---@param ItemIndex int32
function UBPDimensionCheatManager_C:ApplyCurseForItem(ItemIndex) end
---@param CurseChance float
---@param WitchfireCost int32
function UBPDimensionCheatManager_C:ApplyRandomCurse(CurseChance, WitchfireCost) end
---@param CurseDataIndex int32
---@param QuestIndex int32
---@param CurseChance float
---@param WitchfireCost int32
---@param ScaleCostWithThresholds boolean
function UBPDimensionCheatManager_C:ApplyCustomCurse(CurseDataIndex, QuestIndex, CurseChance, WitchfireCost, ScaleCostWithThresholds) end
---@param SpawnEffectSetNumber int32
---@param SpawnEffectData FSpawnEffectData
function UBPDimensionCheatManager_C:SelectSpawnEffects_Internal(SpawnEffectSetNumber, SpawnEffectData) end
---@param EnemiesMinimum int32
---@param EnemiesMaximum int32
---@param EnemyTypesCount int32
---@param MaxMajors int32
function UBPDimensionCheatManager_C:SpawnHorde_Internal(EnemiesMinimum, EnemiesMaximum, EnemyTypesCount, MaxMajors) end
---@param GameplayDirector ABPGameplayDirector_C
UBPDimensionCheatManager_C['Get Gameplay Director'] = function(self, GameplayDirector) end
function UBPDimensionCheatManager_C:TakeUIScreenshot() end
function UBPDimensionCheatManager_C:LogSaveLoadBetaInfo() end
function UBPDimensionCheatManager_C:NotifyBranchInformationDisplayed() end
function UBPDimensionCheatManager_C:NotifySaveFileTransferDialogDisplayed() end
function UBPDimensionCheatManager_C:ConfirmSaveFileTransfer() end
function UBPDimensionCheatManager_C:AddShadowCube() end
function UBPDimensionCheatManager_C:AddShadowOrb() end
function UBPDimensionCheatManager_C:AddEchoQuest() end
---@param QuestIndex int32
---@param ConditionCount int32
---@param ConditionIndexes TArray<int32>
function UBPDimensionCheatManager_C:AddShadowOrbCustom(QuestIndex, ConditionCount, ConditionIndexes) end
---@param QuestID int32
---@param ItemName FString
function UBPDimensionCheatManager_C:BoostItemQuest(QuestID, ItemName) end
---@param Name FString
function UBPDimensionCheatManager_C:AddQuestItem(Name) end
---@param Count int32
function UBPDimensionCheatManager_C:AddBoneGunFragment(Count) end
---@param Intensity Enum_MusicIntensity::Type
function UBPDimensionCheatManager_C:RequestMusicIntensity(Intensity) end
---@param EventType EQuartzCommandDelegateSubType
---@param Name FName
function UBPDimensionCheatManager_C:OnClockEVent(EventType, Name) end
---@param ClockName FName
---@param QuantizationType EQuartzCommandQuantization
---@param NumBars int32
---@param Beat int32
---@param BeatFraction float
function UBPDimensionCheatManager_C:OnQuantizationEvents(ClockName, QuantizationType, NumBars, Beat, BeatFraction) end
---@param Key FKey
---@param EventType EInputEvent
---@param bIsGamepadKey boolean
function UBPDimensionCheatManager_C:OnAnyKeyAction(Key, EventType, bIsGamepadKey) end
---@param EventType EQuartzCommandDelegateSubType
---@param Name FName
function UBPDimensionCheatManager_C:PlayQ1(EventType, Name) end
---@param EventType EQuartzCommandDelegateSubType
---@param Name FName
function UBPDimensionCheatManager_C:PlayQ2(EventType, Name) end
---@param EventType EQuartzCommandDelegateSubType
---@param Name FName
function UBPDimensionCheatManager_C:PlayQ3(EventType, Name) end
---@param Quantization EQuartzCommandQuantization
---@param Multiplier float
---@param Reference EQuarztQuantizationReference
---@param FireOnStart boolean
---@param Delegate boolean
function UBPDimensionCheatManager_C:PlayQ(Quantization, Multiplier, Reference, FireOnStart, Delegate) end
function UBPDimensionCheatManager_C:ClearProgressData() end
function UBPDimensionCheatManager_C:TakeMeToTheJudgementDay() end
function UBPDimensionCheatManager_C:UnlockCastle() end
function UBPDimensionCheatManager_C:SpankMeMommy() end
function UBPDimensionCheatManager_C:UnlockAllCalamities() end
---@param RunSuccessful boolean
function UBPDimensionCheatManager_C:EndRun(RunSuccessful) end
---@param ClassName FString
---@param ResetGear boolean
function UBPDimensionCheatManager_C:ChangePlayerClass(ClassName, ResetGear) end
function UBPDimensionCheatManager_C:WFModifier() end
function UBPDimensionCheatManager_C:UnlockLabPortal() end
function UBPDimensionCheatManager_C:LockLabPortal() end
---@param UseBoost boolean
function UBPDimensionCheatManager_C:FootStepBoost(UseBoost) end
---@param TimeDilation float
function UBPDimensionCheatManager_C:SLOMOADS(TimeDilation) end
---@param TimeDilation float
function UBPDimensionCheatManager_C:SLOMOAUTO(TimeDilation) end
---@param TimeDilationDelay float
function UBPDimensionCheatManager_C:SLOMOAUTODELAY(TimeDilationDelay) end
function UBPDimensionCheatManager_C:ForceMoveToLeash() end
---@param Sensitivity float
function UBPDimensionCheatManager_C:SetMouseSensitivity(Sensitivity) end
---@param Sensitivity float
function UBPDimensionCheatManager_C:SetGamepadSensitivity(Sensitivity) end
---@param Modifier float
function UBPDimensionCheatManager_C:SetMouseADSModifier(Modifier) end
---@param HorizontalInversion boolean
function UBPDimensionCheatManager_C:SetMouseHorizontalInversion(HorizontalInversion) end
---@param VerticalInversion boolean
function UBPDimensionCheatManager_C:SetMouseVerticalInversion(VerticalInversion) end
---@param Modifier float
function UBPDimensionCheatManager_C:SetGamepadADSModifier(Modifier) end
---@param VerticalInversion boolean
function UBPDimensionCheatManager_C:SetGamepadVerticalInversion(VerticalInversion) end
---@param HorizontalInversion boolean
function UBPDimensionCheatManager_C:SetGamepadHorizontalInversion(HorizontalInversion) end
function UBPDimensionCheatManager_C:ActivateAllBarriers() end
function UBPDimensionCheatManager_C:DeactivateAllBarriers() end
function UBPDimensionCheatManager_C:DumpEventLog() end
function UBPDimensionCheatManager_C:FreezeCalamity() end
---@param inString FString
function UBPDimensionCheatManager_C:TriggerCalamity(inString) end
function UBPDimensionCheatManager_C:TriggerBossFight() end
---@param EventTag FString
function UBPDimensionCheatManager_C:TriggerGameplayEvent(EventTag) end
function UBPDimensionCheatManager_C:DisableAutoLeash() end
---@param Mode FString
function UBPDimensionCheatManager_C:SetStaminaRegenMode(Mode) end
function UBPDimensionCheatManager_C:UnfreezeCalamity() end
---@param Value float
---@param OverrideDivineIntervention boolean
---@param SilentUpdate boolean
function UBPDimensionCheatManager_C:ModifyCalamityLevel(Value, OverrideDivineIntervention, SilentUpdate) end
function UBPDimensionCheatManager_C:DisablePatrolScenario() end
function UBPDimensionCheatManager_C:OpenTower() end
---@param FogStrenght float
---@param WitchworldStrenght float
function UBPDimensionCheatManager_C:SetGameplayFX(FogStrenght, WitchworldStrenght) end
function UBPDimensionCheatManager_C:TestRandomElements() end
function UBPDimensionCheatManager_C:TestRandomElements_Internal() end
function UBPDimensionCheatManager_C:TestElementalInstances() end
function UBPDimensionCheatManager_C:BERequestNewBoosterSet() end
---@param BoosterSetID int32
---@param Boosters TArray<FDataTableRowHandle>
function UBPDimensionCheatManager_C:OnBoosterPickerSetLoaded(BoosterSetID, Boosters) end
function UBPDimensionCheatManager_C:BEShow() end
---@param BoosterSetID int32
---@param NumberOfBoosters int32
function UBPDimensionCheatManager_C:BERevealRandomBoosters(BoosterSetID, NumberOfBoosters) end
---@param BoosterSetID int32
---@param BoosterIndex int32
function UBPDimensionCheatManager_C:BERevealBooster(BoosterSetID, BoosterIndex) end
---@param BoosterSetID int32
---@param BoosterIndex int32
function UBPDimensionCheatManager_C:BERerollBooster(BoosterSetID, BoosterIndex) end
---@param BoosterSetID int32
---@param BoosterIndex int32
function UBPDimensionCheatManager_C:BEDeactivateBooster(BoosterSetID, BoosterIndex) end
---@param BoosterSetID int32
---@param BoosterIndex int32
function UBPDimensionCheatManager_C:BEActivateBooster(BoosterSetID, BoosterIndex) end
---@param BoosterSetID int32
---@param BoosterIndex int32
function UBPDimensionCheatManager_C:BEUpgradeBooster(BoosterSetID, BoosterIndex) end
function UBPDimensionCheatManager_C:BESpawnTotem() end
---@param GodModeOption int32
function UBPDimensionCheatManager_C:GodMode(GodModeOption) end
---@param InfiniteAmmoOption int32
function UBPDimensionCheatManager_C:InfAmmo(InfiniteAmmoOption) end
function UBPDimensionCheatManager_C:DemoCheats() end
---@param PreviousWeapon ADimensionWeapon
---@param CurrentWeapon ADimensionWeapon
function UBPDimensionCheatManager_C:TransferDemoCheats(PreviousWeapon, CurrentWeapon) end
function UBPDimensionCheatManager_C:RecordingMode() end
---@param InfiniteStamina boolean
function UBPDimensionCheatManager_C:EnableDemoCheats(InfiniteStamina) end
function UBPDimensionCheatManager_C:DemoCheatsNoStamina() end
---@param BanditFireMode boolean
function UBPDimensionCheatManager_C:SetBanditPredictionMode(BanditFireMode) end
function UBPDimensionCheatManager_C:EnableProfiling() end
function UBPDimensionCheatManager_C:DisableProfiling() end
function UBPDimensionCheatManager_C:Heal() end
function UBPDimensionCheatManager_C:ClearInventory() end
function UBPDimensionCheatManager_C:LogInventory() end
function UBPDimensionCheatManager_C:LogInventoryDetailed() end
---@param ClearInventory boolean
function UBPDimensionCheatManager_C:LoadDefaultInventory(ClearInventory) end
---@param Type EWeaponType
---@param Subtype FString
---@param Rarity FString
function UBPDimensionCheatManager_C:GiveWeapon(Type, Subtype, Rarity) end
function UBPDimensionCheatManager_C:UnequipWeapon() end
---@param WitchfireAmount int32
function UBPDimensionCheatManager_C:AddWF(WitchfireAmount) end
---@param Count int32
function UBPDimensionCheatManager_C:AddWitchTotem(Count) end
---@param Amount int32
function UBPDimensionCheatManager_C:AddWFShard(Amount) end
function UBPDimensionCheatManager_C:LoadStarterItems() end
---@param LoadingID int32
---@param ItemBatch FDimensionItemBatch
function UBPDimensionCheatManager_C:OnStarterItemsBatchLoaded(LoadingID, ItemBatch) end
---@param GoldAmount int32
function UBPDimensionCheatManager_C:AddGold(GoldAmount) end
function UBPDimensionCheatManager_C:AddIncantationTier2() end
function UBPDimensionCheatManager_C:AddIncantationTier3() end
function UBPDimensionCheatManager_C:RemoveIncantations() end
function UBPDimensionCheatManager_C:RemoveQuestItems() end
function UBPDimensionCheatManager_C:UpgradeCurrentWeapon() end
---@param Count int32
function UBPDimensionCheatManager_C:AddBoosterToken(Count) end
---@param Count int32
function UBPDimensionCheatManager_C:AddSupplyKey(Count) end
function UBPDimensionCheatManager_C:AddIncantationAscension() end
function UBPDimensionCheatManager_C:AddTreasure() end
function UBPDimensionCheatManager_C:UnlockShippedItems() end
function UBPDimensionCheatManager_C:AddHealthPotion() end
function UBPDimensionCheatManager_C:RemoveHealthPotion() end
---@param Amount int32
function UBPDimensionCheatManager_C:AddWFCrystal(Amount) end
---@param Count int32
function UBPDimensionCheatManager_C:AddCorruptedWitchTotem(Count) end
---@param Count int32
function UBPDimensionCheatManager_C:AddEchoes(Count) end
function UBPDimensionCheatManager_C:AddAllMasksFragments() end
---@param DivineEssenceAmount int32
function UBPDimensionCheatManager_C:AddDE(DivineEssenceAmount) end
---@param Count int32
function UBPDimensionCheatManager_C:AddPreyerMasks(Count) end
function UBPDimensionCheatManager_C:AddNavigationCharts() end
function UBPDimensionCheatManager_C:SpawnCorruptedManifestation() end
---@param Count int32
function UBPDimensionCheatManager_C:AddAngelica(Count) end
function UBPDimensionCheatManager_C:SpawnManifestation() end
---@param Count int32
function UBPDimensionCheatManager_C:AddChargedShadowOrb(Count) end
---@param Count int32
function UBPDimensionCheatManager_C:AddChargedShadowCube(Count) end
---@param Name FString
function UBPDimensionCheatManager_C:AddWitchmark(Name) end
---@param Count int32
function UBPDimensionCheatManager_C:DropShadowOrb(Count) end
---@param Count int32
function UBPDimensionCheatManager_C:CompanionsAddBoons(Count) end
---@param Count int32
function UBPDimensionCheatManager_C:CompanionRemoveBoons(Count) end
function UBPDimensionCheatManager_C:AddRespecItem() end
function UBPDimensionCheatManager_C:UnlockAllBeads() end
function UBPDimensionCheatManager_C:LockAllBeads() end
function UBPDimensionCheatManager_C:Suicide() end
---@param ElementalType FString
---@param Duration float
---@param Power float
function UBPDimensionCheatManager_C:ApplyElementalStatus(ElementalType, Duration, Power) end
---@param NumberOfEntries int32
---@param CountFromEnd boolean
function UBPDimensionCheatManager_C:LogDamageLibrary(NumberOfEntries, CountFromEnd) end
---@param NumberOfEntries int32
---@param CountFromEnd boolean
function UBPDimensionCheatManager_C:LogDamageLibraryDetailed(NumberOfEntries, CountFromEnd) end
---@param StartIndex int32
---@param NumberOfEntries int32
---@param CountFromEnd boolean
function UBPDimensionCheatManager_C:LogDamageLibraryFromIndex(StartIndex, NumberOfEntries, CountFromEnd) end
---@param StartIndex int32
---@param NumberOfEntries int32
---@param CountFromEnd boolean
function UBPDimensionCheatManager_C:LogDamageLibraryDetailedFromIndex(StartIndex, NumberOfEntries, CountFromEnd) end
function UBPDimensionCheatManager_C:ClearDamageLibraryLogs() end
---@param Damage float
function UBPDimensionCheatManager_C:DealDamageToSelf(Damage) end
function UBPDimensionCheatManager_C:SpawnLotsOfItems() end
function UBPDimensionCheatManager_C:RemoveBarrierEffects() end
function UBPDimensionCheatManager_C:ReplaceWeaponMuzzleFX() end
function UBPDimensionCheatManager_C:ResetWeaponMuzzleFX() end
function UBPDimensionCheatManager_C:EventTest() end
function UBPDimensionCheatManager_C:DebugBiggerPreyer() end
function UBPDimensionCheatManager_C:TestSolidWF() end
function UBPDimensionCheatManager_C:TestItemStorageSorting() end
function UBPDimensionCheatManager_C:TestItemCollections() end
function UBPDimensionCheatManager_C:TestItemUpgrade() end
function UBPDimensionCheatManager_C:TestItemBatch() end
function UBPDimensionCheatManager_C:TestCurse() end
function UBPDimensionCheatManager_C:TestExhaustion() end
function UBPDimensionCheatManager_C:TestConsumeShard() end
function UBPDimensionCheatManager_C:TestSpawnCalamityTotem() end
function UBPDimensionCheatManager_C:TestAdventureLog() end
---@param DowngradeToLevel int32
function UBPDimensionCheatManager_C:TestApplyDowngradeCurse(DowngradeToLevel) end
function UBPDimensionCheatManager_C:TestSpawnMinesInFront() end
function UBPDimensionCheatManager_C:TestSpawnCursedKey() end
function UBPDimensionCheatManager_C:TestApplyBoosterHealth01() end
---@param Count int32
function UBPDimensionCheatManager_C:TestSpawnPresetSFX(Count) end
---@param Actor AActor
---@param AllocationID int32
function UBPDimensionCheatManager_C:OnTestPresetSpawnedCallback(Actor, AllocationID) end
function UBPDimensionCheatManager_C:TestScheduleBoss() end
function UBPDimensionCheatManager_C:DebugHidePreyerScreenUI() end
function UBPDimensionCheatManager_C:TestCalamityEffects() end
function UBPDimensionCheatManager_C:TestQuit() end
function UBPDimensionCheatManager_C:TestCalamityBatch() end
function UBPDimensionCheatManager_C:TestSoftStun() end
function UBPDimensionCheatManager_C:TestCursedItemDrop() end
function UBPDimensionCheatManager_C:TestAddShieldTag() end
function UBPDimensionCheatManager_C:TestRemoveShieldTag() end
function UBPDimensionCheatManager_C:TestDisableRadarForEnemies() end
function UBPDimensionCheatManager_C:TestManualQuestProgression() end
function UBPDimensionCheatManager_C:TestTreasureDrops() end
function UBPDimensionCheatManager_C:TestNewItems() end
function UBPDimensionCheatManager_C:TestAddMask() end
function UBPDimensionCheatManager_C:TestAddModifier() end
function UBPDimensionCheatManager_C:TestRadialDamage() end
function UBPDimensionCheatManager_C:TestDropEchoes() end
function UBPDimensionCheatManager_C:TestAllDrops() end
function UBPDimensionCheatManager_C:TestItemDrop() end
---@param Version int32
function UBPDimensionCheatManager_C:TestSetSettingsVersion(Version) end
function UBPDimensionCheatManager_C:TestAddStaticHealingEffect() end
function UBPDimensionCheatManager_C:TestSwordsmanKBSuicide() end
function UBPDimensionCheatManager_C:TestRotation() end
---@param Enemies_Minimum int32
---@param Enemies_Maximum int32
---@param Enemy_Types int32
---@param Max_Elites int32
function UBPDimensionCheatManager_C:SpawnHorde(Enemies_Minimum, Enemies_Maximum, Enemy_Types, Max_Elites) end
---@param SpawnPresetNumber int32
---@param SpawnEffectSetNumber int32
function UBPDimensionCheatManager_C:ScheduleSpawnTest(SpawnPresetNumber, SpawnEffectSetNumber) end
---@param Actor AActor
---@param AllocationID int32
function UBPDimensionCheatManager_C:OnActorSpawned_Internal(Actor, AllocationID) end
---@param Count int32
function UBPDimensionCheatManager_C:TestSpawnSpiders(Count) end
function UBPDimensionCheatManager_C:BindToSpawnManager() end
---@param SpawnedActor AActor
function UBPDimensionCheatManager_C:OnActorSpawned_Internal2(SpawnedActor) end
---@param Attribute FString
---@param Value int32
function UBPDimensionCheatManager_C:SetPlayerAttribute(Attribute, Value) end
---@param InVolume float
function UBPDimensionCheatManager_C:SetMusicVolume(InVolume) end
---@param WarninSystemMode int32
function UBPDimensionCheatManager_C:WarningSystem(WarninSystemMode) end
function UBPDimensionCheatManager_C:Obliviate() end
---@param NewParam boolean
function UBPDimensionCheatManager_C:EnableVisibilityBoost(NewParam) end
---@param NewParam boolean
function UBPDimensionCheatManager_C:EnableOutlineBoost(NewParam) end
function UBPDimensionCheatManager_C:ToggleWarningMarkers() end
function UBPDimensionCheatManager_C:ToggleHitMarkers() end
function UBPDimensionCheatManager_C:ToggleGameplayEventLog() end
function UBPDimensionCheatManager_C:ToggleAbilityGlobalIgnoreCooldowns() end
function UBPDimensionCheatManager_C:ToggleAbilityGlobalIgnoreCosts() end
function UBPDimensionCheatManager_C:ToggleGameplay() end
---@param WitchworldWeight float
function UBPDimensionCheatManager_C:OverrideWitchworldWeight(WitchworldWeight) end
---@param WitchworldWeight int32
function UBPDimensionCheatManager_C:OverrideWitchworldSequence_DEPRECATED_NEEDS_REWORK(WitchworldWeight) end
---@param TimeScale float
function UBPDimensionCheatManager_C:EnemyTimeScale(TimeScale) end
function UBPDimensionCheatManager_C:ReceiveInitCheatManager() end
---@param InventoryComponent UDimensionInventoryComponent
---@param PreviousWeapon ADimensionWeapon
---@param CurrentWeapon ADimensionWeapon
function UBPDimensionCheatManager_C:OnWeaponSwitch(InventoryComponent, PreviousWeapon, CurrentWeapon) end
---@param InitObjectTags TArray<FGameplayTag>
---@param InitObjects TArray<UObject>
function UBPDimensionCheatManager_C:OnPlayerInitialized(InitObjectTags, InitObjects) end
function UBPDimensionCheatManager_C:ToggleStaminaGraph() end
function UBPDimensionCheatManager_C:ToggleAdrenalineSystem() end
function UBPDimensionCheatManager_C:DematerializeEmAll() end
function UBPDimensionCheatManager_C:ToggleBreathing() end
---@param WitchworldWeight float
function UBPDimensionCheatManager_C:OverrideCalamityWeight(WitchworldWeight) end
---@param NormalWorldLabel FString
function UBPDimensionCheatManager_C:OverrideNormalWorldLable(NormalWorldLabel) end
---@param WitchWorldLabel FString
function UBPDimensionCheatManager_C:OverrideCalamityLabel(WitchWorldLabel) end
function UBPDimensionCheatManager_C:ListSequenceLabels() end
function UBPDimensionCheatManager_C:BlockCalamities() end
function UBPDimensionCheatManager_C:UnblockCalamities() end
---@param NewCrosshairVisibility boolean
function UBPDimensionCheatManager_C:SetCrosshairVisibility(NewCrosshairVisibility) end
---@param AspectRatioX int32
---@param AspectRatioY int32
function UBPDimensionCheatManager_C:LimitHUDAspectRatio(AspectRatioX, AspectRatioY) end
---@param NewCrosshairLowered boolean
function UBPDimensionCheatManager_C:SetCrosshairLowered(NewCrosshairLowered) end
---@param EntryPoint int32
function UBPDimensionCheatManager_C:ExecuteUbergraph_BPDimensionCheatManager(EntryPoint) end


---@class UDimensionCheatManager : UCheatManager
---@field DefaultExecCommand FString
---@field Cheats TArray<UCheatBase>
---@field LevelSoftPtr TSoftObjectPtr<UWorld>
local UDimensionCheatManager = {}

---@param InArguments FString
function UDimensionCheatManager:WF(InArguments) end
function UDimensionCheatManager:UsainBolt() end
function UDimensionCheatManager:UnloadAllLoadedAssets() end
---@param RowIndex int32
function UDimensionCheatManager:UnequipBoosterProphecy(RowIndex) end
function UDimensionCheatManager:TeleportToClipboardTransform() end
---@param ProjectRowName FName
function UDimensionCheatManager:StartResearch(ProjectRowName) end
function UDimensionCheatManager:SpawnAllEnemies() end
---@param CategoryCount int32
---@param bOverrideFilteredBoosterOnly boolean
function UDimensionCheatManager:SimulateNewBoosterRow(CategoryCount, bOverrideFilteredBoosterOnly) end
function UDimensionCheatManager:Shredder() end
---@param Seed int32
function UDimensionCheatManager:SetNewSeed(Seed) end
---@param Value int32
function UDimensionCheatManager:SetGnosis(Value) end
---@param bEnabled boolean
function UDimensionCheatManager:SetCorruptedArcanaEnabled(bEnabled) end
---@param QuestID int32
---@param ObjectiveIndex int32
function UDimensionCheatManager:ResetQuestObjective(QuestID, ObjectiveIndex) end
---@param QuestID int32
function UDimensionCheatManager:ResetQuest(QuestID) end
function UDimensionCheatManager:ResetGnosisLevelUpCounter() end
function UDimensionCheatManager:ResetBoosters() end
function UDimensionCheatManager:ResetAmmoToDefault() end
---@param QuestID int32
function UDimensionCheatManager:RemoveQuest(QuestID) end
---@param AbilityName FString
function UDimensionCheatManager:RemoveForceAbility(AbilityName) end
---@param AbilityName FString
function UDimensionCheatManager:RemoveBlockAbility(AbilityName) end
function UDimensionCheatManager:RefillHealthPotions() end
function UDimensionCheatManager:RefillAmmo() end
function UDimensionCheatManager:QuitGame() end
---@param ActorCacheName FString
---@param ActorName FString
function UDimensionCheatManager:QueryActorCacheAndFilter(ActorCacheName, ActorName) end
---@param ActorCacheName FString
function UDimensionCheatManager:QueryActorCache(ActorCacheName) end
---@param TimeUnits float
function UDimensionCheatManager:ProgressResearch(TimeUnits) end
---@param SpawnedActor AActor
---@param AllocationID int32
function UDimensionCheatManager:OnActorSpawned(SpawnedActor, AllocationID) end
---@param SlotNumber int32
function UDimensionCheatManager:NewSaveSlot(SlotNumber) end
---@param ValueDelta float
function UDimensionCheatManager:ModifyMadnessValue(ValueDelta) end
---@param bOnlyCurrentWorldSpawns boolean
function UDimensionCheatManager:LogSpawnRequests(bOnlyCurrentWorldSpawns) end
---@param bIncludeSpawnRequests boolean
function UDimensionCheatManager:LogSpawnManagerReportToFile(bIncludeSpawnRequests) end
function UDimensionCheatManager:LogSpawnManagerReport() end
function UDimensionCheatManager:LogSpawnManagerAssets() end
function UDimensionCheatManager:LogSaveFileResults() end
function UDimensionCheatManager:LogResearchRequests() end
function UDimensionCheatManager:LogResearchData() end
function UDimensionCheatManager:LogRandomComponentModifiers() end
function UDimensionCheatManager:LogQuestsTable() end
function UDimensionCheatManager:LogQuests() end
---@param bSortByCount boolean
function UDimensionCheatManager:LogGameplayEventTriggers(bSortByCount) end
function UDimensionCheatManager:LogGameplayEventListeners() end
---@param bSortByCount boolean
function UDimensionCheatManager:LogGameplayEventCallbacksPerListener(bSortByCount) end
---@param bSortByCount boolean
function UDimensionCheatManager:LogGameplayEventCallbacks(bSortByCount) end
function UDimensionCheatManager:LogFest() end
function UDimensionCheatManager:LogDefenseComponent() end
function UDimensionCheatManager:LogCursesTable() end
function UDimensionCheatManager:LogCurses() end
function UDimensionCheatManager:LogCurrentSeed() end
function UDimensionCheatManager:LogBoosters() end
function UDimensionCheatManager:LogBoosterProphecyBoosters() end
function UDimensionCheatManager:LogBoosterProphecies() end
function UDimensionCheatManager:LogBoosterFilters() end
function UDimensionCheatManager:LogBoosterDetails() end
function UDimensionCheatManager:LogBoosterCategoriesNames() end
function UDimensionCheatManager:LogBoosterCategories() end
---@param GroupName FString
---@param NameToMatch FString
---@param bShowDetails boolean
---@param bSortByCount boolean
function UDimensionCheatManager:LogAttributeOperations(GroupName, NameToMatch, bShowDetails, bSortByCount) end
---@param bPrintDuplicatedAndUnloadedPaths boolean
---@param bPrintRequestedPaths boolean
---@param bPrintSynchronousPaths boolean
function UDimensionCheatManager:LogAssetLoaderData(bPrintDuplicatedAndUnloadedPaths, bPrintRequestedPaths, bPrintSynchronousPaths) end
---@param bQueryTickFunctions boolean
---@param NameToMatch FString
function UDimensionCheatManager:LogAllTickableObjects(bQueryTickFunctions, NameToMatch) end
function UDimensionCheatManager:LogAllInputComponents() end
function UDimensionCheatManager:LogAllDefenseComponents() end
function UDimensionCheatManager:LogAllBoosterProphecyItems() end
function UDimensionCheatManager:LogAchievements() end
---@param SlotNumber int32
function UDimensionCheatManager:LoadSaveSlot(SlotNumber) end
---@param Level TSoftObjectPtr<UWorld>
function UDimensionCheatManager:LoadAsyncLevelAndSublevels(Level) end
---@param Level TSoftObjectPtr<UWorld>
function UDimensionCheatManager:LoadAsyncLevel(Level) end
function UDimensionCheatManager:ListActorCaches() end
function UDimensionCheatManager:Levels() end
function UDimensionCheatManager:KillemAll() end
---@param ProjectRowName FName
function UDimensionCheatManager:IsResearchCompleted(ProjectRowName) end
---@param ProjectRowName FName
function UDimensionCheatManager:IsResearchClaimed(ProjectRowName) end
---@param NameToMatch FString
function UDimensionCheatManager:IsItemWhitelisted(NameToMatch) end
---@param IncreaseValue int32
function UDimensionCheatManager:IncreaseGnosisLevelUpCounter(IncreaseValue) end
---@param IncreaseValue int32
function UDimensionCheatManager:IncreaseGnosis(IncreaseValue) end
---@param LevelName FString
function UDimensionCheatManager:GoToLevel(LevelName) end
function UDimensionCheatManager:GnosisLevelUps() end
function UDimensionCheatManager:Gnosis() end
---@return ADimensionPlayerControllerBase
function UDimensionCheatManager:GetPlayerController() end
function UDimensionCheatManager:GenerateNewSeed() end
function UDimensionCheatManager:GenerateMacrolessMetaData() end
---@param RowCount int32
---@param bOverrideFilteredBoosterOnly boolean
---@param bResetAllBoosters boolean
function UDimensionCheatManager:GenerateCorruptedBoosters(RowCount, bOverrideFilteredBoosterOnly, bResetAllBoosters) end
---@param RowCount int32
---@param bOverrideFilteredBoosterOnly boolean
---@param bResetAllBoosters boolean
function UDimensionCheatManager:GenerateBoostersWithRandomCategories(RowCount, bOverrideFilteredBoosterOnly, bResetAllBoosters) end
---@param bConfirm boolean
function UDimensionCheatManager:ForceGameCrash(bConfirm) end
---@param bConfirm boolean
function UDimensionCheatManager:ForceAssert(bConfirm) end
function UDimensionCheatManager:ExampleExecWithAutoComplete() end
---@param NameToMatch FString
---@param RowIndex int32
---@param bSwapPropheciesIfPossible boolean
function UDimensionCheatManager:EquipBoosterProphecyByName(NameToMatch, RowIndex, bSwapPropheciesIfPossible) end
---@param SlotID int32
---@param RowIndex int32
---@param bSwapPropheciesIfPossible boolean
function UDimensionCheatManager:EquipBoosterProphecy(SlotID, RowIndex, bSwapPropheciesIfPossible) end
---@param bEnabled boolean
function UDimensionCheatManager:EnableStickiness(bEnabled) end
---@param LastSeconds float
---@param bRemoveFullVisLog boolean
function UDimensionCheatManager:DumpVisLogForLast(LastSeconds, bRemoveFullVisLog) end
---@param FOV float
function UDimensionCheatManager:DFOV(FOV) end
function UDimensionCheatManager:DepleteAmmo() end
---@param SlotNumber int32
function UDimensionCheatManager:DeleteSaveSlot(SlotNumber) end
---@param DecreaseValue int32
function UDimensionCheatManager:DecreaseGnosis(DecreaseValue) end
function UDimensionCheatManager:CopyPlayerTransform() end
---@param QuestID int32
---@param ObjectiveIndex int32
function UDimensionCheatManager:CompleteQuestObjective(QuestID, ObjectiveIndex) end
---@param QuestID int32
function UDimensionCheatManager:CompleteQuest(QuestID) end
function UDimensionCheatManager:CompleteCurrentMission() end
---@param CompanionTag FString
function UDimensionCheatManager:CompanionUnlockAndAddToSquad(CompanionTag) end
---@param CompanionTag FString
function UDimensionCheatManager:CompanionUnlock(CompanionTag) end
function UDimensionCheatManager:CompanionsForceReset() end
---@param Level int32
function UDimensionCheatManager:CompanionSetVestalFlameLevel(Level) end
---@param CompanionTag FString
function UDimensionCheatManager:CompanionAddToSquad(CompanionTag) end
---@param CompanionTag FString
function UDimensionCheatManager:CompanionActivate(CompanionTag) end
function UDimensionCheatManager:ClearResearchData() end
---@param bClearResearchQuests boolean
---@param bClearTierQuests boolean
---@param bClearCurseQuests boolean
---@param bClearItemQuests boolean
function UDimensionCheatManager:ClearQuests(bClearResearchQuests, bClearTierQuests, bClearCurseQuests, bClearItemQuests) end
function UDimensionCheatManager:ClearMadness() end
function UDimensionCheatManager:ClearForceAbilities() end
function UDimensionCheatManager:ClearEnemiesInfo() end
function UDimensionCheatManager:ClearCurses() end
function UDimensionCheatManager:ClearCurrentResearchProjects() end
function UDimensionCheatManager:ClearClaimedResearchProjects() end
function UDimensionCheatManager:ClearBlockAbilities() end
---@param ProjectRowName FName
function UDimensionCheatManager:ClaimResearch(ProjectRowName) end
---@param ItemSlotID int32
function UDimensionCheatManager:ClaimQuestItem(ItemSlotID) end
---@param QuestID int32
function UDimensionCheatManager:ClaimQuest(QuestID) end
---@param ProjectRowName FName
---@param TimeUnits float
function UDimensionCheatManager:BoostResearchByTimeUnits(ProjectRowName, TimeUnits) end
---@param ProjectRowName FName
---@param GoldAmount int32
function UDimensionCheatManager:BoostResearch(ProjectRowName, GoldAmount) end
function UDimensionCheatManager:BackToMainMenu() end
function UDimensionCheatManager:AsyncLevelLoadTest() end
---@param Value float
function UDimensionCheatManager:ApplyMadness(Value) end
function UDimensionCheatManager:ADSToggle() end
---@param TimeUnits float
function UDimensionCheatManager:AddTimeUnits(TimeUnits) end
---@param AbilityName FString
function UDimensionCheatManager:AddForceAbility(AbilityName) end
---@param NameToMatch FString
function UDimensionCheatManager:AddBoosterProphecyItem(NameToMatch) end
---@param AbilityName FString
function UDimensionCheatManager:AddBlockAbility(AbilityName) end
function UDimensionCheatManager:AddAllBoosterProphecyItems() end
