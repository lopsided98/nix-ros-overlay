
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, controller-interface, hardware-interface, pluginlib, catkin, realtime-tools, roscpp }:
buildRosPackage {
  pname = "ros-melodic-imu-sensor-controller";
  version = "0.15.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/imu_sensor_controller/0.15.0-0.tar.gz";
    name = "0.15.0-0.tar.gz";
    sha256 = "9e5a18ddf716a8a9edd539104025b9d6828acb17b690b660780b56f05c2f0948";
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
