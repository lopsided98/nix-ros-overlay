
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, mocap4r2-control-msgs, rclcpp, rclcpp-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-humble-mocap4r2-control";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap4r2-release/archive/release/humble/mocap4r2_control/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "c736df2df3c4371e64e26c086682e8834b11d50db1b8e9bffbbfc0ff95d414d7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common std-msgs ];
  propagatedBuildInputs = [ mocap4r2-control-msgs rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Control protocol for MOCAP4ROS2 Project'';
    license = with lib.licenses; [ asl20 ];
  };
}
