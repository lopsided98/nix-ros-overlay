
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, fastcdr, fastrtps, fastrtps-cmake-module, rmw, rosidl-cmake, rosidl-generator-c, rosidl-generator-cpp, rosidl-parser, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-crystal-rosidl-typesupport-fastrtps-cpp";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/crystal/rosidl_typesupport_fastrtps_cpp/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "2daa01538507dddde0fb0cae9725c2a4410ffa22a8939dff2c562c4a6956a93e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake fastcdr fastrtps fastrtps-cmake-module rmw rosidl-cmake rosidl-generator-c rosidl-generator-cpp rosidl-parser rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake fastcdr fastrtps fastrtps-cmake-module rosidl-cmake rosidl-generator-c rosidl-generator-cpp ];

  meta = {
    description = ''Generate the C++ interfaces for eProsima FastRTPS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
