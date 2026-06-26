
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, pal-urdf-utils, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-pal-gripper-description";
  version = "3.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_gripper-release/archive/release/humble/pal_gripper_description/3.6.6-1.tar.gz";
    name = "3.6.6-1.tar.gz";
    sha256 = "a0982412a8787495cbc4ebdbc860cef546a5505e3cf7d6b5ebb62afc65b11e82";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common urdf-test ];
  propagatedBuildInputs = [ pal-urdf-utils xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The pal_gripper_description package";
    license = with lib.licenses; [ asl20 ];
  };
}
