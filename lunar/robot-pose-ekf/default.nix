
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, rosbag, sensor-msgs, catkin, rostest, nav-msgs, message-generation, message-runtime, bfl, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-robot-pose-ekf";
  version = "1.15.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/lunar/robot_pose_ekf/1.15.2-0.tar.gz;
    sha256 = "16ed4bc7c79048668bc5a4cad69bb3548f55ac1b4c22d7ccbea83700e7f9feb7";
  };

  buildInputs = [ sensor-msgs roscpp nav-msgs message-generation bfl std-msgs tf geometry-msgs ];
  checkInputs = [ rostest rosbag ];
  propagatedBuildInputs = [ sensor-msgs roscpp nav-msgs message-runtime bfl std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Robot Pose EKF package is used to estimate the 3D pose of a robot, based on (partial) pose measurements coming from different sources. It uses an extended Kalman filter with a 6D model (3D position and 3D orientation) to combine measurements from wheel odometry, IMU sensor and visual odometry. The basic idea is to offer loosely coupled integration with different sensors, where sensor signals are received as ROS messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
