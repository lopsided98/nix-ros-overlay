
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, nav-msgs, rclcpp, realsense-msgs, realsense-ros, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-realsense-node";
  version = "2.0.8-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_intel_realsense-release/archive/release/foxy/realsense_node/2.0.8-2.tar.gz";
    name = "2.0.8-2.tar.gz";
    sha256 = "479e3643d5d452c51ec032d3afc01dba88ba3f15e51008bf6b297a5a5b9d521a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav-msgs rclcpp realsense-msgs realsense-ros sensor-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 realsense node'';
    license = with lib.licenses; [ asl20 ];
  };
}
