
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-kdl-conversions, tobas-urdf }:
buildRosPackage {
  pname = "ros-jazzy-tobas-kdl-parser";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_kdl_parser/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "5cc3d4a84e5947cd3aabc3a3a41c4efec0c13e0da34ced5fd250b955178109a1";
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
