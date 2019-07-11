// This enum defines the states that every view can have

// We only need two states: Idle and Busy.
// The view should set its state to busy when using or requiring API services
enum ViewState {
  Idle,
  Busy
}