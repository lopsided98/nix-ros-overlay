
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ncurses, rcl-interfaces, rclcpp, xclip }:
buildRosPackage {
  pname = "ros-humble-log-view";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/hatchbed/log_view-release/archive/release/humble/log_view/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "384287437b37b44ac41b2c0dc545c23f0b3d8cbbd6612abca274c25a3c42d0e5";
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
