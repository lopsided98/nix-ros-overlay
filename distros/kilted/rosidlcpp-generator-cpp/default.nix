
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, fmt, nlohmann_json, rcutils, rosidl-cmake, rosidl-generator-type-description, rosidl-typesupport-interface, rosidlcpp-generator-core, rosidlcpp-parser }:
buildRosPackage {
  pname = "ros-kilted-rosidlcpp-generator-cpp";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/kilted/rosidlcpp_generator_cpp/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "3c7c4fdfcfab0fe9315aa6dd7f81b3c1894161ad82a0ddd35b5bf37696d48304";
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
