
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, fastcdr, fastrtps, fastrtps-cmake-module, rmw, rosidl-cmake, rosidl-generator-c, rosidl-generator-cpp, rosidl-parser, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-typesupport-fastrtps-cpp";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/eloquent/rosidl_typesupport_fastrtps_cpp/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "d7e594e77615177a33e67353fe17ad1d71db301a31898829f34f513497b78c62";
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
