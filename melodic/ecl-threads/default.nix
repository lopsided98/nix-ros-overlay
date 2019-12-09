
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-time, ecl-license, catkin, ecl-errors, ecl-utilities, ecl-exceptions, ecl-concepts, ecl-config, ecl-build }:
buildRosPackage {
  pname = "ros-melodic-ecl-threads";
  version = "0.62.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_threads/0.62.2-0.tar.gz";
    name = "0.62.2-0.tar.gz";
    sha256 = "ba9d0e01c8f88af99570d7a92b88a2184521c7c4e4622a440a7ab7eea56af380";
  };

  buildType = "catkin";
  buildInputs = [ ecl-time ecl-license ecl-errors ecl-utilities ecl-exceptions ecl-concepts ecl-config ecl-build ];
  propagatedBuildInputs = [ ecl-time ecl-license ecl-errors ecl-utilities ecl-exceptions ecl-concepts ecl-config ecl-build ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides the c++ extensions for a variety of threaded 
     programming tools. These are usually different on different 
     platforms, so the architecture for a cross-platform framework
     is also implemented.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
