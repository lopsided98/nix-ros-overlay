
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, fastcdr, fastrtps, fastrtps-cmake-module, rmw, rosidl-cmake, rosidl-generator-c, rosidl-generator-cpp, rosidl-parser, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-dashing-rosidl-typesupport-fastrtps-cpp";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/dashing/rosidl_typesupport_fastrtps_cpp/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "4ef809ed7018c90ce3fcba280459c0ecfb96906a51c995e9339f8eb4071b3b10";
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
