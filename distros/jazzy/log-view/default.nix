
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ncurses, rcl-interfaces, rclcpp, xclip, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-log-view";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/log_view-release/archive/release/jazzy/log_view/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "104f5379404b1572ea8cf97cc320dfabe2000804ecbc7178bb6666d7bccad0a4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ncurses rcl-interfaces rclcpp xclip yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The log_view package provides a ncurses based terminal GUI for
    viewing and filtering published ROS log messages.

    This is an alternative to rqt_console and swri_console that doesn't depend
    on qt and can be run directly in a terminal.";
    license = with lib.licenses; [ bsd3 ];
  };
}
