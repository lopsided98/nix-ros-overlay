
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, cv-bridge, diagnostic-msgs, diagnostic-updater, gazebo, gazebo-msgs, gazebo-plugins, gazebo-ros, geometry-msgs, image-transport, message-generation, message-runtime, nav-msgs, orocos-kdl, polled-camera, pr2-controller-manager, pr2-hardware-interface, pr2-mechanism-model, pr2-msgs, roscpp, rospy, sensor-msgs, std-msgs, std-srvs, tf, urdf }:
buildRosPackage {
  pname = "ros-kinetic-pr2-gazebo-plugins";
  version = "2.0.11";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_simulator-release/archive/release/kinetic/pr2_gazebo_plugins/2.0.11-0.tar.gz";
    name = "2.0.11-0.tar.gz";
    sha256 = "9cea0ffba8f2902834e15f6dcba5b0a3f407694ea7063870854ab23b393ed66d";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs ];
  propagatedBuildInputs = [ angles cv-bridge diagnostic-msgs diagnostic-updater gazebo gazebo-msgs gazebo-plugins gazebo-ros geometry-msgs image-transport message-generation message-runtime nav-msgs orocos-kdl polled-camera pr2-controller-manager pr2-hardware-interface pr2-mechanism-model pr2-msgs roscpp rospy sensor-msgs std-msgs tf urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo Plugins for various PR2-specific sensors and actuators on the robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
