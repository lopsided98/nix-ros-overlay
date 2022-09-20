
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, hardware-interface, pluginlib, realtime-tools, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-imu-sensor-controller";
  version = "0.20.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/imu_sensor_controller/0.20.0-1.tar.gz";
    name = "0.20.0-1.tar.gz";
    sha256 = "42a959e2c576dcb463e6ee7bb1889454c9fe5e4a9f37c1514bf25a2f2d70d4d1";
  };

  buildType = "catkin";
  buildInputs = [ catkin pluginlib ];
  propagatedBuildInputs = [ controller-interface controller-manager hardware-interface realtime-tools roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish state of IMU sensors'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
