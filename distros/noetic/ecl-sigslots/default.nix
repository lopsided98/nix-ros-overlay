
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-config, ecl-license, ecl-threads }:
buildRosPackage {
  pname = "ros-noetic-ecl-sigslots";
  version = "0.62.3-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/noetic/ecl_sigslots/0.62.3-1.tar.gz";
    name = "0.62.3-1.tar.gz";
    sha256 = "38a1cccb17b81e055ae00a2e4c4fa1a4dfb990143209077d67553ceb5bf69873";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
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
