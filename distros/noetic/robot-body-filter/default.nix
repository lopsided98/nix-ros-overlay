
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, fcl, filters, geometric-shapes, geometry-msgs, laser-geometry, message-generation, message-runtime, moveit-core, moveit-ros-perception, pcl, pcl-conversions, pkg-config, roscpp, rostest, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-ros, tf2-sensor-msgs, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-robot-body-filter";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/peci1/robot_body_filter-release/archive/release/noetic/robot_body_filter/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "55781f3f7ef2566fa40e3ec086034d192fd28aaaa472ef886f581e60e1c16141";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation pkg-config tf2-eigen tf2-sensor-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure fcl filters geometric-shapes geometry-msgs laser-geometry message-runtime moveit-core moveit-ros-perception pcl pcl-conversions roscpp sensor-msgs std-msgs tf2 tf2-ros urdf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filters the robot's body out of laser scans or point clouds.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
