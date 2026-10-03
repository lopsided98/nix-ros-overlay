
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-eigen-tools, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dsp";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dsp/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "4c4abccd9584aed6f8efc0a935e7db99b0a33dcb3581a13f8d573ab999eaa53d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-eigen-tools tobas-std-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Digital signal-processing filters and online statistical estimators for Tobas.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
