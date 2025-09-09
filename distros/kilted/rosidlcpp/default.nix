
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, rosidlcpp-generator-c, rosidlcpp-generator-cpp, rosidlcpp-generator-py, rosidlcpp-generator-type-description, rosidlcpp-typesupport-c, rosidlcpp-typesupport-cpp, rosidlcpp-typesupport-fastrtps-c, rosidlcpp-typesupport-fastrtps-cpp, rosidlcpp-typesupport-introspection-c, rosidlcpp-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-kilted-rosidlcpp";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/kilted/rosidlcpp/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "a37b26017479fe0a15e66f1cc743baa63f65a2033af9baf3e76f0c8c96508526";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-core rosidlcpp-generator-c rosidlcpp-generator-cpp rosidlcpp-generator-py rosidlcpp-generator-type-description rosidlcpp-typesupport-c rosidlcpp-typesupport-cpp rosidlcpp-typesupport-fastrtps-c rosidlcpp-typesupport-fastrtps-cpp rosidlcpp-typesupport-introspection-c rosidlcpp-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-core rosidlcpp-generator-c rosidlcpp-generator-cpp rosidlcpp-generator-py rosidlcpp-generator-type-description rosidlcpp-typesupport-c rosidlcpp-typesupport-cpp rosidlcpp-typesupport-fastrtps-c rosidlcpp-typesupport-fastrtps-cpp rosidlcpp-typesupport-introspection-c rosidlcpp-typesupport-introspection-cpp ];

  meta = {
    description = "Meta package depending on all rosidlcpp generators";
    license = with lib.licenses; [ asl20 ];
  };
}
