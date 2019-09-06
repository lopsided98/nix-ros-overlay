
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-sensor-ros-plugins-msgs";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_sensor_ros_plugins_msgs/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "224d60b31ea5e63efae3ca2fc78b501d208c77a873751a45a64475a3ae4cafd7";
  };

  buildType = "catkin";
  buildInputs = [ message-generation geometry-msgs ];
  propagatedBuildInputs = [ message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_sensor_ros_plugins_msgs package'';
    license = with lib.licenses; [ asl20 ];
  };
}
