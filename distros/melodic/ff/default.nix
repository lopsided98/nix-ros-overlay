
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, cacert, catkin, flex, mk, openssl, rosbash, rosbuild, roslib, rospack, unzip }:
buildRosPackage {
  pname = "ros-melodic-ff";
  version = "2.1.21-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/ff/2.1.21-3.tar.gz";
    name = "2.1.21-3.tar.gz";
    sha256 = "1c9f22e09ff7bb87120672c2637b10c6fbfe00ec90a8dae895dfea60ac4f6cdd";
  };

  buildType = "catkin";
  buildInputs = [ bison cacert flex mk openssl rosbash rosbuild roslib rospack unzip ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ff: pddl planner. see http://www.loria.fr/~hoffmanj/ff.html'';
    license = with lib.licenses; [ gpl1 ];
  };
}
