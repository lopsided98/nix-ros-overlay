
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, tf2-ros, gazebo-dev, roscpp, tf2, rostest, uuv-gazebo-ros-plugins-msgs, uuv-gazebo-plugins, std-msgs, rosunit, visualization-msgs, xacro, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-uuv-gazebo-ros-plugins";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/lunar/uuv_gazebo_ros_plugins/0.6.10-0.tar.gz;
    sha256 = "1b18e3d6b816fa4720694c2f14abcda4eb24e1959f028d17298d89d218c7cf15";
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
