
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, geometry-msgs, rapidjson, rclcpp, rosbag2-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosx-introspection";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosx_introspection-release/archive/release/rolling/rosx_introspection/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "c8d489039e8e1a074c6c2eda7ecb321d6ee10be9999a8d41927c8680500bd072";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest geometry-msgs sensor-msgs ];
  propagatedBuildInputs = [ ament-index-cpp rapidjson rclcpp rosbag2-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Parse any ROS/ROS2 message without compile-time information";
    license = with lib.licenses; [ mit ];
  };
}
