
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, ament-lint-common, rclcpp, ros2bag, rosbag2, rosbag2-converter-default-plugins, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-dashing-rosbag2-tests";
  version = "0.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/rosbag2_tests/0.1.8-1.tar.gz";
    name = "0.1.8-1.tar.gz";
    sha256 = "5b142f6e75a216bf5f21a4b4498e4b28c7082e121d46d6b96fe4eaafe5e13f04";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rclcpp ros2bag rosbag2 rosbag2-converter-default-plugins rosbag2-storage rosbag2-storage-default-plugins rosbag2-test-common std-msgs test-msgs ];
  propagatedBuildInputs = [ ament-index-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Tests package for rosbag2'';
    license = with lib.licenses; [ asl20 ];
  };
}
