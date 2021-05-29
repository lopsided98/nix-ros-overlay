
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, fcl, filters, geometric-shapes, geometry-msgs, laser-geometry, message-generation, message-runtime, moveit-core, moveit-ros-perception, pcl, pcl-conversions, pkg-config, roscpp, rostest, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-ros, tf2-sensor-msgs, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-robot-body-filter";
  version = "1.1.9-r1";

  src = fetchurl {
    url = "https://github.com/peci1/robot_body_filter-release/archive/release/melodic/robot_body_filter/1.1.9-1.tar.gz";
    name = "1.1.9-1.tar.gz";
    sha256 = "d16cb56b66e5add7d8c5f35951a7e357ad59eab88a5f89149d4b18ef432afb96";
  };

  buildType = "catkin";
  buildInputs = [ message-generation pkg-config tf2-eigen tf2-sensor-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure fcl filters geometric-shapes geometry-msgs laser-geometry message-runtime moveit-core moveit-ros-perception pcl pcl-conversions roscpp sensor-msgs std-msgs tf2 tf2-ros urdf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filters the robot's body out of laser scans or point clouds.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
