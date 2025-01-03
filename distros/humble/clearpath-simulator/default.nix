
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-generator-gz, clearpath-gz }:
buildRosPackage {
  pname = "ros-humble-clearpath-simulator";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_simulator-release/archive/release/humble/clearpath_simulator/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "02615cfa920f02d86f93c18e7bd5df9b76cf4820e61dc8a0f65401cd1eb2294f";
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
