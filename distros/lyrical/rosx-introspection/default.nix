
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, geometry-msgs, rapidjson, rclcpp, rosbag2-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rosx-introspection";
  version = "2.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosx_introspection-release/archive/release/lyrical/rosx_introspection/2.3.0-3.tar.gz";
    name = "2.3.0-3.tar.gz";
    sha256 = "cd12bd18e6c495b3b847eaa2b7480f2f3df4add38765c540abe2595d647f5272";
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
