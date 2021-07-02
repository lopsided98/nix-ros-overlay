
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-msgs";
  version = "0.6.0-r5";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/rokubimini_msgs/0.6.0-5/bota_driver-release-release-melodic-rokubimini_msgs-0.6.0-5.tar.gz";
    name = "bota_driver-release-release-melodic-rokubimini_msgs-0.6.0-5.tar.gz";
    sha256 = "37925d489e5eafc39d69005070d29aa82bad73ef6a9917e6c3525f09ab639d76";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message and service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
