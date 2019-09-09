
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, pluginlib, ament-lint-common, shared-queues-vendor, ament-cmake-gmock, test-msgs, rosbag2-test-common, ament-cmake, poco-vendor, rosidl-typesupport-cpp, rosidl-typesupport-introspection-cpp, ament-index-cpp, ament-lint-auto, rosbag2-storage, rcutils }:
buildRosPackage {
  pname = "ros-dashing-rosbag2";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/rosbag2/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "a99a31b13a3b34a307348d0c050b22fb522b5cf155ef487b1836ae8a0a8ed6ce";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-generator-cpp pluginlib shared-queues-vendor poco-vendor rosidl-typesupport-cpp rosidl-typesupport-introspection-cpp ament-index-cpp rosbag2-storage rcutils ];
  checkInputs = [ ament-lint-common ament-cmake-gmock test-msgs rosbag2-test-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-generator-cpp pluginlib shared-queues-vendor poco-vendor rosidl-typesupport-cpp rosidl-typesupport-introspection-cpp ament-index-cpp rosbag2-storage rcutils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROSBag2 client library'';
    license = with lib.licenses; [ asl20 ];
  };
}
