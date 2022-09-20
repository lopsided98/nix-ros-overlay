
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, locomotor, move-base-msgs, nav-2d-utils, nav-core, nav-core-adapter, roslint }:
buildRosPackage {
  pname = "ros-melodic-locomove-base";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/locomove_base/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "2059b2a14cbe6c59d3ae2e27c1781c5b824d354f2446fb3ccdff1cfefa9345e0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ locomotor move-base-msgs nav-2d-utils nav-core nav-core-adapter ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extension of locomotor that implements move_base's functionality.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
