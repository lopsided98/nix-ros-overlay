
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-willow-maps";
  version = "1.0.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/willow_maps-release/archive/release/kinetic/willow_maps/1.0.3-0.tar.gz";
    name = "1.0.3-0.tar.gz";
    sha256 = "afbbd32a5881157a4f22f01d311daa817aeef83896e33da9e4fb65b878be46fc";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Holds maps of Willow Garage that can be used for a number of different applications.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
