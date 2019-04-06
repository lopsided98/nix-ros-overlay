
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-fetch-maps";
  version = "0.8.1";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_maps/0.8.1-0.tar.gz;
    sha256 = "fa4b22eabaab0901562f474faff1e445bac07fede3dfbf6116fc68cdc2e90db8";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fetch_maps package'';
    #license = lib.licenses.BSD;
  };
}
