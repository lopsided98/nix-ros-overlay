
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, pluginlib, realtime-tools, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-imu-sensor-controller";
  version = "0.16.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/imu_sensor_controller/0.16.1-1.tar.gz";
    name = "0.16.1-1.tar.gz";
    sha256 = "906bde9773a111c797bdd07926b294ac58a367ba5059b1fba96ffd9152501ea4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface hardware-interface pluginlib realtime-tools roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish state of IMU sensors'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
