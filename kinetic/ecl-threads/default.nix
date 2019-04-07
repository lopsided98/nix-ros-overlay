
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-utilities, catkin, ecl-concepts, ecl-build, ecl-exceptions, ecl-time, ecl-license, ecl-errors, ecl-config }:
buildRosPackage {
  pname = "ros-kinetic-ecl-threads";
  version = "0.61.17";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_threads/0.61.17-0.tar.gz;
    sha256 = "93443ed61cd42a7d9e86d0fde1708b004c3bce432972f020d77f093b0795f3b9";
  };

  buildInputs = [ ecl-exceptions ecl-build ecl-license ecl-utilities ecl-errors ecl-concepts ecl-config ecl-time ];
  propagatedBuildInputs = [ ecl-exceptions ecl-build ecl-license ecl-utilities ecl-errors ecl-concepts ecl-config ecl-time ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides the c++ extensions for a variety of threaded 
     programming tools. These are usually different on different 
     platforms, so the architecture for a cross-platform framework
     is also implemented.'';
    #license = lib.licenses.BSD;
  };
}
