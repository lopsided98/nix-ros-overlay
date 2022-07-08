
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ncurses, rcl-interfaces, rclcpp, xclip }:
buildRosPackage {
  pname = "ros-galactic-log-view";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/hatchbed/log_view-release/archive/release/galactic/log_view/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "40d3d506de9c09ad9b2add8be4049691de7e944305d0227bad1a22eef7f5f2a0";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ncurses rcl-interfaces rclcpp xclip ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The log_view package provides a ncurses based terminal GUI for
    viewing and filtering published ROS log messages.

    This is an alternative to rqt_console and swri_console that doesn't depend
    on qt and can be run directly in a terminal.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
