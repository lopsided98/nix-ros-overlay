
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rosgraph-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-autoware-system-msgs";
  version = "1.12.0-r1";

  src = fetchurl {
    url = "https://github.com/autoware-ai/messages-release/archive/release/kinetic/autoware_system_msgs/1.12.0-1.tar.gz";
    name = "1.12.0-1.tar.gz";
    sha256 = "4c709d8507d7bc02387d8e10a0a98e92e1421b0a89bc5e23bd9caade01105a02";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime rosgraph-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The autoware_system_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
