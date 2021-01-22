
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python3Packages }:
buildRosPackage {
  pname = "ros-dashing-swri-prefix-tools";
  version = "3.3.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_prefix_tools/3.3.2-1.tar.gz";
    name = "3.3.2-1.tar.gz";
    sha256 = "7c3704b680bf532f4ebfaef8684b32fd56dec9281dbf6b7111d1d279f16a22cc";
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
