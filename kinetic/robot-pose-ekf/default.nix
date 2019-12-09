
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, geometry-msgs, std-msgs, tf, catkin, bfl, roscpp, rosbag, message-runtime, nav-msgs, rostest }:
buildRosPackage {
  pname = "ros-kinetic-robot-pose-ekf";
  version = "1.14.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/robot_pose_ekf/1.14.5-1.tar.gz";
    name = "1.14.5-1.tar.gz";
    sha256 = "96ef6f117ab3673bf9599ca80d84be55d13c1601d4a84afed38b6bd908bbd4bd";
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
