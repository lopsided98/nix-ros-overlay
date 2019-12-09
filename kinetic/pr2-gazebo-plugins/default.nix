
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazeboSimulator, geometry-msgs, urdf, tf, image-transport, nav-msgs, sensor-msgs, diagnostic-msgs, orocos-kdl, pr2-mechanism-model, pr2-msgs, polled-camera, std-msgs, std-srvs, catkin, cv-bridge, roscpp, gazebo-ros, message-generation, angles, rospy, gazebo-msgs, diagnostic-updater, pr2-hardware-interface, message-runtime, pr2-controller-manager, gazebo-plugins }:
buildRosPackage {
  pname = "ros-kinetic-pr2-gazebo-plugins";
  version = "2.0.11";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_simulator-release/archive/release/kinetic/pr2_gazebo_plugins/2.0.11-0.tar.gz";
    name = "2.0.11-0.tar.gz";
    sha256 = "9cea0ffba8f2902834e15f6dcba5b0a3f407694ea7063870854ab23b393ed66d";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs urdf tf image-transport nav-msgs sensor-msgs diagnostic-msgs orocos-kdl pr2-mechanism-model pr2-msgs polled-camera std-msgs std-srvs cv-bridge roscpp angles rospy message-generation gazeboSimulator.gazebo gazebo-msgs diagnostic-updater pr2-hardware-interface message-runtime pr2-controller-manager gazebo-plugins ];
  propagatedBuildInputs = [ geometry-msgs urdf tf image-transport nav-msgs sensor-msgs diagnostic-msgs orocos-kdl pr2-mechanism-model pr2-msgs polled-camera std-msgs cv-bridge roscpp gazebo-ros rospy angles message-generation gazeboSimulator.gazebo gazebo-msgs diagnostic-updater pr2-hardware-interface message-runtime pr2-controller-manager gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo Plugins for various PR2-specific sensors and actuators on the robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
