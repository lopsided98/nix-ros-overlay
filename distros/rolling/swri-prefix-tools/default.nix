
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-swri-prefix-tools";
  version = "3.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_prefix_tools/3.5.0-2.tar.gz";
    name = "3.5.0-2.tar.gz";
    sha256 = "e98355c01c7e75e71436ae6622bbfdf818cf9f43b6e69eb5628004a80071e2a5";
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
