
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch, launch-ros, launch-yaml, mocap4r2-control, mocap4r2-interfaces, mocap4r2-marker-viz, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-kilted-mocap4r2-optitrack-driver";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap4ros2_optitrack-release/archive/release/kilted/mocap4r2_optitrack_driver/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "edc4198eb25f1eb3c8b447245d80de867f41eade256ab7392be836836335e5d6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch launch-ros launch-yaml mocap4r2-control mocap4r2-interfaces mocap4r2-marker-viz rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "MOCAP4ROS2 driver for OptiTrack (Motive), with an open NatNet 3.0-4.x implementation and a NatNet simulator";
    license = with lib.licenses; [ asl20 ];
  };
}
