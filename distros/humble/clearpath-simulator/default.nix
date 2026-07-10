
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-generator-gz, clearpath-gz }:
buildRosPackage {
  pname = "ros-humble-clearpath-simulator";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_simulator-release/archive/release/humble/clearpath_simulator/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "d384a56fe2a547e2cc30bc633275e942ad87b4ee643ff0dd951e9ef195d26cc6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ clearpath-generator-gz clearpath-gz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath Simulator Metapackage";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
