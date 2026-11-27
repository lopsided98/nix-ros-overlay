
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, gz-plugin-vendor, gz-sim-vendor, launch, launch-ros, launch-yaml, lifecycle-msgs, mocap4r2-control, mocap4r2-interfaces, mocap4r2-optitrack-driver, rclcpp, ros-gz-bridge, ros-gz-sim }:
buildRosPackage {
  pname = "ros-jazzy-mocap4r2-gz-plugin";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap4ros2_gazebo-release/archive/release/jazzy/mocap4r2_gz_plugin/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "7384d53e42b67f1101e9b463dc0695ca23374a37da58ff7b31d8b20bed95f768";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gz-plugin-vendor gz-sim-vendor launch launch-ros launch-yaml lifecycle-msgs mocap4r2-control mocap4r2-interfaces mocap4r2-optitrack-driver rclcpp ros-gz-bridge ros-gz-sim ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo plugin simulating a motion capture room: markers on links, streamed as a MOCAP4ROS2 system or as an OptiTrack Motive server";
    license = with lib.licenses; [ asl20 ];
  };
}
