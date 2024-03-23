
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-swri-prefix-tools";
  version = "3.6.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_prefix_tools/3.6.1-2.tar.gz";
    name = "3.6.1-2.tar.gz";
    sha256 = "2d67abc9dffa9a23c5a001d9d71e868ecf4d4eefb093b0a67167db249b6f62d6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ python3Packages.psutil ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Contains scripts that are useful as prefix commands for nodes
    started by roslaunch.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
