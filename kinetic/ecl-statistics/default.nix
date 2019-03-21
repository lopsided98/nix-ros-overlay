
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-license, ecl-type-traits, ecl-linear-algebra, ecl-config, ecl-mpl }:
buildRosPackage {
  pname = "ros-kinetic-ecl-statistics";
  version = "0.61.17";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_statistics/0.61.17-0.tar.gz;
    sha256 = "9f35e828c2c62e86e373448a88b9ee6cbba38eeb3d8d364c2b0929c6abd81e26";
  };

  propagatedBuildInputs = [ ecl-build ecl-license ecl-type-traits ecl-linear-algebra ecl-config ecl-mpl ];
  nativeBuildInputs = [ ecl-build ecl-license ecl-type-traits ecl-linear-algebra catkin ecl-config ecl-mpl ];

  meta = {
    description = ''Common statistical structures and algorithms for control systems.'';
    #license = lib.licenses.BSD;
  };
}
