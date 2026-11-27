
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-eigen-tools, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dsp";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dsp/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "df7a404fe9d74fd72308e221f8fdb46978fb72244f17ac2c800945a72c85233f";
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
