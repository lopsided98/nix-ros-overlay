
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, std-msgs, std-srvs, catkin, message-generation, uuid-msgs }:
buildRosPackage {
  pname = "ros-kinetic-world-canvas-msgs";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/world_canvas_msgs-release/archive/release/kinetic/world_canvas_msgs/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "6686832e89831aba0a5ed492d94f3d7fd36481ca58e55b52ce686220fa030afc";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs std-msgs std-srvs message-generation uuid-msgs ];
  propagatedBuildInputs = [ geometry-msgs std-msgs std-srvs message-runtime uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''World canvas framework messages package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
