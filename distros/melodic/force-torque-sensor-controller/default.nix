
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, geometry-msgs, hardware-interface, pluginlib, realtime-tools, roscpp }:
buildRosPackage {
  pname = "ros-melodic-force-torque-sensor-controller";
  version = "0.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/force_torque_sensor_controller/0.17.3-1.tar.gz";
    name = "0.17.3-1.tar.gz";
    sha256 = "36ae7ed1871c2f14d0dc03bba28da0532072f8ddf96a4f441020b43d427d3446";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-interface geometry-msgs hardware-interface pluginlib realtime-tools roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish state of force-torque sensors'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
