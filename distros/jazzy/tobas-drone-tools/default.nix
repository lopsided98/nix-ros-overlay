
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-drone-core }:
buildRosPackage {
  pname = "ros-jazzy-tobas-drone-tools";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_drone_tools/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "8acf95644c4be57fcca990f96cc923fc283820a126fcf2b3699d9be00fd07f0a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-drone-core ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aircraft analysis tools for trim, stability derivatives, dynamics, and actuator mixing.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
