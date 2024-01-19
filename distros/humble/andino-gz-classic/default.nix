
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, andino-control, andino-description, control-msgs, gazebo-ros, gazebo-ros-pkgs, gazebo-ros2-control, robot-state-publisher, ros2launch, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-andino-gz-classic";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/andino-release/archive/release/humble/andino_gz_classic/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "5089dbcb96fdb604cdda5aa9367b5b15791d2a029ab737c6db2b8d0f5c625299";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ andino-control andino-description control-msgs gazebo-ros gazebo-ros-pkgs gazebo-ros2-control robot-state-publisher ros2launch rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch Gazebo simulation with Andino'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
