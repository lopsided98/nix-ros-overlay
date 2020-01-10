
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, fastcdr, fastrtps, fastrtps-cmake-module, rmw, rosidl-cmake, rosidl-generator-c, rosidl-parser, rosidl-typesupport-fastrtps-cpp, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-typesupport-fastrtps-c";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/eloquent/rosidl_typesupport_fastrtps_c/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "4cc0ba2549cb232f0e1b5b890baa75524db15fafbc567b552b9da82d53fcf0ce";
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
