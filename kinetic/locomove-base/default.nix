
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslint, locomotor, nav-core, nav-core-adapter, nav-2d-utils, move-base-msgs }:
buildRosPackage {
  pname = "ros-kinetic-locomove-base";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/locomove_base/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "775a49385eb2e6b31a980d64265b161829dca2ed744c3d50894a22c1a2721ecb";
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
