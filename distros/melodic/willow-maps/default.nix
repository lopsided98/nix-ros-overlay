
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-willow-maps";
  version = "1.0.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/willow_maps-release/archive/release/melodic/willow_maps/1.0.3-0.tar.gz";
    name = "1.0.3-0.tar.gz";
    sha256 = "8c9dbbaeabb4464c98637228bddfd69f2b0e8692e40d9a0f0921b4b910e0dfe9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Holds maps of Willow Garage that can be used for a number of different applications.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
