
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, tf2-ros, gazebo-dev, roscpp, tf2, rostest, uuv-gazebo-ros-plugins-msgs, uuv-gazebo-plugins, std-msgs, rosunit, visualization-msgs, xacro, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-gazebo-ros-plugins";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_gazebo_ros_plugins/0.6.10-0.tar.gz;
    sha256 = "8b472e699374c6beee5228f6adcc276e8cff5936382a9a26d300196de93b3f1e";
  };

  buildInputs = [ sensor-msgs roscpp gazebo-dev tf2-ros tf2 uuv-gazebo-ros-plugins-msgs uuv-gazebo-plugins std-msgs visualization-msgs geometry-msgs ];
  checkInputs = [ rostest rosunit xacro ];
  propagatedBuildInputs = [ sensor-msgs roscpp gazebo-dev tf2-ros tf2 uuv-gazebo-ros-plugins-msgs uuv-gazebo-plugins std-msgs visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''UUV Simulator's extended ROS plugins for generation of the necessary
      ROS services and topics during the simulation.'';
    #license = lib.licenses.Apache-2.0;
  };
}
