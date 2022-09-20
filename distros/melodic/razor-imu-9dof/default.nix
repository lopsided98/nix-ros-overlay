
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, pythonPackages, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-razor-imu-9dof";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ENSTABretagneRobotics/razor_imu_9dof-release/archive/release/melodic/razor_imu_9dof/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "7b9cf9527dede1fa4eecc2da794eee2ce4acfdff994b5f3416b7870e6751a224";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.catkin-pkg ];
  propagatedBuildInputs = [ dynamic-reconfigure pythonPackages.pyserial rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''razor_imu_9dof is a package that provides a ROS driver for the Sparkfun OpenLog Artemis, 9DoF Razor IMU M0, 9DOF Razor IMU and 9DOF Sensor Stick. It also provides Arduino firmware that runs on the board, and which must be installed on it for the system to work. A node which displays the attitude (roll, pitch and yaw) of the board (or any IMU) is provided for testing.'';
    license = with lib.licenses; [ bsdOriginal gpl3Only ];
  };
}
