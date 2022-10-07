
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-tablet-socket-msgs";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/autoware-ai/messages-release/archive/release/melodic/tablet_socket_msgs/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "46866d3f0916a650ea03de6f93ad4f7488b1c2d79c48bd87112d8c6b04573e1d";
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
