
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, fmt, nlohmann_json, rcutils, rosidl-cmake, rosidl-generator-type-description, rosidl-typesupport-interface, rosidlcpp-generator-core, rosidlcpp-parser }:
buildRosPackage {
  pname = "ros-rolling-rosidlcpp-generator-cpp";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/rolling/rosidlcpp_generator_cpp/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "f511577140ec650af79f8b60df849eb5716e9528d2e0b109a61cfd25e47681b5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-core fmt nlohmann_json rcutils rosidl-cmake rosidl-generator-type-description rosidl-typesupport-interface rosidlcpp-generator-core rosidlcpp-parser ];
  nativeBuildInputs = [ ament-cmake ament-cmake-core ];

  meta = {
    description = "Generate the ROS interfaces in C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
