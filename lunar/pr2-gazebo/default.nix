
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-description, gazebo-plugins, fingertip-pressure, rospy, geometry-msgs, pr2-tuckarm, pr2-mechanism-controllers, pr2-gazebo-plugins, gazeboSimulator, pr2-controller-manager, robot-pose-ekf, robot-state-publisher, pr2-dashboard-aggregator, pr2-msgs, image-proc, xacro, gazebo-ros, pr2-head-action, catkin, robot-mechanism-controllers, tf2-ros, pr2-machine, std-msgs, diagnostic-aggregator, pr2-controller-configuration-gazebo, stereo-image-proc, joint-trajectory-action, pr2-gripper-action, rostest, single-joint-position-action, rostopic, topic-tools }:
buildRosPackage {
  pname = "ros-lunar-pr2-gazebo";
  version = "2.0.13-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_simulator-release/archive/release/lunar/pr2_gazebo/2.0.13-1.tar.gz;
    sha256 = "c922497f979e6dffaa790026af2091d99c932643e2bca3ed5dda87b559ee7cb7";
  };

  buildInputs = [ pr2-gazebo-plugins gazeboSimulator.gazebo gazebo-plugins ];
  checkInputs = [ pr2-machine rostest pr2-tuckarm ];
  propagatedBuildInputs = [ pr2-description gazeboSimulator.gazebo gazebo-plugins fingertip-pressure rospy geometry-msgs pr2-mechanism-controllers pr2-gazebo-plugins pr2-controller-manager robot-pose-ekf robot-state-publisher pr2-dashboard-aggregator pr2-msgs image-proc xacro gazebo-ros pr2-head-action robot-mechanism-controllers tf2-ros std-msgs diagnostic-aggregator pr2-controller-configuration-gazebo stereo-image-proc joint-trajectory-action pr2-gripper-action single-joint-position-action rostopic topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch scripts for simulating the PR2 in <a href="http://ros.org/wiki/gazebo">gazebo</a>.
    The simulation equivalent of pr2.launch is found here.
    pr2_fingertip_pressure_contact_translator produces the same ROS topics as fingertip_pressure package for simulated PR2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
