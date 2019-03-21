
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, tf2-ros, gazebo-dev, rostest, tf2, uuv-gazebo-ros-plugins-msgs, uuv-gazebo-plugins, visualization-msgs, std-msgs, rosunit, roscpp, xacro, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-gazebo-ros-plugins";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_gazebo_ros_plugins/0.6.10-0.tar.gz;
    sha256 = "b0cdb028c61cc24853b1b461f4e8b1735016490561682764faa5b6abfb629272";
  };

  checkInputs = [ rostest rosunit xacro ];
  propagatedBuildInputs = [ sensor-msgs roscpp gazebo-dev tf2-ros tf2 uuv-gazebo-ros-plugins-msgs uuv-gazebo-plugins std-msgs visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ sensor-msgs catkin roscpp gazebo-dev tf2-ros tf2 uuv-gazebo-ros-plugins-msgs uuv-gazebo-plugins std-msgs visualization-msgs geometry-msgs ];

  meta = {
    description = ''UUV Simulator's extended ROS plugins for generation of the necessary
      ROS services and topics during the simulation.'';
    #license = lib.licenses.Apache-2.0;
  };
}
