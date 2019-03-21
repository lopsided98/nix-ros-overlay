
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, pluginlib, realtime-tools, sensor-msgs, catkin, controller-interface, roscpp }:
buildRosPackage {
  pname = "ros-melodic-imu-sensor-controller";
  version = "0.14.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/imu_sensor_controller/0.14.3-0.tar.gz;
    sha256 = "fefbde2b6b83a43efe572c8ef3b2b7bb5b306daa6e74c2e23bad4c05a96c5ad4";
  };

  propagatedBuildInputs = [ hardware-interface controller-interface pluginlib realtime-tools sensor-msgs roscpp ];
  nativeBuildInputs = [ hardware-interface controller-interface catkin pluginlib realtime-tools sensor-msgs roscpp ];

  meta = {
    description = ''Controller to publish state of IMU sensors'';
    #license = lib.licenses.BSD;
  };
}
