
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rosgraph-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-autoware-system-msgs";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/autoware-ai/messages-release/archive/release/noetic/autoware_system_msgs/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "04c9598cea451a0f0f7aea0480985b8f3d23c89c3bdc50f4596c51b9b5301a1e";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime rosgraph-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The autoware_system_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
