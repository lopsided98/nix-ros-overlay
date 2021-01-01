
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, libffi, message-generation, message-runtime, openssl }:
buildRosPackage {
  pname = "ros-kinetic-sesame-ros";
  version = "2.1.17-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/sesame_ros/2.1.17-1.tar.gz";
    name = "2.1.17-1.tar.gz";
    sha256 = "a58eabf5e48c81225ec5926792614351f508a42a2a356fc0fd0fe3474b42570c";
  };

  buildType = "catkin";
  buildInputs = [ catkin-virtualenv libffi message-generation openssl ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS API for Sesame smart lock'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
