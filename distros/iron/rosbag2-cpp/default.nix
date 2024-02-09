
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, ament-lint-common, pluginlib, rclcpp, rcpputils, rcutils, rmw, rmw-implementation, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, rosbag2-test-msgdefs, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-cpp, rosidl-typesupport-introspection-cpp, shared-queues-vendor, test-msgs }:
buildRosPackage {
  pname = "ros-iron-rosbag2-cpp";
  version = "0.22.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/iron/rosbag2_cpp/0.22.6-1.tar.gz";
    name = "0.22.6-1.tar.gz";
    sha256 = "abc60608df8d3a36b97d85071d9d8b558674dfa7c39e04ba9395fad4e8e45565";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rosbag2-storage-default-plugins rosbag2-test-common rosbag2-test-msgdefs test-msgs ];
  propagatedBuildInputs = [ ament-index-cpp pluginlib rclcpp rcpputils rcutils rmw rmw-implementation rosbag2-storage rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-cpp rosidl-typesupport-introspection-cpp shared-queues-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ ROSBag2 client library'';
    license = with lib.licenses; [ asl20 ];
  };
}
