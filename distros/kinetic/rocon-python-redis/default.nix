
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-rocon-python-redis";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_python_redis/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "e5c54406e2e37a79b3c01ff7d897109114b846d9d2f9f0e761f5e43c637d7c25";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.catkin-pkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Locally patched version of the python redis client (https://github.com/andymccurdy/redis-py).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
