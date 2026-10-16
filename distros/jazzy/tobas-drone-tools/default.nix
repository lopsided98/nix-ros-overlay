
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-drone-core }:
buildRosPackage {
  pname = "ros-jazzy-tobas-drone-tools";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_drone_tools/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "bc1893d2f79281b93a308dbfd96b372d52adca4977d0e134d1147ccf654880c8";
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
