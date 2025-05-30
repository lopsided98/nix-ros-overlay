
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, fmt, nlohmann_json, rcutils, rosidl-cmake, rosidl-generator-type-description, rosidl-typesupport-interface, rosidlcpp-generator-core, rosidlcpp-parser }:
buildRosPackage {
  pname = "ros-rolling-rosidlcpp-generator-c";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/rolling/rosidlcpp_generator_c/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "20626161e877a58a445778e73cb05fffa77a30edbc89a30f51682edfbaf13e35";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core fmt nlohmann_json rcutils rosidl-cmake rosidl-generator-type-description rosidl-typesupport-interface rosidlcpp-generator-core rosidlcpp-parser ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "Generate the ROS interfaces in C.";
    license = with lib.licenses; [ asl20 ];
  };
}
