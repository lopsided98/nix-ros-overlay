
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-kilted-swri-console-util";
  version = "3.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/kilted/swri_console_util/3.7.5-1.tar.gz";
    name = "3.7.5-1.tar.gz";
    sha256 = "1c9e49b124ffe2dfd34f0ac90c747bc217d644d391cbf92fb3f3ffe185a761ee";
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
