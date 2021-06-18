
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, geometry-msgs, hardware-interface, pluginlib, realtime-tools, roscpp }:
buildRosPackage {
  pname = "ros-noetic-force-torque-sensor-controller";
  version = "0.19.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/force_torque_sensor_controller/0.19.0-1.tar.gz";
    name = "0.19.0-1.tar.gz";
    sha256 = "118b2a5754ef2839be99ec0bc90e71651dd3d67ac62328830715941c538ce3ae";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib ];
  propagatedBuildInputs = [ controller-interface controller-manager geometry-msgs hardware-interface realtime-tools roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish state of force-torque sensors'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
