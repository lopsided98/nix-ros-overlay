
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslint, locomotor, nav-core, nav-core-adapter, nav-2d-utils, move-base-msgs }:
buildRosPackage {
  pname = "ros-melodic-locomove-base";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/locomove_base/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "f8eb11d52a5e4b23ba8563021f1273b28f5be9f690335ab490ae50ca34f23b30";
  };

  buildType = "catkin";
  buildInputs = [ locomotor nav-core nav-core-adapter nav-2d-utils move-base-msgs ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ locomotor nav-core nav-core-adapter nav-2d-utils move-base-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extension of locomotor that implements move_base's functionality.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
