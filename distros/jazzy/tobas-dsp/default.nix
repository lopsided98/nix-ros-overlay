
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-eigen-tools, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dsp";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dsp/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "de6bcce8ac4753e2b10e29fb17eeae03deb1ae242da054da0b3c42fd786b99ac";
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
