
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-cmake, rosidl-generator-cpp, rcutils, ament-cmake-ros, fastrtps-cmake-module, rmw-fastrtps-shared-cpp, ament-cmake, ament-lint-common, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp, rmw, fastrtps, rosidl-generator-c, fastcdr, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-rmw-fastrtps-cpp";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/eloquent/rmw_fastrtps_cpp/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "767ec4801a60d8a2e26ced9b64689d773f901012cd391b6a32593e33ce04026a";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-generator-cpp rcutils fastrtps-cmake-module rmw-fastrtps-shared-cpp fastcdr rosidl-typesupport-fastrtps-cpp rmw fastrtps rosidl-generator-c rosidl-typesupport-fastrtps-c ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-cmake rosidl-generator-cpp rcutils fastrtps-cmake-module rmw-fastrtps-shared-cpp ament-cmake fastcdr rosidl-typesupport-fastrtps-cpp rmw fastrtps rosidl-generator-c rosidl-typesupport-fastrtps-c ];
  nativeBuildInputs = [ rosidl-cmake ament-cmake-ros fastrtps-cmake-module ];

  meta = {
    description = ''Implement the ROS middleware interface using eProsima FastRTPS static code generation in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
