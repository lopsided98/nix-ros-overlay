
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-config, ecl-license, ecl-threads }:
buildRosPackage {
  pname = "ros-melodic-ecl-sigslots";
  version = "0.62.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_sigslots/0.62.2-0.tar.gz";
    name = "0.62.2-0.tar.gz";
    sha256 = "092e00b6e973f3ea2fd160ff8c691a649c324192c2f06e8141cfa71ddb0e28b4";
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
