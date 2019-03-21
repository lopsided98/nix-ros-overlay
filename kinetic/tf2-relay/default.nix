
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, roslint, catkin, message-relay, tf2-ros, roscpp, roslaunch, tf }:
buildRosPackage {
  pname = "ros-kinetic-tf2-relay";
  version = "0.0.1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/cpr_multimaster_tools-release/archive/release/kinetic/tf2_relay/0.0.1-0.tar.gz;
    sha256 = "48c2b0d027b701f271a12c6bb3782496187639e331fccb4d7ba8c615d7fe76b0";
  };

  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ tf2-msgs tf2-ros message-relay tf roscpp ];
  nativeBuildInputs = [ catkin roscpp tf2-msgs message-relay ];

  meta = {
    description = ''Specialization of message_relay for tf2'';
    #license = lib.licenses.BSD;
  };
}
