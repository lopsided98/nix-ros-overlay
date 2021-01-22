
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, fastcdr, fastrtps, fastrtps-cmake-module, rmw, rosidl-cmake, rosidl-generator-c, rosidl-parser, rosidl-typesupport-fastrtps-cpp, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-dashing-rosidl-typesupport-fastrtps-c";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/dashing/rosidl_typesupport_fastrtps_c/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "a1514b0e656b6cd09e1cca14463efda9c085691a17d04c2409dc0d5eb43908e9";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake fastcdr fastrtps fastrtps-cmake-module rmw rosidl-cmake rosidl-generator-c rosidl-parser rosidl-typesupport-fastrtps-cpp rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake fastcdr fastrtps fastrtps-cmake-module rosidl-cmake rosidl-generator-c rosidl-typesupport-fastrtps-cpp ];

  meta = {
    description = ''Generate the C interfaces for eProsima FastRTPS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
