
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-gz-bridge, ros-gz-image, ros-gz-sim, ros-gz-sim-demos }:
buildRosPackage {
  pname = "ros-humble-ros-gz";
  version = "0.244.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_gz/0.244.6-1.tar.gz";
    name = "0.244.6-1.tar.gz";
    sha256 = "c23dd35d41779536b1893f4a2365830d6684a08a3d7b1db12b332ed0394350a5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ros-gz-bridge ros-gz-image ros-gz-sim ros-gz-sim-demos ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meta-package containing interfaces for using ROS 2 with <a href="https://gazebosim.org">Gazebo</a> simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
