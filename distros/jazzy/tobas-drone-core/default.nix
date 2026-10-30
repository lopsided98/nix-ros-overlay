
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-kdl, tobas-nlp, tobas-yaml-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-drone-core";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_drone_core/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "4712d0b5624ed7d1af10d69e3a55b3d36d8018b4f7ea1d3628f7a0d8bb5a4ba7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-constants tobas-kdl tobas-nlp tobas-yaml-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Defines the drone structure. Defines only the minimum required information.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
