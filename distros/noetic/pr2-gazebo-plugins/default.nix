
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, cv-bridge, diagnostic-msgs, diagnostic-updater, gazebo-msgs, gazebo-plugins, gazebo-ros, geometry-msgs, image-transport, message-generation, message-runtime, nav-msgs, orocos-kdl, polled-camera, pr2-controller-manager, pr2-hardware-interface, pr2-mechanism-model, pr2-msgs, roscpp, rospy, sensor-msgs, std-msgs, std-srvs, tf, urdf }:
buildRosPackage {
  pname = "ros-noetic-pr2-gazebo-plugins";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_simulator-release/archive/release/noetic/pr2_gazebo_plugins/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "115e2a383daf840fab400d4eaf78e732cbc03aa660085efe4f4abd0498862b96";
  };

  buildType = "catkin";
  buildInputs = [ catkin std-srvs ];
  propagatedBuildInputs = [ angles cv-bridge diagnostic-msgs diagnostic-updater gazebo-msgs gazebo-plugins gazebo-ros geometry-msgs image-transport message-generation message-runtime nav-msgs orocos-kdl polled-camera pr2-controller-manager pr2-hardware-interface pr2-mechanism-model pr2-msgs roscpp rospy sensor-msgs std-msgs tf urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo Plugins for various PR2-specific sensors and actuators on the robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
