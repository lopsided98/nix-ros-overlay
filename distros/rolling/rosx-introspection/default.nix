
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, geometry-msgs, rapidjson, rclcpp, rosbag2-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosx-introspection";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosx_introspection-release/archive/release/rolling/rosx_introspection/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "9126747e2bf15fd8c107ad13b1fb346ec1d6fc46760a7d76a7c4b9a60a411543";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ geometry-msgs sensor-msgs ];
  propagatedBuildInputs = [ ament-index-cpp rapidjson rclcpp rosbag2-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Parse any ROS/ROS2 message without compile-time information";
    license = with lib.licenses; [ mit ];
  };
}
