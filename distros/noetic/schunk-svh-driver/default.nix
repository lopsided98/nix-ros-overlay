
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, combined-robot-hw, controller-manager, dynamic-reconfigure, hardware-interface, joint-limits-interface, joint-state-controller, joint-state-publisher, joint-trajectory-controller, pluginlib, python-qt-binding, python3Packages, qt-gui, robot-state-publisher, roscpp, rospy, rqt-gui, rqt-gui-py, schunk-svh-description, schunk-svh-library, schunk-svh-msgs, sensor-msgs, std-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-schunk-svh-driver";
  version = "0.1.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fzi-forschungszentrum-informatik";
        repo = "schunk_svh_ros_driver-release";
        rev = "release/noetic/schunk_svh_driver/0.1.2-1";
        sha256 = "sha256-qosALExQVYdRQaj657KTX38ilU2FjoEqG6JN9ODh+EA=";
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
