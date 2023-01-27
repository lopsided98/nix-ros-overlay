
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, combined-robot-hw, controller-manager, dynamic-reconfigure, hardware-interface, joint-limits-interface, joint-state-controller, joint-state-publisher, joint-trajectory-controller, pluginlib, python-qt-binding, pythonPackages, qt-gui, robot-state-publisher, roscpp, rospy, rqt-gui, rqt-gui-py, schunk-svh-description, schunk-svh-library, schunk-svh-msgs, sensor-msgs, std-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-schunk-svh-driver";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/schunk_svh_ros_driver-release/archive/release/melodic/schunk_svh_driver/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "54dcb28214b7f1f666488da1d3dc995b14d5942e8c01195b5ad5a9aa55e92898";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib combined-robot-hw controller-manager dynamic-reconfigure hardware-interface joint-limits-interface joint-state-controller joint-state-publisher joint-trajectory-controller pluginlib python-qt-binding pythonPackages.rospkg qt-gui robot-state-publisher roscpp rospy rqt-gui rqt-gui-py schunk-svh-description schunk-svh-library schunk-svh-msgs sensor-msgs std-msgs urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS1 driver for the Schunk SVH five finger hand'';
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
