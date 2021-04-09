
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rokubimini-msgs";
  version = "0.5.9-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/kinetic/rokubimini_msgs/0.5.9-2/bota_driver-release-release-kinetic-rokubimini_msgs-0.5.9-2.tar.gz";
    name = "bota_driver-release-release-kinetic-rokubimini_msgs-0.5.9-2.tar.gz";
    sha256 = "404089f6d9cc3bd66cf923842ff8c74eb029365da91a0a63b8c6e80e11cd96c6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message and service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
