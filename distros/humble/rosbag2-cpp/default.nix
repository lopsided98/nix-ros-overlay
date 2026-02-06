
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, ament-lint-common, pluginlib, rclcpp, rcpputils, rcutils, rmw, rmw-implementation, rmw-implementation-cmake, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-storage-mcap, rosbag2-test-common, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-cpp, rosidl-typesupport-introspection-cpp, shared-queues-vendor, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-humble-rosbag2-cpp";
  version = "0.15.16-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/rosbag2_cpp/0.15.16-1.tar.gz";
    name = "0.15.16-1.tar.gz";
    sha256 = "6176a85211e53ce9c2c1842d0fb2460df29a267ddecc11724a0192bf11e5ff8a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rmw-implementation-cmake rosbag2-storage-default-plugins rosbag2-storage-mcap rosbag2-test-common std-msgs test-msgs ];
  propagatedBuildInputs = [ ament-index-cpp pluginlib rclcpp rcpputils rcutils rmw rmw-implementation rosbag2-storage rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-cpp rosidl-typesupport-introspection-cpp shared-queues-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ ROSBag2 client library";
    license = with lib.licenses; [ asl20 ];
  };
}
