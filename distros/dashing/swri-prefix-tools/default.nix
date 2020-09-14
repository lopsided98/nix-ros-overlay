
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python3Packages }:
buildRosPackage {
  pname = "ros-dashing-swri-prefix-tools";
  version = "3.3.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_prefix_tools/3.3.1-1.tar.gz";
    name = "3.3.1-1.tar.gz";
    sha256 = "ee4a93df805b27b5e87f5efc10e0623ccb06fac777212166fb4ce127c4063556";
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
