
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-gz-bridge, ros-gz-image, ros-gz-sim, ros-gz-sim-demos }:
buildRosPackage {
  pname = "ros-iron-ros-gz";
  version = "0.254.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/iron/ros_gz/0.254.2-1.tar.gz";
    name = "0.254.2-1.tar.gz";
    sha256 = "f8da0e34264af1b862433da6ecb32e8cdded781c436dec733a4eea1b3c63764d";
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
