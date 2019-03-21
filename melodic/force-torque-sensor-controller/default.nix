
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, pluginlib, realtime-tools, catkin, controller-interface, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-force-torque-sensor-controller";
  version = "0.14.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/force_torque_sensor_controller/0.14.3-0.tar.gz;
    sha256 = "a481081870f7413a489ab1558b68c25b85ec9d2d241d350abd223f7a3b07f1e7";
  };

  propagatedBuildInputs = [ hardware-interface controller-interface pluginlib realtime-tools roscpp geometry-msgs ];
  nativeBuildInputs = [ hardware-interface controller-interface pluginlib realtime-tools catkin roscpp geometry-msgs ];

  meta = {
    description = ''Controller to publish state of force-torque sensors'';
    #license = lib.licenses.BSD;
  };
}
