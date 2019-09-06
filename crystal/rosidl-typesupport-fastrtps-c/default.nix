
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-typesupport-interface, ament-lint-common, fastrtps, rosidl-cmake, rosidl-parser, rosidl-typesupport-fastrtps-cpp, fastcdr, ament-lint-auto, fastrtps-cmake-module, rmw, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-crystal-rosidl-typesupport-fastrtps-c";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/crystal/rosidl_typesupport_fastrtps_c/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "7b6a807031603ef8dd4c18a8a78316fba8a333fca59e6ff65b6be32da4b5534a";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake rosidl-typesupport-interface fastrtps rosidl-cmake rosidl-parser rosidl-typesupport-fastrtps-cpp fastcdr fastrtps-cmake-module rmw rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake fastrtps rosidl-cmake rosidl-typesupport-fastrtps-cpp fastcdr fastrtps-cmake-module rosidl-generator-c ];

  meta = {
    description = ''Generate the C interfaces for eProsima FastRTPS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
