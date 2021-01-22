
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, hardware-interface, pluginlib, realtime-tools, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-imu-sensor-controller";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/imu_sensor_controller/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "68c79e5cf692eae894b3dd178ddef0de606af5e07fe1f6a90a99352ef2027c46";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib ];
  propagatedBuildInputs = [ controller-interface controller-manager hardware-interface realtime-tools roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish state of IMU sensors'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
