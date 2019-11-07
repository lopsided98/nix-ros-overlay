
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libpcan, catkin, libphidgets, opengm, libdlib, libntcan }:
buildRosPackage {
  pname = "ros-melodic-cob-extern";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/melodic/cob_extern/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "fab9731beb0fcf45a6e334bf275249c15cc48945b23f1c637ef6b92271367ebc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libpcan libphidgets opengm libdlib libntcan ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_extern stack contains third party libraries needed for operating Care-O-bot. The packages are downloaded from the manufactorers website and not changed in any way.'';
    license = with lib.licenses; [ lgpl2 "proprietary" ];
  };
}
