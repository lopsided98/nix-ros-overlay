
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, clearpath-config, clearpath-control, clearpath-description, clearpath-manipulators, moveit-setup-srdf-plugins }:
buildRosPackage {
  pname = "ros-humble-clearpath-generator-common";
  version = "1.3.13-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_generator_common/1.3.13-1.tar.gz";
    name = "1.3.13-1.tar.gz";
    sha256 = "3dc76a2bbcc9f5d221269a521cf9a879c3e68f63d140017c46e470e8b57ae7ad";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ clearpath-config clearpath-control clearpath-description clearpath-manipulators moveit-setup-srdf-plugins ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath Common Generator";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
