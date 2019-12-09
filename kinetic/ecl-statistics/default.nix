
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin, ecl-type-traits, ecl-mpl, ecl-config, ecl-build, ecl-linear-algebra }:
buildRosPackage {
  pname = "ros-kinetic-ecl-statistics";
  version = "0.61.17";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_statistics/0.61.17-0.tar.gz";
    name = "0.61.17-0.tar.gz";
    sha256 = "9f35e828c2c62e86e373448a88b9ee6cbba38eeb3d8d364c2b0929c6abd81e26";
  };

  buildType = "catkin";
  buildInputs = [ ecl-license ecl-type-traits ecl-mpl ecl-config ecl-build ecl-linear-algebra ];
  propagatedBuildInputs = [ ecl-license ecl-type-traits ecl-mpl ecl-config ecl-build ecl-linear-algebra ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common statistical structures and algorithms for control systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
