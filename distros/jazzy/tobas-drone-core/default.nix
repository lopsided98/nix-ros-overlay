
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-kdl, tobas-nlp, tobas-yaml-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-drone-core";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_drone_core/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "a6b1b86f2979c096f1bcd22438f5e8d688d58f4d0315a4aadb07d483850b35fd";
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
