
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, rosbash, mk, rosbuild, catkin, flex, cacert, unzip, openssl, roslib, bison }:
buildRosPackage {
  pname = "ros-lunar-ff";
  version = "2.1.11-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/lunar/ff/2.1.11-2.tar.gz;
    sha256 = "6c5b13e64b58c77e5f37ec12740316a2ee1493dbb924dc363ab898b2af3bbfdb";
  };

  buildInputs = [ rospack rosbash mk rosbuild flex cacert unzip openssl roslib bison ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ff: pddl planner. see http://www.loria.fr/~hoffmanj/ff.html'';
    license = with lib.licenses; [ gpl1 ];
  };
}
