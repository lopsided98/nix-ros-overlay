
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-kdl-conversions, tobas-urdf }:
buildRosPackage {
  pname = "ros-jazzy-tobas-kdl-parser";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_kdl_parser/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "c141783679431a6ad60a849ca6d7687e05b227c98db77fa04c963ed1f58abbf6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-kdl-conversions tobas-urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Parser that builds KDL robot models from URDF descriptions.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
