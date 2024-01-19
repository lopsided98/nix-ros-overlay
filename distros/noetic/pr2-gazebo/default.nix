
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-aggregator, fingertip-pressure, gazebo, gazebo-plugins, gazebo-ros, geometry-msgs, image-proc, joint-trajectory-action, pr2-controller-configuration-gazebo, pr2-controller-manager, pr2-dashboard-aggregator, pr2-description, pr2-gazebo-plugins, pr2-gripper-action, pr2-head-action, pr2-machine, pr2-mechanism-controllers, pr2-msgs, pr2-tuckarm, robot-mechanism-controllers, robot-pose-ekf, robot-state-publisher, rospy, rostest, rostopic, single-joint-position-action, std-msgs, stereo-image-proc, tf2-ros, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-noetic-pr2-gazebo";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_simulator-release/archive/release/noetic/pr2_gazebo/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "c076638d44c6dc0a5db2bce6b4c2863fc48bab11f7a2862a12c1803f67960379";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ pr2-machine pr2-tuckarm rostest ];
  propagatedBuildInputs = [ diagnostic-aggregator fingertip-pressure gazebo gazebo-plugins gazebo-ros geometry-msgs image-proc joint-trajectory-action pr2-controller-configuration-gazebo pr2-controller-manager pr2-dashboard-aggregator pr2-description pr2-gazebo-plugins pr2-gripper-action pr2-head-action pr2-mechanism-controllers pr2-msgs robot-mechanism-controllers robot-pose-ekf robot-state-publisher rospy rostopic single-joint-position-action std-msgs stereo-image-proc tf2-ros topic-tools xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch scripts for simulating the PR2 in <a href="http://ros.org/wiki/gazebo">gazebo</a>.
    The simulation equivalent of pr2.launch is found here.
    pr2_fingertip_pressure_contact_translator produces the same ROS topics as fingertip_pressure package for simulated PR2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
