
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav-core-adapter, roslint, nav-core, catkin, move-base-msgs, nav-2d-utils, locomotor }:
buildRosPackage {
  pname = "ros-melodic-locomove-base";
  version = "0.2.5-r1";

  src = fetchurl {
    url = https://github.com/DLu/robot_navigation-release/archive/release/melodic/locomove_base/0.2.5-1.tar.gz;
    sha256 = "f8eb11d52a5e4b23ba8563021f1273b28f5be9f690335ab490ae50ca34f23b30";
  };

  checkInputs = [ roslint ];
  propagatedBuildInputs = [ move-base-msgs nav-2d-utils nav-core-adapter locomotor nav-core ];
  nativeBuildInputs = [ move-base-msgs nav-2d-utils nav-core-adapter locomotor nav-core catkin ];

  meta = {
    description = ''Extension of locomotor that implements move_base's functionality.'';
    #license = lib.licenses.BSD;
  };
}
