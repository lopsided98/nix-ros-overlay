
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-core, tobas-examples, tobas-external, tobas-gui }:
buildRosPackage {
  pname = "ros-jazzy-tobas";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "d970c6fcf2a50d0e88d7415eab533de70b0094ea85a0061b6aac91a2bd8d44f6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-core tobas-examples tobas-external tobas-gui ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for the complete Tobas flight-control software stack.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
