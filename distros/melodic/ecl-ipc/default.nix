
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-config, ecl-errors, ecl-exceptions, ecl-license, ecl-time, ecl-time-lite }:
buildRosPackage {
  pname = "ros-melodic-ecl-ipc";
  version = "0.62.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_ipc/0.62.2-0.tar.gz";
    name = "0.62.2-0.tar.gz";
    sha256 = "35873c953237fc4218b4a354119e76304a5a8aa4c4147e2ccfab5aac4f3bf4dc";
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
