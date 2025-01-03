
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, fastcdr, geometry-msgs, rapidjson, rclcpp, rosbag2-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-rosx-introspection";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosx_introspection-release/archive/release/humble/rosx_introspection/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "7219a64fdbab0624d00b67697ae66dc7a7c1d8008ad1930dd66e80c5aabe8182";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ geometry-msgs sensor-msgs ];
  propagatedBuildInputs = [ ament-index-cpp fastcdr rapidjson rclcpp rosbag2-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Successor of ros_type_introspection";
    license = with lib.licenses; [ mit ];
  };
}
