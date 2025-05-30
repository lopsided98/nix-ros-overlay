
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-gz-bridge, ros-gz-image, ros-gz-sim, ros-gz-sim-demos }:
buildRosPackage {
  pname = "ros-rolling-ros-gz";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/rolling/ros_gz/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "22fe1952d377cc8b04185a6ec3fa7eff9e020a499498afd9760bd1696e09ecf5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ros-gz-bridge ros-gz-image ros-gz-sim ros-gz-sim-demos ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Meta-package containing interfaces for using ROS 2 with <a href=\"https://gazebosim.org\">Gazebo</a> simulation.";
    license = with lib.licenses; [ asl20 ];
  };
}
