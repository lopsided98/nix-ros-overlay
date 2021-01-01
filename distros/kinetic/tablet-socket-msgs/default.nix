
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-tablet-socket-msgs";
  version = "1.12.0-r1";

  src = fetchurl {
    url = "https://github.com/autoware-ai/messages-release/archive/release/kinetic/tablet_socket_msgs/1.12.0-1.tar.gz";
    name = "1.12.0-1.tar.gz";
    sha256 = "ecbe36e77e778402e6bb15aa98a2845ae50f8563debfee534d9da7a67f56fe16";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tablet_socket_msgs package'';
    license = with lib.licenses; [ asl20 ];
  };
}
