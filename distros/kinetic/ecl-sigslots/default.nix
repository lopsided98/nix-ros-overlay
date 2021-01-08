
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-config, ecl-license, ecl-threads }:
buildRosPackage {
  pname = "ros-kinetic-ecl-sigslots";
  version = "0.61.17";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_sigslots/0.61.17-0.tar.gz";
    name = "0.61.17-0.tar.gz";
    sha256 = "382d5bdd1f07a31b42a05acce8c356683ee6ab75c40b5fdd32a55de28a3da2e8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ecl-config ecl-license ecl-threads ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a signal/slot mechanism (in the same vein as qt sigslots, 
     boost::signals etc for intra-process communication. These include 
     some improvements - they do not need a preprocessor, are fully type safe,
     allow for simple connections via a posix style string identifier 
     and are multithread-safe.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
