
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-formatters, ecl-license, catkin, ecl-type-traits, ecl-containers, ecl-exceptions, ecl-mpl, ecl-config, ecl-math, ecl-build, ecl-linear-algebra }:
buildRosPackage {
  pname = "ros-melodic-ecl-geometry";
  version = "0.62.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_geometry/0.62.2-0.tar.gz";
    name = "0.62.2-0.tar.gz";
    sha256 = "ba8a9aeaf31e8a0d1c6a0411fa1898c92894dfce06453d0882c7eeb000d88406";
  };

  buildType = "catkin";
  buildInputs = [ ecl-formatters ecl-license ecl-type-traits ecl-containers ecl-exceptions ecl-mpl ecl-config ecl-math ecl-build ecl-linear-algebra ];
  propagatedBuildInputs = [ ecl-formatters ecl-license ecl-type-traits ecl-containers ecl-mpl ecl-exceptions ecl-config ecl-math ecl-build ecl-linear-algebra ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Any tools relating to mathematical geometry. 
     Primarily featuring polynomials and interpolations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
