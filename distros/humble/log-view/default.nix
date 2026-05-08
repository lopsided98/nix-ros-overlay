
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ncurses, rcl-interfaces, rclcpp, xclip, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-log-view";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/hatchbed/log_view-release/archive/release/humble/log_view/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "89f2e5dc6bce37b9d54e4f3cf0c89b85a3a05f29805d932a72a0c84a13962c7e";
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
