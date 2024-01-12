
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, locomotor, move-base-msgs, nav-2d-utils, nav-core, nav-core-adapter, roslint }:
buildRosPackage {
  pname = "ros-noetic-locomove-base";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/locomove_base/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "adc38904239987e62831c4fc0ce28d392d817e3266eb8e03fe1b01ba6b4e8a79";
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
