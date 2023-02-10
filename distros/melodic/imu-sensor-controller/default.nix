
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, pluginlib, realtime-tools, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-imu-sensor-controller";
  version = "0.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/imu_sensor_controller/0.17.3-1.tar.gz";
    name = "0.17.3-1.tar.gz";
    sha256 = "cc7634585b412cf892400427daeebcf6ddd2f6335acadc59b6db02f3c0c98c4f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-interface hardware-interface pluginlib realtime-tools roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish state of IMU sensors'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
