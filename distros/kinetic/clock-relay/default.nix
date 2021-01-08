
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-relay, roscpp, rosgraph-msgs, roslint }:
buildRosPackage {
  pname = "ros-kinetic-clock-relay";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/cpr_multimaster_tools-release/archive/release/kinetic/clock_relay/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "49a8500cdb62580a97141f79c267c0f7e58a847cee017f62e4a706ffed8eb5b3";
  };

  buildType = "catkin";
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ message-relay roscpp rosgraph-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Specialization of message_relay for clock'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
