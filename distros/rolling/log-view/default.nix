
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ncurses, rcl-interfaces, rclcpp, rosbag2-cpp, rosgraph-msgs, xclip, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-log-view";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/log_view-release/archive/release/rolling/log_view/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "ea40479565cedf21da98f391fd7043726b1645715511eb951e7be2986eb0d3f0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ncurses rcl-interfaces rclcpp rosbag2-cpp rosgraph-msgs xclip yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The log_view package provides a ncurses based terminal GUI for
    viewing and filtering published ROS log messages.

    This is an alternative to rqt_console and swri_console that doesn't depend
    on qt and can be run directly in a terminal.";
    license = with lib.licenses; [ bsd3 ];
  };
}
