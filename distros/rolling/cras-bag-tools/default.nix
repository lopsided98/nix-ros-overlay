
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-cmake-ros, builtin-interfaces, cras-lint, cv-bridge, python3Packages, rclpy, rosbag2-py, rosidl-runtime-py, sensor-msgs, tf2-msgs }:
buildRosPackage {
  pname = "ros-rolling-cras-bag-tools";
  version = "3.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cras_ros_utils-release/archive/release/rolling/cras_bag_tools/3.0.2-2.tar.gz";
    name = "3.0.2-2.tar.gz";
    sha256 = "409432ea77d721ac6ef45f25fc8b470ad2b621c4e3ee9a2cd5e13424892b2332";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ament-cmake-ros ];
  checkInputs = [ cras-lint ];
  propagatedBuildInputs = [ builtin-interfaces cv-bridge python3Packages.marisa python3Packages.matplotlib python3Packages.tqdm rclpy rosbag2-py rosidl-runtime-py sensor-msgs tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ament-cmake-ros ];

  meta = {
    description = "Various utilities to work with bag files";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
