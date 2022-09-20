
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, rc-common-msgs, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rc-reason-msgs";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_reason_clients_ros-release/archive/release/noetic/rc_reason_msgs/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "50a7fbb919cef19e7fc1136fadb1379b05b32ead2bc6eb11c88a5bbfe8dfc5d5";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime rc-common-msgs shape-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Msg and srv definitions for rc_reason_clients'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
