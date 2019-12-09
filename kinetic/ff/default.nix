
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, bison, catkin, roslib, unzip, rosbash, openssl, cacert, flex, rosbuild, mk }:
buildRosPackage {
  pname = "ros-kinetic-ff";
  version = "2.1.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/ff/2.1.14-1.tar.gz";
    name = "2.1.14-1.tar.gz";
    sha256 = "42bcfd2c0fd4b72cf4f113832aa1c6cbab5c78ab9a920a9acb307687ce8709ae";
  };

  buildType = "catkin";
  buildInputs = [ bison roslib unzip rosbash openssl cacert mk flex rosbuild rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ff: pddl planner. see http://www.loria.fr/~hoffmanj/ff.html'';
    license = with lib.licenses; [ gpl1 ];
  };
}
