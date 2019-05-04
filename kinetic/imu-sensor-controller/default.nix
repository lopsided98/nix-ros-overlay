
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, pluginlib, realtime-tools, sensor-msgs, catkin, controller-interface, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-imu-sensor-controller";
  version = "0.13.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/imu_sensor_controller/0.13.5-0.tar.gz;
    sha256 = "0499419cd9f77c00890c12bd32da24c3c82e7b8120d7a0e1f5dbd174b72698fa";
  };

  buildInputs = [ hardware-interface pluginlib realtime-tools sensor-msgs controller-interface roscpp ];
  propagatedBuildInputs = [ hardware-interface pluginlib realtime-tools sensor-msgs controller-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish state of IMU sensors'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
