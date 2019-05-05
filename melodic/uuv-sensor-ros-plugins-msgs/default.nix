
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-sensor-ros-plugins-msgs";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_sensor_ros_plugins_msgs/0.6.10-0.tar.gz;
    sha256 = "11a61e9c1cb05c12af6ecfb2bbb21b0f8d5eea0096eef9299d0eca8f0132b806";
  };

  buildInputs = [ message-generation geometry-msgs ];
  propagatedBuildInputs = [ message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_sensor_ros_plugins_msgs package'';
    license = with lib.licenses; [ asl20 ];
  };
}
