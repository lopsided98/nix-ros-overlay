
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-core, tobas-examples, tobas-external, tobas-gui }:
buildRosPackage {
  pname = "ros-jazzy-tobas";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "ef5585a838418f2eb381129d4ab1ea123e0e99dffc56a175c49d3164289afef9";
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
