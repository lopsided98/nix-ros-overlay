
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-typesupport-interface, ament-lint-common, fastrtps, rosidl-cmake, rosidl-parser, rosidl-typesupport-fastrtps-cpp, fastcdr, ament-lint-auto, fastrtps-cmake-module, rmw, rosidl-generator-c }:
buildRosPackage rec {
  pname = "ros-dashing-rosidl-typesupport-fastrtps-c";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/dashing/rosidl_typesupport_fastrtps_c/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "beb8ca1492e7e7d3856f2113811664d83e52cb79380c3e71a56429b825b25a1e";
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
