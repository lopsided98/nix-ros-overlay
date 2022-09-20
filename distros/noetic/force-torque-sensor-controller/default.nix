
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, geometry-msgs, hardware-interface, pluginlib, realtime-tools, roscpp }:
buildRosPackage {
  pname = "ros-noetic-force-torque-sensor-controller";
  version = "0.20.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/force_torque_sensor_controller/0.20.0-1.tar.gz";
    name = "0.20.0-1.tar.gz";
    sha256 = "4f323c720b5d6cc09278570b7b135d3ae06a33b04a8c31a2c0f6050d432e335d";
  };

  buildType = "catkin";
  buildInputs = [ catkin pluginlib ];
  propagatedBuildInputs = [ controller-interface controller-manager geometry-msgs hardware-interface realtime-tools roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish state of force-torque sensors'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
