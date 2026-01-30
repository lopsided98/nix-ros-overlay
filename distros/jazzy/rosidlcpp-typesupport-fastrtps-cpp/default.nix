
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-cmake-ros, fastcdr, fmt, nlohmann_json, rmw, rosidl-generator-c, rosidl-generator-cpp, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-interface, rosidlcpp-generator-core, rosidlcpp-parser }:
buildRosPackage {
  pname = "ros-jazzy-rosidlcpp-typesupport-fastrtps-cpp";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/jazzy/rosidlcpp_typesupport_fastrtps_cpp/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "67ecd653d7fe18e75b157a52b799273866163d8b3f9be13f3704391d9252bfba";
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
