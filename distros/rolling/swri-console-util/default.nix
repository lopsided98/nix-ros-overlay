
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-swri-console-util";
  version = "3.9.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_console_util/3.9.0-2.tar.gz";
    name = "3.9.0-2.tar.gz";
    sha256 = "fb0b60ddccf97325ef7f1df05ec38d8cad25acffa9eb24cd4a3d29a43155c01f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Utility functions for interacting with console";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
