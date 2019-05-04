
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libqsopt, libpcan, catkin, libphidgets, opengm, libdlib, libconcorde-tsp-solver, libntcan }:
buildRosPackage {
  pname = "ros-kinetic-cob-extern";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/ipa320/cob_extern-release/archive/release/kinetic/cob_extern/0.6.12-0.tar.gz;
    sha256 = "de5f3eafd8f673cbe4bd3a21938e2eefc954933fc5a067de72d0918a0fcedd90";
  };

  propagatedBuildInputs = [ libqsopt libphidgets opengm libntcan libdlib libconcorde-tsp-solver libpcan ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_extern stack contains third party libraries needed for operating Care-O-bot. The packages are downloaded from the manufactorers website and not changed in any way.'';
    license = with lib.licenses; [ lgpl2 "proprietary" ];
  };
}
