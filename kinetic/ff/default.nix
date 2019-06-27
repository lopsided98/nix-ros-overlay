
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, rosbash, mk, rosbuild, catkin, flex, cacert, unzip, openssl, roslib, bison }:
buildRosPackage {
  pname = "ros-kinetic-ff";
  version = "2.1.12-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/ff/2.1.12-1.tar.gz;
    sha256 = "30d4e141ff34ef90cb6978bc6e65d849b407d079163bc7fe4c33b79283e7389c";
  };

  buildInputs = [ rospack rosbash mk rosbuild flex cacert unzip openssl roslib bison ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ff: pddl planner. see http://www.loria.fr/~hoffmanj/ff.html'';
    license = with lib.licenses; [ gpl1 ];
  };
}
