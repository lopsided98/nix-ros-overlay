
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, cacert, catkin, flex, mk, openssl, rosbash, rosbuild, roslib, rospack, unzip }:
buildRosPackage {
  pname = "ros-noetic-ff";
  version = "2.1.26-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/ff/2.1.26-1.tar.gz";
    name = "2.1.26-1.tar.gz";
    sha256 = "49c404fca5d769b971307eadfa407680d56388b4320e7fa57236f41dc1fd91dd";
  };

  buildType = "catkin";
  buildInputs = [ bison cacert catkin flex mk openssl rosbash rosbuild roslib rospack unzip ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ff: pddl planner. see http://www.loria.fr/~hoffmanj/ff.html'';
    license = with lib.licenses; [ "GPL" ];
  };
}
