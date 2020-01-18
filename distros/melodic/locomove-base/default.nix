
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, locomotor, move-base-msgs, nav-2d-utils, nav-core, nav-core-adapter, roslint }:
buildRosPackage {
  pname = "ros-melodic-locomove-base";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/locomove_base/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "f8eb11d52a5e4b23ba8563021f1273b28f5be9f690335ab490ae50ca34f23b30";
  };

  buildType = "catkin";
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ locomotor move-base-msgs nav-2d-utils nav-core nav-core-adapter ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extension of locomotor that implements move_base's functionality.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
