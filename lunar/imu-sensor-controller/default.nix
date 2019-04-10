
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, pluginlib, realtime-tools, sensor-msgs, catkin, controller-interface, roscpp }:
buildRosPackage {
  pname = "ros-lunar-imu-sensor-controller";
  version = "0.13.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/lunar/imu_sensor_controller/0.13.4-0.tar.gz;
    sha256 = "cf451ed64ae6560f24ba3cddb4de6ba09cc3d1cc6f413903c316a0991e299149";
  };

  buildInputs = [ hardware-interface controller-interface pluginlib realtime-tools sensor-msgs roscpp ];
  propagatedBuildInputs = [ hardware-interface controller-interface pluginlib realtime-tools sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish state of IMU sensors'';
    #license = lib.licenses.BSD;
  };
}
