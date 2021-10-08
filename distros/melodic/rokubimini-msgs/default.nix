
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-msgs";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/rokubimini_msgs/0.6.1-1/bota_driver-release-release-melodic-rokubimini_msgs-0.6.1-1.tar.gz";
    name = "bota_driver-release-release-melodic-rokubimini_msgs-0.6.1-1.tar.gz";
    sha256 = "2a50234d0be498b0a6cb8f7775907ace7436c99b271e3276b959ba8b6341b893";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message and service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
