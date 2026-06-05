
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-kilted-swri-console-util";
  version = "3.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/kilted/swri_console_util/3.9.0-1.tar.gz";
    name = "3.9.0-1.tar.gz";
    sha256 = "1c69cd147047ffa59b4651499099b8a1a7de55fe9e9e48db3ad382c6a9ff8d22";
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
