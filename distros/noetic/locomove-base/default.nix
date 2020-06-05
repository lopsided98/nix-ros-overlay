
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, locomotor, move-base-msgs, nav-2d-utils, nav-core, nav-core-adapter, roslint }:
buildRosPackage {
  pname = "ros-noetic-locomove-base";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/locomove_base/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "0149e67caf75a3044563bc816ad903adde38955271e52469d2a50feeff264c53";
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
