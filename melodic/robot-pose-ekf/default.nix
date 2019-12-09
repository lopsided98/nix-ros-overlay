
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, geometry-msgs, std-msgs, tf, catkin, bfl, roscpp, rosbag, message-runtime, nav-msgs, rostest }:
buildRosPackage {
  pname = "ros-melodic-robot-pose-ekf";
  version = "1.14.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/robot_pose_ekf-release/archive/release/melodic/robot_pose_ekf/1.14.5-0.tar.gz";
    name = "1.14.5-0.tar.gz";
    sha256 = "5c00ee700ca2a69ca46e5162fa0bf0570a730ff566808059d7c6358fe350844a";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs tf bfl roscpp message-generation nav-msgs ];
  checkInputs = [ rosbag rostest ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs std-msgs tf bfl roscpp message-runtime nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Robot Pose EKF package is used to estimate the 3D pose of a robot, based on (partial) pose measurements coming from different sources. It uses an extended Kalman filter with a 6D model (3D position and 3D orientation) to combine measurements from wheel odometry, IMU sensor and visual odometry. The basic idea is to offer loosely coupled integration with different sensors, where sensor signals are received as ROS messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
