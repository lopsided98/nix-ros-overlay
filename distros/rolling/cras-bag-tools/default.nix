
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-cmake-ros, builtin-interfaces, cras-lint, cv-bridge, python3Packages, rclpy, rosbag2-py, rosidl-runtime-py, sensor-msgs, tf2-msgs }:
buildRosPackage {
  pname = "ros-rolling-cras-bag-tools";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cras_ros_utils-release/archive/release/rolling/cras_bag_tools/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "fde07a4890bdcc6b3601f1b598cf19b8bcb414d47050d1bf3f210c9f837127de";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ament-cmake-ros ];
  checkInputs = [ cras-lint ];
  propagatedBuildInputs = [ builtin-interfaces cv-bridge python3Packages.marisa python3Packages.matplotlib python3Packages.tqdm rclpy rosbag2-py rosidl-runtime-py sensor-msgs tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ament-cmake-ros ];

  meta = {
    description = "Various utilities to work with bag files";
    license = with lib.licenses; [ bsd3 ];
  };
}
