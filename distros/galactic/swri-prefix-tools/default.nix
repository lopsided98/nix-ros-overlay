
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python3Packages }:
buildRosPackage {
  pname = "ros-galactic-swri-prefix-tools";
  version = "3.4.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/galactic/swri_prefix_tools/3.4.1-1.tar.gz";
    name = "3.4.1-1.tar.gz";
    sha256 = "0cf820b4e5bce0239a5cfe0f7b785289ecd1eab3fc072682a7cf2c40f21e23aa";
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
