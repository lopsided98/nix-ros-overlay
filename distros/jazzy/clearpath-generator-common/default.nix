
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-apt, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, clearpath-config, clearpath-control, clearpath-description, clearpath-diagnostics, clearpath-manipulators, moveit-setup-srdf-plugins }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-generator-common";
  version = "2.9.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_generator_common/2.9.4-1.tar.gz";
    name = "2.9.4-1.tar.gz";
    sha256 = "3143b9f462e1333b30084e744e6fe1028d0185de01eb0b2d214a775abdc113ee";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake moveit-setup-srdf-plugins ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_python3-apt clearpath-config clearpath-control clearpath-description clearpath-diagnostics clearpath-manipulators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath Common Generator";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
