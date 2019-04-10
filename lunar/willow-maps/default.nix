
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-willow-maps";
  version = "1.0.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/willow_maps-release/archive/release/lunar/willow_maps/1.0.3-0.tar.gz;
    sha256 = "bf04fcc6da288edad6f0fe1c5cbf535b27732a51dbba5e3541e1adf50b78092b";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Holds maps of Willow Garage that can be used for a number of different applications.'';
    #license = lib.licenses.BSD;
  };
}
