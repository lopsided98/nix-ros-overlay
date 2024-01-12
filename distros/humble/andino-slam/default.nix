
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, slam-toolbox }:
buildRosPackage {
  pname = "ros-humble-andino-slam";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/andino-release/archive/release/humble/andino_slam/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "92a781dfa798cbab0d9dbf284ee5a2f451fae441511e53f756f40729bb8917b2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ slam-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The andino_slam package'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
