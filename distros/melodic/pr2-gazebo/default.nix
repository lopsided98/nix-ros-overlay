
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-aggregator, fingertip-pressure, gazebo, gazebo-plugins, gazebo-ros, geometry-msgs, image-proc, joint-trajectory-action, pr2-controller-configuration-gazebo, pr2-controller-manager, pr2-dashboard-aggregator, pr2-description, pr2-gazebo-plugins, pr2-gripper-action, pr2-head-action, pr2-machine, pr2-mechanism-controllers, pr2-msgs, pr2-tuckarm, robot-mechanism-controllers, robot-pose-ekf, robot-state-publisher, rospy, rostest, rostopic, single-joint-position-action, std-msgs, stereo-image-proc, tf2-ros, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-melodic-pr2-gazebo";
  version = "2.0.14";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_simulator-release/archive/release/melodic/pr2_gazebo/2.0.14-0.tar.gz";
    name = "2.0.14-0.tar.gz";
    sha256 = "65a61813255f0e2fd52200aceb94b18f0e19ed5e4f9c07c521558541015392a9";
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
