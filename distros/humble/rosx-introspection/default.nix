
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, geometry-msgs, rapidjson, rclcpp, rosbag2-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-rosx-introspection";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosx_introspection-release/archive/release/humble/rosx_introspection/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "9d43dc2fb18afae23cb35db6e8aa1949545d1e96ddfa8d7ebc2c76792b44cb8a";
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
