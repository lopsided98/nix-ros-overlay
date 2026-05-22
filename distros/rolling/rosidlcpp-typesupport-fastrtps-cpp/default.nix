
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-cmake-ros, fastcdr, fmt, nlohmann_json, rmw, rosidl-generator-c, rosidl-generator-cpp, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-interface, rosidlcpp-generator-core, rosidlcpp-parser }:
buildRosPackage {
  pname = "ros-rolling-rosidlcpp-typesupport-fastrtps-cpp";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/rolling/rosidlcpp_typesupport_fastrtps_cpp/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "6390246f7a9401424eb696b3a0ca960949ff81d57bc5ca9490c037aa99b85a0e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ ament-cmake-ros fastcdr fmt nlohmann_json rmw rosidl-generator-c rosidl-generator-cpp rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-interface rosidlcpp-generator-core rosidlcpp-parser ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ament-cmake-ros rosidl-generator-c rosidl-generator-cpp ];

  meta = {
    description = "Generate the C++ interfaces for eProsima FastRTPS.";
    license = with lib.licenses; [ asl20 ];
  };
}
