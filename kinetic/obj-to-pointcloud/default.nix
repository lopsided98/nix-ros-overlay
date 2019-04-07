
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, rostest, neonavigation-common, pcl-ros, eigen-conversions, roscpp, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-kinetic-obj-to-pointcloud";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/kinetic/obj_to_pointcloud/0.3.1-0.tar.gz;
    sha256 = "d9acd74049bd95ccf03011c7e12a513f4b0cc7590ab32821475ceea877ea3e6a";
  };

  buildInputs = [ pcl-ros neonavigation-common eigen sensor-msgs roscpp eigen-conversions geometry-msgs ];
  checkInputs = [ rostest roslint ];
  propagatedBuildInputs = [ pcl-ros neonavigation-common eigen sensor-msgs roscpp eigen-conversions geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OBJ file to pointcloud message converter package'';
    #license = lib.licenses.BSD;
  };
}
