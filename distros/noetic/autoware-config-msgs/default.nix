
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-autoware-config-msgs";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/autoware-ai/messages-release/archive/release/noetic/autoware_config_msgs/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "eafaea3c8e37f57ddb46a1f4b9cb3152ba49dec22a3cf4b13e538c70c2947ccf";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The autoware_config_msgs package'';
    license = with lib.licenses; [ asl20 ];
  };
}
