
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-generator-gz, clearpath-gz }:
buildRosPackage {
  pname = "ros-humble-clearpath-simulator";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_simulator-release/archive/release/humble/clearpath_simulator/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "3ad50aa6cda37ad6845700e3584cade1f860ba79239dd625510cd081276a1473";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ clearpath-generator-gz clearpath-gz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Clearpath Simulator Metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
