
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs, std-srvs, uuid-msgs }:
buildRosPackage {
  pname = "ros-kinetic-world-canvas-msgs";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/world_canvas_msgs-release/archive/release/kinetic/world_canvas_msgs/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "6686832e89831aba0a5ed492d94f3d7fd36481ca58e55b52ce686220fa030afc";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs std-srvs uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''World canvas framework messages package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
