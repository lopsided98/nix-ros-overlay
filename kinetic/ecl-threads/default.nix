
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-time, ecl-license, catkin, ecl-errors, ecl-utilities, ecl-exceptions, ecl-concepts, ecl-config, ecl-build }:
buildRosPackage {
  pname = "ros-kinetic-ecl-threads";
  version = "0.61.17";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_threads/0.61.17-0.tar.gz";
    name = "0.61.17-0.tar.gz";
    sha256 = "93443ed61cd42a7d9e86d0fde1708b004c3bce432972f020d77f093b0795f3b9";
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
