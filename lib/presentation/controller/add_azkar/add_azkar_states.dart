abstract class AddAzkarStates{}
class AddAzkarInitialState extends AddAzkarStates{}
// Add Note
class AddAzkarLoadingState extends AddAzkarStates{}
class AddAzkarSuccessState extends AddAzkarStates{}
class AddAzkarIErrorState extends AddAzkarStates{
  final String error;

  AddAzkarIErrorState(this.error);
}
// Edit Note
class EditAzkarLoadingState extends AddAzkarStates{}
class EditAzkarSuccessState extends AddAzkarStates{}
class EditAzkarFailureState extends AddAzkarStates{
  final String error;

  EditAzkarFailureState(this.error);
}
// Delete Note
class DeleteAzkarLoadingState extends AddAzkarStates{}
class DeleteAzkarSuccessState extends AddAzkarStates{}
class DeleteAzkarFailureState extends AddAzkarStates{
  final String error;

  DeleteAzkarFailureState(this.error);
}
