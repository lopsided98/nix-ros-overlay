
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosgraph-msgs, message-generation, catkin, rospy }:
buildRosPackage {
  pname = "ros-kinetic-log-server";
  version = "0.1.4-r1";

  src = fetchurl {
    url = https://github.com/easymov/log_server-release/archive/release/kinetic/log_server/0.1.4-1.tar.gz;
    sha256 = "991314fdd4bebf07c71d9a0c8c5abf4c18d003412741ae670175a7b81b4935ac";
  };

  buildInputs = [ rosgraph-msgs message-generation ];
  propagatedBuildInputs = [ rosgraph-msgs message-generation rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The log_server package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
