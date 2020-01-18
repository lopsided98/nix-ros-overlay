
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bfl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, rosbag, roscpp, rostest, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-robot-pose-ekf";
  version = "1.14.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/robot_pose_ekf/1.14.5-1.tar.gz";
    name = "1.14.5-1.tar.gz";
    sha256 = "96ef6f117ab3673bf9599ca80d84be55d13c1601d4a84afed38b6bd908bbd4bd";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ rosbag rostest ];
  propagatedBuildInputs = [ bfl geometry-msgs message-runtime nav-msgs roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Robot Pose EKF package is used to estimate the 3D pose of a robot, based on (partial) pose measurements coming from different sources. It uses an extended Kalman filter with a 6D model (3D position and 3D orientation) to combine measurements from wheel odometry, IMU sensor and visual odometry. The basic idea is to offer loosely coupled integration with different sensors, where sensor signals are received as ROS messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
