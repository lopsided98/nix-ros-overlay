
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-converters, ecl-eigen, ecl-exceptions, ecl-formatters, ecl-license, ecl-math, sophus }:
buildRosPackage {
  pname = "ros-noetic-ecl-linear-algebra";
  version = "0.62.3-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/noetic/ecl_linear_algebra/0.62.3-1.tar.gz";
    name = "0.62.3-1.tar.gz";
    sha256 = "6654eee4925d4979632e46ab357a7756ded61edb1a488e63ecb49b2b0ce290c5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-build ecl-converters ecl-eigen ecl-exceptions ecl-formatters ecl-license ecl-math sophus ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ecl frontend to a linear matrix package (currently eigen).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
