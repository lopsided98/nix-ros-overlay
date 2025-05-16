
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, cacert, catkin, flex, mk, openssl, rosbash, rosbuild, roslib, rospack, unzip }:
buildRosPackage {
  pname = "ros-noetic-ff";
  version = "2.1.31-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/ff/2.1.31-3.tar.gz";
    name = "2.1.31-3.tar.gz";
    sha256 = "3c83106b1972f1ec8b2719706a164e084786e6688e2341a2c9753f8637b6c687";
  };

  buildType = "catkin";
  buildInputs = [ bison cacert catkin flex mk openssl rosbash rosbuild roslib rospack unzip ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ff: pddl planner. see http://www.loria.fr/~hoffmanj/ff.html";
    license = with lib.licenses; [ "GPL" ];
  };
}
