
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ncurses, rcl-interfaces, rclcpp, xclip }:
buildRosPackage {
  pname = "ros-kilted-log-view";
  version = "0.2.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/log_view-release/archive/release/kilted/log_view/0.2.5-2.tar.gz";
    name = "0.2.5-2.tar.gz";
    sha256 = "ff065ee98ab1679f493713de73bfeab30be0bf7e75c2ccedbfd0c6659219f08f";
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
