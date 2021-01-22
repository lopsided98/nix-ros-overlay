
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, cacert, catkin, flex, mk, openssl, rosbash, rosbuild, roslib, rospack, unzip }:
buildRosPackage {
  pname = "ros-noetic-ff";
  version = "2.1.21-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/ff/2.1.21-2.tar.gz";
    name = "2.1.21-2.tar.gz";
    sha256 = "957f20eed64325d0864b8a499672f657412f9c10ce6d6718c7157c4e7cda1d53";
  };

  buildType = "catkin";
  buildInputs = [ bison cacert flex mk openssl rosbash rosbuild roslib rospack unzip ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ff: pddl planner. see http://www.loria.fr/~hoffmanj/ff.html'';
    license = with lib.licenses; [ gpl1 ];
  };
}
