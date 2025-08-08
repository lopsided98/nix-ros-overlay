
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-rolling-flir-camera-description";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flir_camera_driver-release/archive/release/rolling/flir_camera_description/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "871af21531c260c8c92e46417c713815df7e12bc07e13f3176e4dcaa94eee52f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "FLIR camera Description package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
