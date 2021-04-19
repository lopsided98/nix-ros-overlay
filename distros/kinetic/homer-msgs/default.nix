
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-homer-msgs";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://gitlab.uni-koblenz.de/robbie/homer_msgs-release/-/archive/release/kinetic/homer_msgs/0.1.6-1/homer_msgs-release-release-kinetic-homer_msgs-0.1.6-1.tar.gz";
    name = "homer_msgs-release-release-kinetic-homer_msgs-0.1.6-1.tar.gz";
    sha256 = "e9f91137552c0a4f07d7fd970b053f75d8ca45a9e6957a6cc0ebdc756715e1ee";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The homer_msgs package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
