
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, combined-robot-hw, controller-manager, dynamic-reconfigure, hardware-interface, joint-limits-interface, joint-state-controller, joint-state-publisher, joint-trajectory-controller, pluginlib, python-qt-binding, python3Packages, qt-gui, robot-state-publisher, roscpp, rospy, rqt-gui, rqt-gui-py, schunk-svh-description, schunk-svh-library, schunk-svh-msgs, sensor-msgs, std-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-schunk-svh-driver";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/SCHUNK-GmbH-Co-KG/schunk_svh_ros_driver-release/archive/release/noetic/schunk_svh_driver/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "91dd2c7e1a6c53d50c0e667eee776f05150932c88bd28bddc3dbf569b777467b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib combined-robot-hw controller-manager dynamic-reconfigure hardware-interface joint-limits-interface joint-state-controller joint-state-publisher joint-trajectory-controller pluginlib python-qt-binding python3Packages.rospkg qt-gui robot-state-publisher roscpp rospy rqt-gui rqt-gui-py schunk-svh-description schunk-svh-library schunk-svh-msgs sensor-msgs std-msgs urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS1 driver for the Schunk SVH five finger hand'';
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
