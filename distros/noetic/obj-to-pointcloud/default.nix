
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, neonavigation-common, pcl, pcl-conversions, roscpp, roslint, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-obj-to-pointcloud";
  version = "0.8.7-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/obj_to_pointcloud/0.8.7-1.tar.gz";
    name = "0.8.7-1.tar.gz";
    sha256 = "b51c976cbb1f52513da76a1ddad58124b160a05ec2bc5e0c9efdd94e6492455c";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ eigen geometry-msgs neonavigation-common pcl pcl-conversions roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OBJ file to pointcloud message converter package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
