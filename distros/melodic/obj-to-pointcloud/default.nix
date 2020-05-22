
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, neonavigation-common, pcl, pcl-conversions, roscpp, roslint, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-obj-to-pointcloud";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/obj_to_pointcloud/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "fb85f9403642b921db04e5487b78a7a4f9b94a6821ab5d4b93b32423d56acc30";
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
