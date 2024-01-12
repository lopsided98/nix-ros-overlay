
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-config, ecl-errors, ecl-exceptions, ecl-license, ecl-time, ecl-time-lite }:
buildRosPackage {
  pname = "ros-noetic-ecl-ipc";
  version = "0.62.3-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/noetic/ecl_ipc/0.62.3-1.tar.gz";
    name = "0.62.3-1.tar.gz";
    sha256 = "34c58eb9fea5505ed920f8a88e10c5c3d97a18928999a34334689b69de9fad80";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-build ecl-config ecl-errors ecl-exceptions ecl-license ecl-time ecl-time-lite ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interprocess mechanisms vary greatly across platforms - sysv, posix, win32, there
  are more than a few. This package provides an infrastructure to allow for developing 
  cross platform c++ wrappers around the lower level c api's that handle these 
  mechanisms. These make it not only easier to utilise such mechanisms, but allow it 
  to be done consistently across platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
