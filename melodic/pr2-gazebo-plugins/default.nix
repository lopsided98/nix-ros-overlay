
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, urdf, tf, image-transport, nav-msgs, sensor-msgs, diagnostic-msgs, orocos-kdl, pr2-mechanism-model, pr2-msgs, polled-camera, std-msgs, std-srvs, catkin, cv-bridge, roscpp, gazebo-ros, message-generation, angles, rospy, gazebo-msgs, diagnostic-updater, pr2-hardware-interface, message-runtime, pr2-controller-manager, gazebo-plugins }:
buildRosPackage {
  pname = "ros-melodic-pr2-gazebo-plugins";
  version = "2.0.14";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_simulator-release/archive/release/melodic/pr2_gazebo_plugins/2.0.14-0.tar.gz";
    name = "2.0.14-0.tar.gz";
    sha256 = "f13b8d70bb7029d167343772dc662a7aff687349c40ecb02e27020a36a8a784b";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs urdf tf image-transport nav-msgs sensor-msgs diagnostic-msgs orocos-kdl pr2-mechanism-model pr2-msgs polled-camera std-msgs std-srvs cv-bridge roscpp angles rospy message-generation gazebo-msgs diagnostic-updater pr2-hardware-interface message-runtime pr2-controller-manager gazebo-plugins ];
  propagatedBuildInputs = [ geometry-msgs urdf tf image-transport nav-msgs sensor-msgs diagnostic-msgs orocos-kdl pr2-mechanism-model pr2-msgs polled-camera std-msgs cv-bridge roscpp gazebo-ros rospy angles message-generation gazebo-msgs diagnostic-updater pr2-hardware-interface message-runtime pr2-controller-manager gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo Plugins for various PR2-specific sensors and actuators on the robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
