
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-gz-bridge, ros-gz-image, ros-gz-sim, ros-gz-sim-demos }:
buildRosPackage {
  pname = "ros-humble-ros-gz";
  version = "0.244.19-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_gz/0.244.19-1.tar.gz";
    name = "0.244.19-1.tar.gz";
    sha256 = "fc6bf8bf5eaa91c9689ced43c9c71c1929ac2ae74c603e13c52624780c6382e4";
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
