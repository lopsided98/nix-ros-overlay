
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, pluginlib, realtime-tools, sensor-msgs, catkin, controller-interface, roscpp }:
buildRosPackage {
  pname = "ros-melodic-imu-sensor-controller";
  version = "0.15.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/imu_sensor_controller/0.15.0-0.tar.gz";
    name = "0.15.0-0.tar.gz";
    sha256 = "9e5a18ddf716a8a9edd539104025b9d6828acb17b690b660780b56f05c2f0948";
  };

  buildType = "catkin";
  buildInputs = [ hardware-interface pluginlib realtime-tools sensor-msgs controller-interface roscpp ];
  propagatedBuildInputs = [ hardware-interface pluginlib realtime-tools sensor-msgs controller-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish state of IMU sensors'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
