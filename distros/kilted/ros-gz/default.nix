
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-gz-bridge, ros-gz-image, ros-gz-sim, ros-gz-sim-demos }:
buildRosPackage {
  pname = "ros-kilted-ros-gz";
  version = "2.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/kilted/ros_gz/2.1.8-1.tar.gz";
    name = "2.1.8-1.tar.gz";
    sha256 = "139e15b173910f420f49f305ba706f7b12db227815c2e136ad9f765a2bb91541";
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
