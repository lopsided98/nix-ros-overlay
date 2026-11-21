
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch, launch-ros, launch-yaml, mocap4r2-control, mocap4r2-interfaces, mocap4r2-marker-viz, rclcpp, rclcpp-components, tf2-msgs }:
buildRosPackage {
  pname = "ros-humble-mocap4r2-sim-driver";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap4r2-release/archive/release/humble/mocap4r2_sim_driver/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "80c0e3e57be3e529dadc919f01921eccdf31c9f6ae8fb7aa0c03b2f71ce0186f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common tf2-msgs ];
  propagatedBuildInputs = [ launch launch-ros launch-yaml mocap4r2-control mocap4r2-interfaces mocap4r2-marker-viz rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Simulated MOCAP4ROS2 system: synthetic rigid bodies and markers with noise, occlusions, dropped frames and latency";
    license = with lib.licenses; [ asl20 ];
  };
}
