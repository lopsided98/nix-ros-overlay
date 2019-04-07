
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, catkin, uuid-msgs, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-world-canvas-msgs";
  version = "0.2.0-r1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/world_canvas_msgs-release/archive/release/kinetic/world_canvas_msgs/0.2.0-1.tar.gz;
    sha256 = "6686832e89831aba0a5ed492d94f3d7fd36481ca58e55b52ce686220fa030afc";
  };

  buildInputs = [ uuid-msgs std-srvs message-generation std-msgs geometry-msgs ];
  propagatedBuildInputs = [ uuid-msgs std-srvs message-runtime std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''World canvas framework messages package'';
    #license = lib.licenses.BSD;
  };
}
