
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, geometry-msgs, hardware-interface, pluginlib, realtime-tools, roscpp }:
buildRosPackage {
  pname = "ros-melodic-force-torque-sensor-controller";
  version = "0.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/force_torque_sensor_controller/0.15.1-1.tar.gz";
    name = "0.15.1-1.tar.gz";
    sha256 = "0d79ee174d2afda41b87f1a13683d7d1b31c1e6671162cdc351d381f19d74414";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface geometry-msgs hardware-interface pluginlib realtime-tools roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish state of force-torque sensors'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
