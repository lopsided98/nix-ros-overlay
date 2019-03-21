
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-formatters, catkin, ecl-build, ecl-exceptions, ecl-containers, ecl-license, ecl-type-traits, ecl-math, ecl-linear-algebra, ecl-config, ecl-mpl }:
buildRosPackage {
  pname = "ros-kinetic-ecl-geometry";
  version = "0.61.17";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_geometry/0.61.17-0.tar.gz;
    sha256 = "2c8ffa6963d3def116dacabf28c4162e11a477ec916bd0314145ebd0ecae68b6";
  };

  propagatedBuildInputs = [ ecl-formatters ecl-build ecl-exceptions ecl-containers ecl-license ecl-type-traits ecl-math ecl-linear-algebra ecl-config ecl-mpl ];
  nativeBuildInputs = [ ecl-formatters catkin ecl-build ecl-exceptions ecl-containers ecl-license ecl-type-traits ecl-math ecl-linear-algebra ecl-config ecl-mpl ];

  meta = {
    description = ''Any tools relating to mathematical geometry. 
     Primarily featuring polynomials and interpolations.'';
    #license = lib.licenses.BSD;
  };
}
