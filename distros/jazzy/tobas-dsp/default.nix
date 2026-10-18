
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-eigen-tools, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dsp";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dsp/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "530148a68ebdb50397fe31d1010f4e680e5c1f08710cd7a961d5f6a29328e1c3";
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
