
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, urdf-tutorial }:
buildRosPackage {
  pname = "ros-humble-bcr-arm-description";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bcr_arm-release/archive/release/humble/bcr_arm_description/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "d371b9af5d886fc7ee576c7cf7bf79e7c1e6a6a0c5ac60bd6bbd0be7b88dbcd8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ urdf-tutorial ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "robot description files including urdf, meshes and launch files for the bcr arm";
    license = with lib.licenses; [ asl20 ];
  };
}
