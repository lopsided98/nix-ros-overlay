
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-description, gazebo-plugins, fingertip-pressure, rospy, geometry-msgs, pr2-tuckarm, pr2-mechanism-controllers, pr2-gazebo-plugins, gazeboSimulator, pr2-controller-manager, robot-pose-ekf, robot-state-publisher, pr2-dashboard-aggregator, image-proc, pr2-msgs, xacro, gazebo-ros, pr2-head-action, catkin, robot-mechanism-controllers, tf2-ros, pr2-machine, std-msgs, diagnostic-aggregator, pr2-controller-configuration-gazebo, stereo-image-proc, joint-trajectory-action, pr2-gripper-action, rostest, single-joint-position-action, rostopic, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-pr2-gazebo";
  version = "2.0.14";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_simulator-release/archive/release/melodic/pr2_gazebo/2.0.14-0.tar.gz;
    sha256 = "65a61813255f0e2fd52200aceb94b18f0e19ed5e4f9c07c521558541015392a9";
  };

  buildInputs = [ pr2-gazebo-plugins gazeboSimulator.gazebo gazebo-plugins ];
  checkInputs = [ pr2-machine rostest pr2-tuckarm ];
  propagatedBuildInputs = [ gazebo-ros pr2-description pr2-head-action gazeboSimulator.gazebo robot-mechanism-controllers tf2-ros gazebo-plugins fingertip-pressure rospy std-msgs diagnostic-aggregator pr2-controller-configuration-gazebo geometry-msgs pr2-mechanism-controllers stereo-image-proc joint-trajectory-action pr2-gazebo-plugins image-proc pr2-gripper-action single-joint-position-action pr2-controller-manager robot-pose-ekf rostopic robot-state-publisher topic-tools pr2-dashboard-aggregator pr2-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch scripts for simulating the PR2 in <a href="http://ros.org/wiki/gazebo">gazebo</a>.
    The simulation equivalent of pr2.launch is found here.
    pr2_fingertip_pressure_contact_translator produces the same ROS topics as fingertip_pressure package for simulated PR2.'';
    #license = lib.licenses.BSD;
  };
}
