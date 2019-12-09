
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, xacro, geometry-msgs, uuv-gazebo-ros-plugins-msgs, std-msgs, catkin, roscpp, rosunit, gazebo-dev, visualization-msgs, tf2, rostest, tf2-ros, uuv-gazebo-plugins }:
buildRosPackage {
  pname = "ros-kinetic-uuv-gazebo-ros-plugins";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_gazebo_ros_plugins/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "d756fb48e75fe9022eb63f471bdc314c507c76dc1c5fb515edd8fb70e1333f10";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs uuv-gazebo-ros-plugins-msgs geometry-msgs std-msgs roscpp gazebo-dev visualization-msgs tf2 tf2-ros uuv-gazebo-plugins ];
  checkInputs = [ xacro rostest rosunit ];
  propagatedBuildInputs = [ sensor-msgs uuv-gazebo-ros-plugins-msgs geometry-msgs uuv-gazebo-plugins std-msgs tf2 visualization-msgs roscpp tf2-ros gazebo-dev ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''UUV Simulator's extended ROS plugins for generation of the necessary
      ROS services and topics during the simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
