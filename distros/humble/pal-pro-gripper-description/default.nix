
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, pal-urdf-utils, xacro }:
buildRosPackage {
  pname = "ros-humble-pal-pro-gripper-description";
  version = "1.11.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_pro_gripper-release/archive/release/humble/pal_pro_gripper_description/1.11.3-1.tar.gz";
    name = "1.11.3-1.tar.gz";
    sha256 = "3565e7736309eb77fb1b59e8dda1cd217151b9454cad06fd2bd65580c3e359fc";
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
