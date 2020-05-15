
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, pluginlib, realtime-tools, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-imu-sensor-controller";
  version = "0.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/imu_sensor_controller/0.17.0-1.tar.gz";
    name = "0.17.0-1.tar.gz";
    sha256 = "96b3a79bd911ff8ce8701a8389ddaeeae2787d5d50885667a3ab7f996c0b8d74";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface hardware-interface pluginlib realtime-tools roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish state of IMU sensors'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
