
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-xmllint, asio, launch, launch-ros, launch-yaml, mocap4r2-control, mocap4r2-interfaces, mocap4r2-marker-viz, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-mocap4r2-vicon-driver";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap4ros2_vicon-release/archive/release/humble/mocap4r2_vicon_driver/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "18a722893cf30d84f58124b38197f0aacd969f926b71497a80959ac6df0a49d1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake asio ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ];
  propagatedBuildInputs = [ launch launch-ros launch-yaml mocap4r2-control mocap4r2-interfaces mocap4r2-marker-viz rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "MOCAP4ROS2 driver for Vicon systems (Nexus, Tracker, Shogun), built on the Vicon DataStream SDK 1.13";
    license = with lib.licenses; [ asl20 mit ];
  };
}
