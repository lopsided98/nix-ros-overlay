
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, geometry-msgs, hardware-interface, pluginlib, realtime-tools, roscpp }:
buildRosPackage {
  pname = "ros-noetic-force-torque-sensor-controller";
  version = "0.22.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/force_torque_sensor_controller/0.22.0-1.tar.gz";
    name = "0.22.0-1.tar.gz";
    sha256 = "a52c26752d210008c1329047985753d6942a4e5291d01a3f0fc972d3978448ad";
  };

  buildType = "catkin";
  buildInputs = [ catkin pluginlib ];
  propagatedBuildInputs = [ controller-interface controller-manager geometry-msgs hardware-interface realtime-tools roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Controller to publish state of force-torque sensors";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
