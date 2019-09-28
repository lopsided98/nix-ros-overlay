
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, pluginlib, ament-lint-common, shared-queues-vendor, ament-cmake-gmock, test-msgs, rosbag2-test-common, ament-cmake, poco-vendor, rosidl-typesupport-cpp, rosidl-typesupport-introspection-cpp, ament-index-cpp, ament-lint-auto, rosbag2-storage, rcutils }:
buildRosPackage {
  pname = "ros-dashing-rosbag2";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/rosbag2/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "2c8dce7f00c1249db23a5f5245917f638c6696291faf8695e2705d8fd798524d";
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
