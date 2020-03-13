
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pythonPackages }:
buildRosPackage {
  pname = "ros-eloquent-swri-prefix-tools";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/eloquent/swri_prefix_tools/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "9a1465d6cd9fd94aeadf9508e6f6d35e02abaf35ac00a5f098f51b419a5da117";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ pythonPackages.psutil ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Contains scripts that are useful as prefix commands for nodes
    started by roslaunch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
