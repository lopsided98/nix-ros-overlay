
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-cmake-ros, fmt, nlohmann_json, rcutils, ros-environment, rosidl-cmake, rosidl-generator-type-description, rosidl-typesupport-interface, rosidlcpp-generator-core, rosidlcpp-parser }:
buildRosPackage {
  pname = "ros-jazzy-rosidlcpp-generator-c";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/jazzy/rosidlcpp_generator_c/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "44a6dfc4a9cbdde049c36cc2c34c6c48bae0591a4818487da8cd86dc6d7673d0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros ros-environment ];
  propagatedBuildInputs = [ ament-cmake-core fmt nlohmann_json rcutils rosidl-cmake rosidl-generator-type-description rosidl-typesupport-interface rosidlcpp-generator-core rosidlcpp-parser ];
  nativeBuildInputs = [ ament-cmake ament-cmake-core ament-cmake-ros ];

  meta = {
    description = "Generate the ROS interfaces in C.";
    license = with lib.licenses; [ asl20 ];
  };
}
