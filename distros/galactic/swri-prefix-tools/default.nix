
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python3Packages }:
buildRosPackage {
  pname = "ros-galactic-swri-prefix-tools";
  version = "3.3.2-r2";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/galactic/swri_prefix_tools/3.3.2-2.tar.gz";
    name = "3.3.2-2.tar.gz";
    sha256 = "4460692d26a37a44ce375d19e334a123e0ec0e8c8fd7d0bc505341374c8a72c0";
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
