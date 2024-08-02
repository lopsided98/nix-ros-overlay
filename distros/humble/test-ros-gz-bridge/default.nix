
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch-ros, launch-testing, launch-testing-ament-cmake, ros-gz-bridge }:
buildRosPackage {
  pname = "ros-humble-test-ros-gz-bridge";
  version = "0.244.15-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/test_ros_gz_bridge/0.244.15-1.tar.gz";
    name = "0.244.15-1.tar.gz";
    sha256 = "335e2948722dce23368012d9d24ae6600dbfc56f2b539b773c287fee0be4966a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-ros launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ ros-gz-bridge ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Bridge communication between ROS and Gazebo Transport";
    license = with lib.licenses; [ asl20 ];
  };
}
