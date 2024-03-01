
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-iron-flir-camera-description";
  version = "2.0.8-r2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/iron/flir_camera_description/2.0.8-2.tar.gz";
    name = "2.0.8-2.tar.gz";
    sha256 = "c28fdb71a7c4a82b6befe799881c635a7e9e360a7629da25a7c7909b54de09cf";
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
