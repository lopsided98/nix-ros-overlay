
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bfl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, rosbag, roscpp, rostest, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-robot-pose-ekf";
  version = "1.14.5";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "robot_pose_ekf-release";
        rev = "release/melodic/robot_pose_ekf/1.14.5-0";
        sha256 = "sha256-943sFhdMcym8w2I2vs4RLKzAzoY4Tox4cwB75He5v34=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ rosbag rostest ];
  propagatedBuildInputs = [ bfl geometry-msgs message-runtime nav-msgs roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Robot Pose EKF package is used to estimate the 3D pose of a robot, based on (partial) pose measurements coming from different sources. It uses an extended Kalman filter with a 6D model (3D position and 3D orientation) to combine measurements from wheel odometry, IMU sensor and visual odometry. The basic idea is to offer loosely coupled integration with different sensors, where sensor signals are received as ROS messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
