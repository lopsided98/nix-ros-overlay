
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-swri-console-util";
  version = "3.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_console_util/3.11.0-1.tar.gz";
    name = "3.11.0-1.tar.gz";
    sha256 = "b8752ce75f70f05e2b3ea34f2eb3bb57e6472ef2f901fe81ea6cd90e49cf1796";
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
