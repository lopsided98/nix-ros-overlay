
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-core, tobas-examples, tobas-external, tobas-gui }:
buildRosPackage {
  pname = "ros-jazzy-tobas";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "32b279fd9c24c1f293aba1b9a0bbd923aa9525c22b64ea57326a5cb6e92b5d78";
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
