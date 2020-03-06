
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pythonPackages }:
buildRosPackage {
  pname = "ros-dashing-swri-prefix-tools";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_prefix_tools/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "d6f1383cbd3173a4a6c5499ecc0946b29176291dfa86001ac291b15048b1f1b2";
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
