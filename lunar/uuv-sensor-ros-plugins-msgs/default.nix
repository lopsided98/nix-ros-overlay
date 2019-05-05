
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-uuv-sensor-ros-plugins-msgs";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/lunar/uuv_sensor_ros_plugins_msgs/0.6.10-0.tar.gz;
    sha256 = "cc1a5420f5ca413914eb451ddcbcc68db17f3eedea5a2dd9a068dac6c082e85d";
  };

  buildInputs = [ message-generation geometry-msgs ];
  propagatedBuildInputs = [ message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_sensor_ros_plugins_msgs package'';
    license = with lib.licenses; [ asl20 ];
  };
}
