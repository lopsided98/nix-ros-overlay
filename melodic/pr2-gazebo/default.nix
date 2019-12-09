
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-head-action, gazeboSimulator, pr2-tuckarm, geometry-msgs, xacro, pr2-gazebo-plugins, pr2-machine, pr2-dashboard-aggregator, pr2-gripper-action, rostest, pr2-controller-configuration-gazebo, pr2-description, robot-state-publisher, image-proc, joint-trajectory-action, rostopic, pr2-mechanism-controllers, single-joint-position-action, tf2-ros, diagnostic-aggregator, stereo-image-proc, pr2-msgs, std-msgs, catkin, fingertip-pressure, topic-tools, rospy, gazebo-ros, robot-mechanism-controllers, robot-pose-ekf, pr2-controller-manager, gazebo-plugins }:
buildRosPackage {
  pname = "ros-melodic-pr2-gazebo";
  version = "2.0.14";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_simulator-release/archive/release/melodic/pr2_gazebo/2.0.14-0.tar.gz";
    name = "2.0.14-0.tar.gz";
    sha256 = "65a61813255f0e2fd52200aceb94b18f0e19ed5e4f9c07c521558541015392a9";
  };

  buildType = "catkin";
  buildInputs = [ pr2-gazebo-plugins gazeboSimulator.gazebo gazebo-plugins ];
  checkInputs = [ pr2-machine pr2-tuckarm rostest ];
  propagatedBuildInputs = [ pr2-head-action xacro geometry-msgs pr2-gazebo-plugins pr2-dashboard-aggregator pr2-gripper-action pr2-controller-configuration-gazebo pr2-description robot-state-publisher image-proc joint-trajectory-action rostopic pr2-mechanism-controllers single-joint-position-action tf2-ros diagnostic-aggregator stereo-image-proc pr2-msgs std-msgs fingertip-pressure topic-tools rospy gazebo-ros robot-mechanism-controllers gazeboSimulator.gazebo robot-pose-ekf pr2-controller-manager gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch scripts for simulating the PR2 in <a href="http://ros.org/wiki/gazebo">gazebo</a>.
    The simulation equivalent of pr2.launch is found here.
    pr2_fingertip_pressure_contact_translator produces the same ROS topics as fingertip_pressure package for simulated PR2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
