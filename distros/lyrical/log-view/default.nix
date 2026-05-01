
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ncurses, rcl-interfaces, rclcpp, xclip }:
buildRosPackage {
  pname = "ros-lyrical-log-view";
  version = "0.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/log_view-release/archive/release/lyrical/log_view/0.3.0-3.tar.gz";
    name = "0.3.0-3.tar.gz";
    sha256 = "e95862d4a606592cadff8bbce2bace48c6aac17786307c1c63e2e78927ced80b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ncurses rcl-interfaces rclcpp xclip ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The log_view package provides a ncurses based terminal GUI for
    viewing and filtering published ROS log messages.

    This is an alternative to rqt_console and swri_console that doesn't depend
    on qt and can be run directly in a terminal.";
    license = with lib.licenses; [ bsd3 ];
  };
}
