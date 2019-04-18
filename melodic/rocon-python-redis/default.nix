
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-rocon-python-redis";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/rocon_tools-release/archive/release/melodic/rocon_python_redis/0.3.2-0.tar.gz;
    sha256 = "1a4191ef365c4c05d0bc6cc96bf5754a4f6a0b787dedb55e80676cbc03aa71ac";
  };

  buildInputs = [ pythonPackages.catkin-pkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Locally patched version of the python redis client (https://github.com/andymccurdy/redis-py).'';
    #license = lib.licenses.BSD;
  };
}
