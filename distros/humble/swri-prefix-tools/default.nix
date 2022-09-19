
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python3Packages }:
buildRosPackage {
  pname = "ros-humble-swri-prefix-tools";
  version = "3.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_prefix_tools/3.4.0-3.tar.gz";
    name = "3.4.0-3.tar.gz";
    sha256 = "845501678954dcada75c0b72eb8b2d328e82a97051e92b207da733027b01ac7b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ python3Packages.psutil ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Contains scripts that are useful as prefix commands for nodes
    started by roslaunch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
