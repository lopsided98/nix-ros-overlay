
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-drone-core }:
buildRosPackage {
  pname = "ros-jazzy-tobas-drone-tools";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_drone_tools/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "74b696cd37d4a3898e9b946e9a27339e9b42933ab41659b73cfa085cc25c27f8";
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
