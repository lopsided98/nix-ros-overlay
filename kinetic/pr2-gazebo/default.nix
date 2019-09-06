
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-description, gazebo-plugins, fingertip-pressure, rospy, geometry-msgs, pr2-mechanism-controllers, pr2-gazebo-plugins, gazeboSimulator, robot-pose-ekf, pr2-dashboard-aggregator, pr2-msgs, image-proc, xacro, pr2-head-action, catkin, robot-mechanism-controllers, tf2-ros, std-msgs, diagnostic-aggregator, pr2-controller-configuration-gazebo, stereo-image-proc, joint-trajectory-action, pr2-gripper-action, single-joint-position-action, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-pr2-gazebo";
  version = "2.0.11";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_simulator-release/archive/release/kinetic/pr2_gazebo/2.0.11-0.tar.gz";
    name = "2.0.11-0.tar.gz";
    sha256 = "3688b169c4f8a8016585fefe2a1c80a2c844e89e0019741e5d4a7b86e9449429";
  };

  buildType = "catkin";
  buildInputs = [ pr2-gazebo-plugins gazeboSimulator.gazebo gazebo-plugins ];
  propagatedBuildInputs = [ pr2-description gazeboSimulator.gazebo gazebo-plugins fingertip-pressure rospy geometry-msgs pr2-mechanism-controllers pr2-gazebo-plugins robot-pose-ekf pr2-dashboard-aggregator image-proc pr2-msgs xacro pr2-head-action robot-mechanism-controllers tf2-ros std-msgs diagnostic-aggregator pr2-controller-configuration-gazebo stereo-image-proc joint-trajectory-action pr2-gripper-action single-joint-position-action topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch scripts for simulating the PR2 in <a href="http://ros.org/wiki/gazebo">gazebo</a>.
    The simulation equivalent of pr2.launch is found here.
    pr2_fingertip_pressure_contact_translator produces the same ROS topics as fingertip_pressure package for simulated PR2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
