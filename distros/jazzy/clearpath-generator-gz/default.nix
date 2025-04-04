
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-config, clearpath-generator-common, cv-bridge, ptz-action-server-msgs, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-generator-gz";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_simulator-release/archive/release/jazzy/clearpath_generator_gz/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "d20fe91f56290d7826c2c70fed90266593f58b1d43aa912c85afa3e6fa8f9ff9";
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
