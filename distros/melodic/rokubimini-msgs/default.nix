
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-msgs";
  version = "0.6.0-r3";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/rokubimini_msgs/0.6.0-3/bota_driver-release-release-melodic-rokubimini_msgs-0.6.0-3.tar.gz";
    name = "bota_driver-release-release-melodic-rokubimini_msgs-0.6.0-3.tar.gz";
    sha256 = "f4a7e27c251f1712d3df98786a7d4ca3147fa635a85927e82770ca730bff59e7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message and service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
