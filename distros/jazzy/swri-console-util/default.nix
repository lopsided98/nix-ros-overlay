
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-swri-console-util";
  version = "3.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/jazzy/swri_console_util/3.7.4-1.tar.gz";
    name = "3.7.4-1.tar.gz";
    sha256 = "5e826ddcaf7a0de51883dc5d8650f9449efdea15b339ea3a3a0dc5824b785e14";
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
