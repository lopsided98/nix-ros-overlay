
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python3Packages }:
buildRosPackage {
  pname = "ros-dashing-swri-prefix-tools";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_prefix_tools/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "be977e65baa077cc5fd6cb6be4e07c62eceb3744228a503846f9a3a5ea34e360";
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
