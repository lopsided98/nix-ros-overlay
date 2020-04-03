
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pythonPackages }:
buildRosPackage {
  pname = "ros-dashing-swri-prefix-tools";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_prefix_tools/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "898d0edb78a2a324a9156a5d9b88767450f9ad7e66bb5dda08b6a805bf14cc9a";
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
