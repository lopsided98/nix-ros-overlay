
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, hardware-interface, pluginlib, realtime-tools, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-imu-sensor-controller";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/imu_sensor_controller/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "55b76a3936dcb4386e2eb67e8f92974c262b5bfa92ea5d2f57c3bbce0d9310c4";
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
