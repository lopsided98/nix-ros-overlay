
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-config, ecl-containers, ecl-exceptions, ecl-formatters, ecl-license, ecl-linear-algebra, ecl-math, ecl-mpl, ecl-type-traits }:
buildRosPackage {
  pname = "ros-melodic-ecl-geometry";
  version = "0.62.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_geometry/0.62.2-0.tar.gz";
    name = "0.62.2-0.tar.gz";
    sha256 = "ba8a9aeaf31e8a0d1c6a0411fa1898c92894dfce06453d0882c7eeb000d88406";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-build ecl-config ecl-containers ecl-exceptions ecl-formatters ecl-license ecl-linear-algebra ecl-math ecl-mpl ecl-type-traits ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Any tools relating to mathematical geometry. 
     Primarily featuring polynomials and interpolations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
