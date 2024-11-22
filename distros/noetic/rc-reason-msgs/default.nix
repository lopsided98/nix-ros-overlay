
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, rc-common-msgs, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rc-reason-msgs";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_reason_clients_ros-release/archive/release/noetic/rc_reason_msgs/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "7b58ccd8f06e315d6c40abdb2a67a4672bb77472566d7b88311135bcbe14f8bc";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime rc-common-msgs shape-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Msg and srv definitions for rc_reason_clients";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
