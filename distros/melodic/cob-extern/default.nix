
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libdlib, libntcan, libpcan, libphidgets, opengm }:
buildRosPackage {
  pname = "ros-melodic-cob-extern";
  version = "0.6.17-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/melodic/cob_extern/0.6.17-1.tar.gz";
    name = "0.6.17-1.tar.gz";
    sha256 = "b553ab87584e4a72347ee7149936c66d3c297f093dddd78f24c5da33bb3d8763";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ libdlib libntcan libpcan libphidgets opengm ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_extern stack contains third party libraries needed for operating Care-O-bot. The packages are downloaded from the manufactorers website and not changed in any way.'';
    license = with lib.licenses; [ "LGPL" "Proprietary" ];
  };
}
