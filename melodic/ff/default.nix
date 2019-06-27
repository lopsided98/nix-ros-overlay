
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, rosbash, mk, rosbuild, catkin, flex, cacert, unzip, openssl, roslib, bison }:
buildRosPackage {
  pname = "ros-melodic-ff";
  version = "2.1.12-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/ff/2.1.12-2.tar.gz;
    sha256 = "7129d14ffc1ec32e13a5e06dea0a4a761440e72d92a588012393659cc3d0f9f1";
  };

  buildInputs = [ rospack rosbash mk rosbuild flex cacert unzip openssl roslib bison ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ff: pddl planner. see http://www.loria.fr/~hoffmanj/ff.html'';
    license = with lib.licenses; [ gpl1 ];
  };
}
