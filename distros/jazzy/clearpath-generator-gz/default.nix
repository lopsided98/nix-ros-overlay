
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-config, clearpath-generator-common, cv-bridge, ptz-action-server-msgs, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-generator-gz";
  version = "2.9.5-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_simulator-release/archive/release/jazzy/clearpath_generator_gz/2.9.5-1.tar.gz";
    name = "2.9.5-1.tar.gz";
    sha256 = "27900c51fd80e2dbeaa1cd976496eee12aab2e958c2ba315b4c7d3e27f77670d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ clearpath-config clearpath-generator-common cv-bridge ptz-action-server-msgs sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath Gazebo Generator";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
