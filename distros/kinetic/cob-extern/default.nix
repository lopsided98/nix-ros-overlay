
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libdlib, libntcan, libpcan, libphidgets, opengm }:
buildRosPackage {
  pname = "ros-kinetic-cob-extern";
  version = "0.6.17-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/kinetic/cob_extern/0.6.17-1.tar.gz";
    name = "0.6.17-1.tar.gz";
    sha256 = "7e4770feda5ef892eb2c858bda6a94db757e428e8cda80f97f796aa53d90cee2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libdlib libntcan libpcan libphidgets opengm ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_extern stack contains third party libraries needed for operating Care-O-bot. The packages are downloaded from the manufactorers website and not changed in any way.'';
    license = with lib.licenses; [ lgpl2 "proprietary" ];
  };
}
