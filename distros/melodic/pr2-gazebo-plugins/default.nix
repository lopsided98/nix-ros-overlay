
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, cv-bridge, diagnostic-msgs, diagnostic-updater, gazebo-msgs, gazebo-plugins, gazebo-ros, geometry-msgs, image-transport, message-generation, message-runtime, nav-msgs, orocos-kdl, polled-camera, pr2-controller-manager, pr2-hardware-interface, pr2-mechanism-model, pr2-msgs, roscpp, rospy, sensor-msgs, std-msgs, std-srvs, tf, urdf }:
buildRosPackage {
  pname = "ros-melodic-pr2-gazebo-plugins";
  version = "2.0.14";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_simulator-release/archive/release/melodic/pr2_gazebo_plugins/2.0.14-0.tar.gz";
    name = "2.0.14-0.tar.gz";
    sha256 = "f13b8d70bb7029d167343772dc662a7aff687349c40ecb02e27020a36a8a784b";
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
