
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-config, ecl-errors, ecl-exceptions, ecl-license, ecl-time, ecl-time-lite }:
buildRosPackage {
  pname = "ros-kinetic-ecl-ipc";
  version = "0.61.17";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_ipc/0.61.17-0.tar.gz";
    name = "0.61.17-0.tar.gz";
    sha256 = "9418c272205c7d415dfe000ee6763e0d14e5afbcfc835a2ddab7c0af9bbe551c";
  };

  buildType = "catkin";
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
