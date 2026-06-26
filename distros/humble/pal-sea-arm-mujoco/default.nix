
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch, launch-pal, launch-ros, mujoco-ros2-control, pal-pro-gripper-description, pal-sea-arm-bringup, pal-sea-arm-description, pal-sea-arm-moveit-config, pal-urdf-utils }:
buildRosPackage {
  pname = "ros-humble-pal-sea-arm-mujoco";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_sea_arm_simulation-release/archive/release/humble/pal_sea_arm_mujoco/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "fdfe84a3747c6b37e467ae821c9c8f33fc5c0f9b88af14025436d04ae90ebc20";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch launch-pal launch-ros mujoco-ros2-control pal-pro-gripper-description pal-sea-arm-bringup pal-sea-arm-description pal-sea-arm-moveit-config pal-urdf-utils ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The pal_sea_arm_mujoco package";
    license = with lib.licenses; [ asl20 ];
  };
}
