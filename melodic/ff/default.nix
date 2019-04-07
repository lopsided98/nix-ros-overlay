
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, rosbash, mk, rosbuild, catkin, flex, cacert, unzip, openssl, roslib, bison }:
buildRosPackage {
  pname = "ros-melodic-ff";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/ff/2.1.11-0.tar.gz;
    sha256 = "659fc4d1dd3a388860d8daffe67a537beed9a9cb2cf1ec447546a2e90abd604c";
  };

  buildInputs = [ rospack rosbash mk rosbuild flex cacert unzip openssl roslib bison ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ff: pddl planner. see http://www.loria.fr/~hoffmanj/ff.html'';
    #license = lib.licenses.GPL;
  };
}
