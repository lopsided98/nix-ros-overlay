
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-config, clearpath-generator-common, cv-bridge, ptz-action-server-msgs, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-generator-gz";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_simulator-release/archive/release/jazzy/clearpath_generator_gz/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "af624ce23c5f6561048a9d51b40821fae65d317eaff1e8936577bd2197de3fdb";
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
