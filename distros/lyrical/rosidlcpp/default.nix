
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, rosidlcpp-generator-c, rosidlcpp-generator-cpp, rosidlcpp-generator-py, rosidlcpp-generator-type-description, rosidlcpp-typesupport-c, rosidlcpp-typesupport-cpp, rosidlcpp-typesupport-fastrtps-c, rosidlcpp-typesupport-fastrtps-cpp, rosidlcpp-typesupport-introspection-c, rosidlcpp-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-lyrical-rosidlcpp";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/lyrical/rosidlcpp/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "1ffefcd2056823f8c34a3c37875765054cb562781a4f746bb3178cbb4ddf0d11";
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
