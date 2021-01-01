
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-config, ecl-containers, ecl-exceptions, ecl-formatters, ecl-license, ecl-linear-algebra, ecl-math, ecl-mpl, ecl-type-traits }:
buildRosPackage {
  pname = "ros-kinetic-ecl-geometry";
  version = "0.61.17";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_geometry/0.61.17-0.tar.gz";
    name = "0.61.17-0.tar.gz";
    sha256 = "2c8ffa6963d3def116dacabf28c4162e11a477ec916bd0314145ebd0ecae68b6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ecl-build ecl-config ecl-containers ecl-exceptions ecl-formatters ecl-license ecl-linear-algebra ecl-math ecl-mpl ecl-type-traits ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Any tools relating to mathematical geometry. 
     Primarily featuring polynomials and interpolations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
