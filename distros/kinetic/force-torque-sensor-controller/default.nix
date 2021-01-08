
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, geometry-msgs, hardware-interface, pluginlib, realtime-tools, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-force-torque-sensor-controller";
  version = "0.13.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/force_torque_sensor_controller/0.13.6-1.tar.gz";
    name = "0.13.6-1.tar.gz";
    sha256 = "a223e470525af69cbe42203b19ef015edbacfa24bf1de9402548d702aabdc9bf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface geometry-msgs hardware-interface pluginlib realtime-tools roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish state of force-torque sensors'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
