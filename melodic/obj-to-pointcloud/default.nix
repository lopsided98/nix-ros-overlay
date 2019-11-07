
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, pcl, sensor-msgs, catkin, rostest, neonavigation-common, eigen, eigen-conversions, roscpp, pcl-conversions, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-obj-to-pointcloud";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/obj_to_pointcloud/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "6ed341bd7ffa0e2f1b40c6161329a215a4ee50df690851028ba6e5558614e6e0";
  };

  buildType = "catkin";
  buildInputs = [ pcl sensor-msgs neonavigation-common eigen eigen-conversions roscpp pcl-conversions geometry-msgs ];
  checkInputs = [ rostest roslint ];
  propagatedBuildInputs = [ pcl sensor-msgs neonavigation-common eigen eigen-conversions roscpp pcl-conversions geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OBJ file to pointcloud message converter package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
