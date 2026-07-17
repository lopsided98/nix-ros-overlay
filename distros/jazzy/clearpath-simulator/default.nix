
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-generator-gz, clearpath-gz }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-simulator";
  version = "2.9.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_simulator-release/archive/release/jazzy/clearpath_simulator/2.9.3-1.tar.gz";
    name = "2.9.3-1.tar.gz";
    sha256 = "9ec4ef7c3cea550b912d8f991ce4e19dc23ff0762d6d9ac161504cd1a133f8c6";
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
