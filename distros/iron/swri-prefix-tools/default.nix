
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python3Packages }:
buildRosPackage {
  pname = "ros-iron-swri-prefix-tools";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/iron/swri_prefix_tools/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "cc322b1fdc5bce096de19cdfcbc50674bc2d6cad7d10820b0d5544e4608fbf7e";
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
