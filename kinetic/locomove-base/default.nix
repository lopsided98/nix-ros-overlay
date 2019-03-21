
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav-core-adapter, roslint, nav-core, catkin, move-base-msgs, nav-2d-utils, locomotor }:
buildRosPackage {
  pname = "ros-kinetic-locomove-base";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/locomove_base/0.2.5-0.tar.gz;
    sha256 = "775a49385eb2e6b31a980d64265b161829dca2ed744c3d50894a22c1a2721ecb";
  };

  checkInputs = [ roslint ];
  propagatedBuildInputs = [ move-base-msgs nav-2d-utils nav-core-adapter locomotor nav-core ];
  nativeBuildInputs = [ move-base-msgs nav-2d-utils nav-core-adapter locomotor nav-core catkin ];

  meta = {
    description = ''Extension of locomotor that implements move_base's functionality.'';
    #license = lib.licenses.BSD;
  };
}
