
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-config, clearpath-generator-common, cv-bridge, ptz-action-server-msgs, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-generator-gz";
  version = "2.7.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_simulator-release/archive/release/jazzy/clearpath_generator_gz/2.7.1-1.tar.gz";
    name = "2.7.1-1.tar.gz";
    sha256 = "be4d45c7de18c43dc43095697aa85613ea578959d65d5da64534a9fa90a78618";
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
