
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, catkin, message-relay, rosgraph-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-clock-relay";
  version = "0.0.1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/cpr_multimaster_tools-release/archive/release/kinetic/clock_relay/0.0.1-0.tar.gz;
    sha256 = "4fc68bffec25eb3c8e0b9c60bea8ad10c71a9abb2e784c8e2ad6404014218d0e";
  };

  buildInputs = [ rosgraph-msgs roscpp message-relay ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ rosgraph-msgs roscpp message-relay ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Specialization of message_relay for clock'';
    #license = lib.licenses.BSD;
  };
}
