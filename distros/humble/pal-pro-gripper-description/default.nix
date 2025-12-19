
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, pal-urdf-utils, xacro }:
buildRosPackage {
  pname = "ros-humble-pal-pro-gripper-description";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_pro_gripper-release/archive/release/humble/pal_pro_gripper_description/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "4488b00dd0b2284378b7dcc14ccfd396ce729ef63c00abd7c7e7596ebea51337";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pal-urdf-utils xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The pal_pro_gripper_description package";
    license = with lib.licenses; [ asl20 ];
  };
}
