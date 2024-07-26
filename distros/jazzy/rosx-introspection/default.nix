
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, fastcdr, geometry-msgs, rapidjson, rclcpp, rosbag2-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rosx-introspection";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosx_introspection-release/archive/release/jazzy/rosx_introspection/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "f592fd3b5df463b4fe2bd6ad8f18f54ecb09c612791ae9245c1cbdf830a09e08";
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
