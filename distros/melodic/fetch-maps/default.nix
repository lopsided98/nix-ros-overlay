
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-fetch-maps";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_maps/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "6e100cd6d0b97d8afd7cfedd71b7a371200312b09c5d9f3feee2e38c1597346c";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fetch_maps package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
