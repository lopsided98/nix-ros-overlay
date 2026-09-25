
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-eigen-tools, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dsp";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dsp/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "becde0aac1032671a193f2f2b8eee61ebf59cc16bcb4f99f4411a868d211e3c8";
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
