
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-uuv-sensor-ros-plugins-msgs";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/lunar/uuv_sensor_ros_plugins_msgs/0.6.12-0.tar.gz;
    sha256 = "0e44cc0d2bbb54af71505aa3efadfb9aa45569c35e25cae556dc608898141dc3";
  };

  buildInputs = [ message-generation geometry-msgs ];
  propagatedBuildInputs = [ message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_sensor_ros_plugins_msgs package'';
    license = with lib.licenses; [ asl20 ];
  };
}
