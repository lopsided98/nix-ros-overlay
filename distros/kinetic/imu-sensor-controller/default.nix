
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, pluginlib, realtime-tools, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-imu-sensor-controller";
  version = "0.13.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/imu_sensor_controller/0.13.6-1.tar.gz";
    name = "0.13.6-1.tar.gz";
    sha256 = "6261bab47ec1524045acbd4b9b661deec1476951d5a7a0aa15c883c9bc1bb890";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface hardware-interface pluginlib realtime-tools roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish state of IMU sensors'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
