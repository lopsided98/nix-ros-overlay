
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-cmake-ros, fastcdr, fmt, nlohmann_json, rmw, rosidl-generator-c, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-fastrtps-cpp, rosidl-typesupport-interface, rosidlcpp-generator-core, rosidlcpp-parser }:
buildRosPackage {
  pname = "ros-jazzy-rosidlcpp-typesupport-fastrtps-c";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/jazzy/rosidlcpp_typesupport_fastrtps_c/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "189285b5654163af4cd2b9d0ceaf0051dae8e4159432d60627c3c4b3d50dea93";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ ament-cmake-ros fastcdr fmt nlohmann_json rmw rosidl-generator-c rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-fastrtps-cpp rosidl-typesupport-interface rosidlcpp-generator-core rosidlcpp-parser ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ament-cmake-ros rosidl-generator-c ];

  meta = {
    description = "Generate the C interfaces for eProsima FastRTPS.";
    license = with lib.licenses; [ asl20 ];
  };
}
