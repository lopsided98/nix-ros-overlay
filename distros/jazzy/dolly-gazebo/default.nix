
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_gazebo_ros_pkgs, ament-cmake, ament-lint-auto, ament-lint-common, dolly-follow, ros2launch, rviz2 }:
buildRosPackage {
  pname = "ros-jazzy-dolly-gazebo";
  version = "0.4.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dolly-release/archive/release/jazzy/dolly_gazebo/0.4.0-6.tar.gz";
    name = "0.4.0-6.tar.gz";
    sha256 = "d7f7f4eb6f30217753af3b39d1517c2a0dfdb6b280509edcb020f82326e5e336";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_gazebo_ros_pkgs dolly-follow ros2launch rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Launch Gazebo simulation with Dolly robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
