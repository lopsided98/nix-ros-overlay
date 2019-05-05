
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-formatters, catkin, ecl-build, ecl-exceptions, ecl-containers, ecl-license, ecl-type-traits, ecl-math, ecl-linear-algebra, ecl-config, ecl-mpl }:
buildRosPackage {
  pname = "ros-melodic-ecl-geometry";
  version = "0.62.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_geometry/0.62.2-0.tar.gz;
    sha256 = "ba8a9aeaf31e8a0d1c6a0411fa1898c92894dfce06453d0882c7eeb000d88406";
  };

  buildInputs = [ ecl-formatters ecl-build ecl-exceptions ecl-containers ecl-license ecl-type-traits ecl-math ecl-linear-algebra ecl-config ecl-mpl ];
  propagatedBuildInputs = [ ecl-formatters ecl-build ecl-exceptions ecl-containers ecl-license ecl-type-traits ecl-math ecl-linear-algebra ecl-config ecl-mpl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Any tools relating to mathematical geometry. 
     Primarily featuring polynomials and interpolations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
