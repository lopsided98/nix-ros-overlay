
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-flir-camera-description";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/humble/flir_camera_description/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "b439516d3e9f9b1ce3df8eeaf956b00058aa9e0785e978f502983e781db04c4f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''FLIR camera Description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
