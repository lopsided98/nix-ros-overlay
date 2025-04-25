
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, neonavigation-common, pcl, pcl-conversions, roscpp, roslint, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-obj-to-pointcloud";
  version = "0.17.7-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/obj_to_pointcloud/0.17.7-1.tar.gz";
    name = "0.17.7-1.tar.gz";
    sha256 = "f7af19b99baf0c1db6058add930e3aa63299a76cd044f234dff6e221703bb743";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ eigen geometry-msgs neonavigation-common pcl pcl-conversions roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "OBJ file to pointcloud message converter package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
