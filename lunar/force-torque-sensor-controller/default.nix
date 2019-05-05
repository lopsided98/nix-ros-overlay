
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, pluginlib, realtime-tools, catkin, controller-interface, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-force-torque-sensor-controller";
  version = "0.13.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/lunar/force_torque_sensor_controller/0.13.4-0.tar.gz;
    sha256 = "ba74f4ec064d803f6f37ba39cdf9c2b853b1f7aaa1deef5a45aa4c7bc7e17e61";
  };

  buildInputs = [ hardware-interface pluginlib realtime-tools controller-interface roscpp geometry-msgs ];
  propagatedBuildInputs = [ hardware-interface pluginlib realtime-tools controller-interface roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish state of force-torque sensors'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
