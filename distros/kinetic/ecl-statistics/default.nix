
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-config, ecl-license, ecl-linear-algebra, ecl-mpl, ecl-type-traits }:
buildRosPackage {
  pname = "ros-kinetic-ecl-statistics";
  version = "0.61.17";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_statistics/0.61.17-0.tar.gz";
    name = "0.61.17-0.tar.gz";
    sha256 = "9f35e828c2c62e86e373448a88b9ee6cbba38eeb3d8d364c2b0929c6abd81e26";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ecl-build ecl-config ecl-license ecl-linear-algebra ecl-mpl ecl-type-traits ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common statistical structures and algorithms for control systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
