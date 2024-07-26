
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, fastcdr, geometry-msgs, rapidjson, rclcpp, rosbag2-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-rosx-introspection";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosx_introspection-release/archive/release/iron/rosx_introspection/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "1c35967ac6fa42ea9f218a0180fe76d76099c87a0ec38bea96e4860bfb93b664";
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
