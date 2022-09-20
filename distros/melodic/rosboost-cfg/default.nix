
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-rosboost-cfg";
  version = "1.14.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/melodic/rosboost_cfg/1.14.9-1.tar.gz";
    name = "1.14.9-1.tar.gz";
    sha256 = "042fd5681840c37a41a7642ebdea54882c0c49dbbd71c241760f5eea71175b92";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.setuptools ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Contains scripts used by the rosboost-cfg tool for determining cflags/lflags/etc. of boost on your system'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
