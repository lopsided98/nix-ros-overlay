
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-lint-auto, autoware-cmake, boost, diagnostic-msgs, diagnostic-updater, nebula-core-common, nebula-core-decoders, nebula-core-hw-interfaces, nebula-core-ros, nebula-msgs, nebula-velodyne-common, nebula-velodyne-decoders, nebula-velodyne-hw-interfaces, rclcpp, rclcpp-components, ros-environment, ros-testing, rosbag2-cpp, velodyne-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-nebula-velodyne";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_velodyne/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "fed1d2bb9bffd8c53324dd3ceff3de0216f137b7e24195198ed431c0ecaecf31";
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
