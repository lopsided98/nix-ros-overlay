
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-cmake-ros-core, fmt, nlohmann_json, rcutils, ros-environment, rosidl-cmake, rosidl-generator-type-description, rosidl-typesupport-interface, rosidlcpp-generator-core, rosidlcpp-parser }:
buildRosPackage {
  pname = "ros-lyrical-rosidlcpp-generator-c";
  version = "0.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/lyrical/rosidlcpp_generator_c/0.5.0-3.tar.gz";
    name = "0.5.0-3.tar.gz";
    sha256 = "4b2373facea267e647466c70aed0126da3d876ea6be51534768438f9383c11b3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ros-environment ];
  propagatedBuildInputs = [ ament-cmake-core fmt nlohmann_json rcutils rosidl-cmake rosidl-generator-type-description rosidl-typesupport-interface rosidlcpp-generator-core rosidlcpp-parser ];
  nativeBuildInputs = [ ament-cmake ament-cmake-core ament-cmake-ros-core ];

  meta = {
    description = "Generate the ROS interfaces in C.";
    license = with lib.licenses; [ asl20 ];
  };
}
