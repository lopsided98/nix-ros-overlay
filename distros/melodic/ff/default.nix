
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, cacert, catkin, flex, mk, openssl, rosbash, rosbuild, roslib, rospack, unzip }:
buildRosPackage {
  pname = "ros-melodic-ff";
  version = "2.1.23-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/ff/2.1.23-1.tar.gz";
    name = "2.1.23-1.tar.gz";
    sha256 = "0bb3abb6c5d7105e7904ac76487dd0a5b5139496906ee319c25e3ca6bf22457c";
  };

  buildType = "catkin";
  buildInputs = [ bison cacert flex mk openssl rosbash rosbuild roslib rospack unzip ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ff: pddl planner. see http://www.loria.fr/~hoffmanj/ff.html'';
    license = with lib.licenses; [ gpl1 ];
  };
}
