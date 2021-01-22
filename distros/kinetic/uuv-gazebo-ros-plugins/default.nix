
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-dev, geometry-msgs, roscpp, rostest, rosunit, sensor-msgs, std-msgs, tf2, tf2-ros, uuv-gazebo-plugins, uuv-gazebo-ros-plugins-msgs, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-kinetic-uuv-gazebo-ros-plugins";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_gazebo_ros_plugins/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "d756fb48e75fe9022eb63f471bdc314c507c76dc1c5fb515edd8fb70e1333f10";
  };

  buildType = "catkin";
  checkInputs = [ rostest rosunit xacro ];
  propagatedBuildInputs = [ gazebo-dev geometry-msgs roscpp sensor-msgs std-msgs tf2 tf2-ros uuv-gazebo-plugins uuv-gazebo-ros-plugins-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''UUV Simulator's extended ROS plugins for generation of the necessary
      ROS services and topics during the simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
