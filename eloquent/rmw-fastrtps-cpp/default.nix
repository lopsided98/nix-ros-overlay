
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, fastcdr, fastrtps, fastrtps-cmake-module, rcutils, rmw, rmw-fastrtps-shared-cpp, rosidl-cmake, rosidl-generator-c, rosidl-generator-cpp, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp }:
buildRosPackage {
  pname = "ros-eloquent-rmw-fastrtps-cpp";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/eloquent/rmw_fastrtps_cpp/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "767ec4801a60d8a2e26ced9b64689d773f901012cd391b6a32593e33ce04026a";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake fastcdr fastrtps fastrtps-cmake-module rcutils rmw rmw-fastrtps-shared-cpp rosidl-cmake rosidl-generator-c rosidl-generator-cpp rosidl-typesupport-fastrtps-c rosidl-typesupport-fastrtps-cpp ];
  nativeBuildInputs = [ ament-cmake-ros fastrtps-cmake-module rosidl-cmake ];

  meta = {
    description = ''Implement the ROS middleware interface using eProsima FastRTPS static code generation in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
