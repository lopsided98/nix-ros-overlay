
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, sensor-msgs, catkin, roscpp, rostest, nav-msgs, message-generation, message-runtime, bfl, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-robot-pose-ekf";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/kinetic/robot_pose_ekf/1.14.4-0.tar.gz;
    sha256 = "e3b076324d965a16d3c0eb08f001029f2ba24c6841876a8f741145b14c448c51";
  };

  checkInputs = [ rostest rosbag ];
  propagatedBuildInputs = [ nav-msgs message-runtime bfl std-msgs sensor-msgs tf geometry-msgs roscpp ];
  nativeBuildInputs = [ sensor-msgs catkin roscpp nav-msgs message-generation bfl std-msgs tf geometry-msgs ];

  meta = {
    description = ''The Robot Pose EKF package is used to estimate the 3D pose of a robot, based on (partial) pose measurements coming from different sources. It uses an extended Kalman filter with a 6D model (3D position and 3D orientation) to combine measurements from wheel odometry, IMU sensor and visual odometry. The basic idea is to offer loosely coupled integration with different sensors, where sensor signals are received as ROS messages.'';
    #license = lib.licenses.BSD;
  };
}
