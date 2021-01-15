
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-homer-msgs";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://gitlab.uni-koblenz.de/robbie/homer_msgs-release/repository/archive.tar.gz?ref=release/kinetic/homer_msgs/0.1.6-1";
    name = "archive.tar.gz";
    sha256 = "b6e7861f84afa4caf9094f2c48005f74e996ac5d1a6e31085d38246053f7a9cf";
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
