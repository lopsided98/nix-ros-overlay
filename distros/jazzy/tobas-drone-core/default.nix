
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-kdl, tobas-nlp, tobas-yaml-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-drone-core";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_drone_core/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "8c78230547412d7629eeb03fd9b66c824490941f9c60ea44296c67ffbcffef79";
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
