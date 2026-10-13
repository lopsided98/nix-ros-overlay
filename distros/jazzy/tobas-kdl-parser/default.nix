
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-kdl-conversions, tobas-urdf }:
buildRosPackage {
  pname = "ros-jazzy-tobas-kdl-parser";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_kdl_parser/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "54467fcc7bcb6d0552b516ba66e28483d77bbdd91fb1fe7922d1ec05821b86bc";
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
