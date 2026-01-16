
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-cmake-ros, builtin-interfaces, cras-lint, cv-bridge, python3Packages, rclpy, rosbag2-py, rosidl-runtime-py, sensor-msgs, tf2-msgs }:
buildRosPackage {
  pname = "ros-kilted-cras-bag-tools";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cras_ros_utils-release/archive/release/kilted/cras_bag_tools/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "96cb1852d0c8f384c8f8d8e6fd679796290b9ad39bacbfd39d55f8f7cf60e490";
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
