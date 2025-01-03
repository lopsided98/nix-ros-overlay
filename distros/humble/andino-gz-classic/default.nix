
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, andino-control, andino-description, control-msgs, gazebo-ros, gazebo-ros-pkgs, gazebo-ros2-control, robot-state-publisher, ros2launch, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-andino-gz-classic";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/andino-release/archive/release/humble/andino_gz_classic/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "7f535e9348bc2efcd1104c0452b950cb2f2a7a4c7578bcbfc5ac83b8270ebf97";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ andino-control andino-description control-msgs gazebo-ros gazebo-ros-pkgs gazebo-ros2-control robot-state-publisher ros2launch rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Launch Gazebo simulation with Andino";
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
