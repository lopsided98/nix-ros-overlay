
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, mocap4r2-msgs, mocap4r2-robot-gt-msgs, rclcpp, rclcpp-components, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-mocap4r2-robot-gt";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap4r2-release/archive/release/humble/mocap4r2_robot_gt/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "2dec5adbe90ab0c14965d3e8b1216a73000d97e0bffdcfe5a7990edf43b2c765";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs mocap4r2-msgs mocap4r2-robot-gt-msgs rclcpp rclcpp-components tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package that provides Ground Truth tools for robots'';
    license = with lib.licenses; [ asl20 ];
  };
}
