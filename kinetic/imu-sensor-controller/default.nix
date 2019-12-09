
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, controller-interface, hardware-interface, pluginlib, catkin, realtime-tools, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-imu-sensor-controller";
  version = "0.13.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/imu_sensor_controller/0.13.5-0.tar.gz";
    name = "0.13.5-0.tar.gz";
    sha256 = "0499419cd9f77c00890c12bd32da24c3c82e7b8120d7a0e1f5dbd174b72698fa";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs controller-interface hardware-interface pluginlib realtime-tools roscpp ];
  propagatedBuildInputs = [ sensor-msgs controller-interface hardware-interface pluginlib realtime-tools roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish state of IMU sensors'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
