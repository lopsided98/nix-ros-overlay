
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, fastcdr, geometry-msgs, rapidjson, rclcpp, rosbag2-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosx-introspection";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosx_introspection-release/archive/release/rolling/rosx_introspection/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "96e8c78e70d835097c862872c3a1f90718386d9b2807e69d903465ffb8504496";
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
