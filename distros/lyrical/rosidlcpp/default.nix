
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, rosidlcpp-generator-c, rosidlcpp-generator-cpp, rosidlcpp-generator-py, rosidlcpp-generator-type-description, rosidlcpp-typesupport-c, rosidlcpp-typesupport-cpp, rosidlcpp-typesupport-fastrtps-c, rosidlcpp-typesupport-fastrtps-cpp, rosidlcpp-typesupport-introspection-c, rosidlcpp-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-lyrical-rosidlcpp";
  version = "0.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/lyrical/rosidlcpp/0.5.0-3.tar.gz";
    name = "0.5.0-3.tar.gz";
    sha256 = "72154c71d267f1aec4c1dbe52ca4c56e6e6a8210709e661bc511504f0f24e87d";
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
