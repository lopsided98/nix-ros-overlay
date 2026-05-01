
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, ament-lint-common, pluginlib, rclcpp, rcpputils, rcutils, rmw, rmw-implementation, rmw-implementation-cmake, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, rosbag2-test-msgdefs, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-cpp, rosidl-typesupport-introspection-cpp, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rosbag2-cpp";
  version = "0.33.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/lyrical/rosbag2_cpp/0.33.2-1.tar.gz";
    name = "0.33.2-1.tar.gz";
    sha256 = "b80a529c3ddd06a65476b82db21461440f25650334c7db220e49657e8b2d2a8a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rmw-implementation-cmake rosbag2-storage-default-plugins rosbag2-test-common rosbag2-test-msgdefs std-msgs test-msgs ];
  propagatedBuildInputs = [ ament-index-cpp pluginlib rclcpp rcpputils rcutils rmw rmw-implementation rosbag2-storage rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-cpp rosidl-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ ROSBag2 client library";
    license = with lib.licenses; [ asl20 ];
  };
}
