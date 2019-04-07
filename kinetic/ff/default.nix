
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, rosbash, mk, rosbuild, catkin, flex, cacert, unzip, openssl, roslib, bison }:
buildRosPackage {
  pname = "ros-kinetic-ff";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/ff/2.1.11-0.tar.gz;
    sha256 = "9552e77743c2686d27fdf8484937e20edd08d8cc5b16806c4f6d65d1fb92edbd";
  };

  buildInputs = [ rospack rosbash mk rosbuild flex cacert unzip openssl roslib bison ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ff: pddl planner. see http://www.loria.fr/~hoffmanj/ff.html'';
    #license = lib.licenses.GPL;
  };
}
