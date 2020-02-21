
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, exotica-core }:
buildRosPackage {
  pname = "ros-kinetic-exotica-levenberg-marquardt-solver";
  version = "5.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_levenberg_marquardt_solver/5.1.3-1.tar.gz";
    name = "5.1.3-1.tar.gz";
    sha256 = "bf2bb3264c9845bb92067b62c24dd38006c65dca697c550c3b921ace9721349f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen exotica-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Levenberg-Marquardt solver for EXOTica'';
    license = with lib.licenses; [ mit ];
  };
}
