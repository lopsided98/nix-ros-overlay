
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav-core-adapter, roslint, nav-core, catkin, move-base-msgs, nav-2d-utils, locomotor }:
buildRosPackage {
  pname = "ros-lunar-locomove-base";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/lunar/locomove_base/0.2.5-0.tar.gz;
    sha256 = "361f4a4e35f8ee013706e165d5a1e8f65eb3f1b6d1f709f252e115e5681e6a1f";
  };

  buildInputs = [ nav-core-adapter nav-core move-base-msgs nav-2d-utils locomotor ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ nav-core-adapter nav-core move-base-msgs nav-2d-utils locomotor ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extension of locomotor that implements move_base's functionality.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
