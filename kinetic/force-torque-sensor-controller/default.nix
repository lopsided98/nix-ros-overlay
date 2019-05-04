
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, pluginlib, realtime-tools, catkin, controller-interface, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-force-torque-sensor-controller";
  version = "0.13.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/force_torque_sensor_controller/0.13.5-0.tar.gz;
    sha256 = "8777d68ce69e252a16588b0b4b89418c25ed94ff674fd93f260ba56f596a939c";
  };

  buildInputs = [ hardware-interface pluginlib realtime-tools controller-interface roscpp geometry-msgs ];
  propagatedBuildInputs = [ hardware-interface pluginlib realtime-tools controller-interface roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish state of force-torque sensors'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
