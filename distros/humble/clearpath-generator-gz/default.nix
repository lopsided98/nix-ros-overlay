
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-config, clearpath-generator-common }:
buildRosPackage {
  pname = "ros-humble-clearpath-generator-gz";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_simulator-release/archive/release/humble/clearpath_generator_gz/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "44334a377d5dd7781a1fc9f7069443a475bff132db9d64b9190baff170ea24ed";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ clearpath-config clearpath-generator-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath Gazebo Generator";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
