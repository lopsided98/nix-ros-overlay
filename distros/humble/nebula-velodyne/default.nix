
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-lint-auto, autoware-cmake, boost, diagnostic-msgs, diagnostic-updater, nebula-core-common, nebula-core-decoders, nebula-core-hw-interfaces, nebula-core-ros, nebula-msgs, nebula-velodyne-common, nebula-velodyne-decoders, nebula-velodyne-hw-interfaces, rclcpp, rclcpp-components, ros-environment, ros-testing, rosbag2-cpp, velodyne-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-nebula-velodyne";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_velodyne/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "ddeb407579578e2308bad2900318b4af1d3e8783d53d640e265fe68e09d60bec";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ros-testing ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto rosbag2-cpp ];
  propagatedBuildInputs = [ boost diagnostic-msgs diagnostic-updater nebula-core-common nebula-core-decoders nebula-core-hw-interfaces nebula-core-ros nebula-msgs nebula-velodyne-common nebula-velodyne-decoders nebula-velodyne-hw-interfaces rclcpp rclcpp-components velodyne-msgs yaml-cpp ];
  nativeBuildInputs = [ autoware-cmake ros-environment ros-testing ];

  meta = {
    description = "Nebula Velodyne ROS Wrapper";
    license = with lib.licenses; [ asl20 ];
  };
}
