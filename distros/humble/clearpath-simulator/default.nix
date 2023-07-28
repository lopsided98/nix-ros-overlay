
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-generator-gz, clearpath-gz }:
buildRosPackage {
  pname = "ros-humble-clearpath-simulator";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_simulator-release/archive/release/humble/clearpath_simulator/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "b7cc8cff10f9798e8a3686010739744db51f2abd1a6f3c16e5dcfd4700a0c56f";
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
