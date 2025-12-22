
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_gazebo_ros_pkgs, ament-cmake, ament-lint-auto, ament-lint-common, dolly-follow, ros2launch, rviz2 }:
buildRosPackage {
  pname = "ros-rolling-dolly-gazebo";
  version = "0.4.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dolly-release/archive/release/rolling/dolly_gazebo/0.4.0-5.tar.gz";
    name = "0.4.0-5.tar.gz";
    sha256 = "58cb0589484f2d67cb52662b7d3283ca21cc6329fe4b453713b7ffa89dca8fa4";
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
