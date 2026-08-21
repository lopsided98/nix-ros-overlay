
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, kangaroo-bringup, kangaroo-controller-configuration, kangaroo-description, launch, launch-pal, launch-ros, mujoco-ros2-control, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-humble-kangaroo-mujoco";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kangaroo_simulation-release/archive/release/humble/kangaroo_mujoco/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "ca4f53f44fe9f0b524dbeaee2fd2ba265b247352346142a2abc347359f9be6ea";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ kangaroo-bringup kangaroo-controller-configuration kangaroo-description launch launch-pal launch-ros mujoco-ros2-control rclpy std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Kangaroo MuJoCo simulation package";
    license = with lib.licenses; [ asl20 ];
  };
}
