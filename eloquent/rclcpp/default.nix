
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, test-msgs, rosidl-typesupport-cpp, ament-cmake-gmock, rmw-implementation, ament-lint-auto, ament-cmake-ros, rmw-implementation-cmake, ament-lint-common, rcl-yaml-param-parser, rcpputils, rmw, builtin-interfaces, ament-cmake-gtest, rcl, rosgraph-msgs, rosidl-generator-cpp, rosidl-typesupport-c, tracetools, rcl-interfaces }:
buildRosPackage {
  pname = "ros-eloquent-rclcpp";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/eloquent/rclcpp/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "811ebb18ae97a1faa47c30c4431c678153d1aee605e35560cff99eb9517a480e";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-generator-cpp rosidl-typesupport-c rcl rcl-yaml-param-parser rcpputils tracetools rcl-interfaces rosidl-typesupport-cpp rmw-implementation builtin-interfaces rosgraph-msgs ];
  checkInputs = [ rmw-implementation-cmake ament-lint-common ament-lint-auto test-msgs rmw ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ rosidl-generator-cpp rosidl-typesupport-c rcl ament-cmake rcl-yaml-param-parser rcpputils tracetools rcl-interfaces rmw rosidl-typesupport-cpp rmw-implementation builtin-interfaces rosgraph-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
