
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-iron-flir-camera-description";
  version = "2.2.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/iron/flir_camera_description/2.2.14-1.tar.gz";
    name = "2.2.14-1.tar.gz";
    sha256 = "7cfea352fcca13681f399fe46ab0ab17598252ed7141b599201f494d4eb7abf9";
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
