
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libdlib, libntcan, libpcan, libphidgets, opengm }:
buildRosPackage {
  pname = "ros-melodic-cob-extern";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/melodic/cob_extern/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "f66e09c3bd349f884e0520d107b9a11ac19aa361f1ad73730f5a77793653cbf8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libdlib libntcan libpcan libphidgets opengm ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_extern stack contains third party libraries needed for operating Care-O-bot. The packages are downloaded from the manufactorers website and not changed in any way.'';
    license = with lib.licenses; [ lgpl2 "proprietary" ];
  };
}
