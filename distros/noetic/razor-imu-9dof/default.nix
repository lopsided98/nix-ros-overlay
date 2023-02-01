
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, python3Packages, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-razor-imu-9dof";
  version = "1.3.0-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ENSTABretagneRobotics";
        repo = "razor_imu_9dof-release";
        rev = "release/noetic/razor_imu_9dof/1.3.0-2";
        sha256 = "sha256-Rw43NOBQa8g1j28eWJtP1kpR8oEEMBxehjwTafyOkTg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.catkin-pkg ];
  propagatedBuildInputs = [ dynamic-reconfigure python3Packages.pyserial rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''razor_imu_9dof is a package that provides a ROS driver for the Sparkfun OpenLog Artemis, 9DoF Razor IMU M0, 9DOF Razor IMU and 9DOF Sensor Stick. It also provides Arduino firmware that runs on the board, and which must be installed on it for the system to work. A node which displays the attitude (roll, pitch and yaw) of the board (or any IMU) is provided for testing.'';
    license = with lib.licenses; [ bsdOriginal gpl3Only ];
  };
}
