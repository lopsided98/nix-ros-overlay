
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rsync, catkin }:
buildRosPackage {
  pname = "ros-kinetic-abseil-cpp";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/Eurecat/abseil_cpp-release/archive/release/kinetic/abseil_cpp/0.2.3-0.tar.gz;
    sha256 = "9e9b374fac979fe1f29298d98498d481e12346f1a0c8e0aaca79a0dd01138feb";
  };

  nativeBuildInputs = [ rsync catkin ];

  meta = {
    description = ''The abseil_cpp package'';
    #license = lib.licenses.Apache;
  };
}
