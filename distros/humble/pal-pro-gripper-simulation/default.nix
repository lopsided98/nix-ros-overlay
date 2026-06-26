
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch-pal, pal-gazebo-worlds, pal-pro-gripper-controller-configuration, pal-pro-gripper-description }:
buildRosPackage {
  pname = "ros-humble-pal-pro-gripper-simulation";
  version = "1.12.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_pro_gripper-release/archive/release/humble/pal_pro_gripper_simulation/1.12.5-1.tar.gz";
    name = "1.12.5-1.tar.gz";
    sha256 = "99efdfba2f50f1b29d51a5dc6b15c32d7dc343dd42f3ce238430dc4e8f850151";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-pal pal-gazebo-worlds pal-pro-gripper-controller-configuration pal-pro-gripper-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The pal_pro_gripper_simulation package";
    license = with lib.licenses; [ asl20 ];
  };
}
