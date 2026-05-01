
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-cmake-ros, builtin-interfaces, cras-lint, cv-bridge, python3Packages, rclpy, rosbag2-py, rosidl-runtime-py, sensor-msgs, tf2-msgs }:
buildRosPackage {
  pname = "ros-lyrical-cras-bag-tools";
  version = "3.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cras_ros_utils-release/archive/release/lyrical/cras_bag_tools/3.0.2-3.tar.gz";
    name = "3.0.2-3.tar.gz";
    sha256 = "addac02e68c5e81d69b1764427d4c03509b34f2571e9f72e201978b2a9605455";
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
