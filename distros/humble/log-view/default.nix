
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ncurses, rcl-interfaces, rclcpp, xclip }:
buildRosPackage {
  pname = "ros-humble-log-view";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/hatchbed/log_view-release/archive/release/humble/log_view/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "27cf93d53ee0a2b6933555cd261f12fed7f236b6b0b43187039704957c96d079";
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
    license = with lib.licenses; [ bsdOriginal ];
  };
}
