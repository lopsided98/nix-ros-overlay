
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, cacert, catkin, flex, mk, openssl, rosbash, rosbuild, roslib, rospack, unzip }:
buildRosPackage {
  pname = "ros-melodic-ff";
  version = "2.1.24-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/ff/2.1.24-2.tar.gz";
    name = "2.1.24-2.tar.gz";
    sha256 = "13dfc86b59d80bef612a14e95788d35e583bd0f6caec9a61ec443ca57ef03fc4";
  };

  buildType = "catkin";
  buildInputs = [ bison cacert catkin flex mk openssl rosbash rosbuild roslib rospack unzip ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ff: pddl planner. see http://www.loria.fr/~hoffmanj/ff.html'';
    license = with lib.licenses; [ "GPL" ];
  };
}
