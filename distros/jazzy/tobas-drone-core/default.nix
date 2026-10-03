
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-kdl, tobas-nlp, tobas-yaml-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-drone-core";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_drone_core/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "4a2a8aed3c840a81243649aff0821a78dcd987e5e6f16b48a7c74f11c1300441";
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
