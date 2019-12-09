
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, bison, catkin, roslib, unzip, rosbash, openssl, cacert, flex, rosbuild, mk }:
buildRosPackage {
  pname = "ros-melodic-ff";
  version = "2.1.13-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/ff/2.1.13-1.tar.gz";
    name = "2.1.13-1.tar.gz";
    sha256 = "7937f6b5795627983cffb79b3fd64d6e556db27246e2d48c5db3f8d788d267bb";
  };

  buildType = "catkin";
  buildInputs = [ bison roslib unzip rosbash openssl cacert mk flex rosbuild rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ff: pddl planner. see http://www.loria.fr/~hoffmanj/ff.html'';
    license = with lib.licenses; [ gpl1 ];
  };
}
