
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-fetch-maps";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_maps/0.8.0-0.tar.gz;
    sha256 = "1f3107c5ae8dd4dcf0267d130821570e43c1def78ba42c564c61a0fc8b827a16";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fetch_maps package'';
    #license = lib.licenses.BSD;
  };
}
