
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-msgs";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/rokubimini_msgs/0.6.1-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "c7a1307e24aa8bca74a820833d07bd2e6c2a05804de3161c4dcdea338f0d9dc9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message and service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
