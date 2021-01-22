
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, pythonPackages, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-razor-imu-9dof";
  version = "1.2.0";

  src = fetchurl {
    url = "https://github.com/KristofRobot/razor_imu_9dof-release/archive/release/kinetic/razor_imu_9dof/1.2.0-0.tar.gz";
    name = "1.2.0-0.tar.gz";
    sha256 = "1ea328c3cd8dcc84de220e721fe4eeac184951c18167ebbeb4fd6702872b224f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure pythonPackages.pyserial rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''razor_imu_9dof is a package that provides a ROS driver
     for the Sparkfun Razor IMU 9DOF. It also provides Arduino
     firmware that runs on the Razor board, and which must be
     installed on the Razor board for the system to work. A node
     which displays the attitude (roll, pitch and yaw) of the Razor board 
     (or any IMU) is provided for testing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
