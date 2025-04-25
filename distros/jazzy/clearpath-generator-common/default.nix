
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, clearpath-config, clearpath-control, clearpath-description, clearpath-manipulators, moveit-setup-srdf-plugins }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-generator-common";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_generator_common/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "1446df2ec5b97a7b970b5e13f292280df4f76f7f6ecff643c04c33401616ed2f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake moveit-setup-srdf-plugins ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ clearpath-config clearpath-control clearpath-description clearpath-manipulators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath Common Generator";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
