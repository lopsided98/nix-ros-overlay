
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python3Packages }:
buildRosPackage {
  pname = "ros-foxy-swri-prefix-tools";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/foxy/swri_prefix_tools/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "2f71ab2f3471ce70a8e747748795f313ffc1dcd13f36c67a845926dbce367a22";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ python3Packages.psutil ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Contains scripts that are useful as prefix commands for nodes
    started by roslaunch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
