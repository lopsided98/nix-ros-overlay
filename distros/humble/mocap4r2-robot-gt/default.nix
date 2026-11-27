
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, launch, launch-ros, launch-yaml, mocap4r2-interfaces, nav-msgs, rclcpp, rclcpp-components, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-mocap4r2-robot-gt";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap4r2-release/archive/release/humble/mocap4r2_robot_gt/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "bb7b4fb9e953916b014e2bc6057c636d3cb5d9b0e0820d43c80c20fff4f6c295";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs launch launch-ros launch-yaml mocap4r2-interfaces nav-msgs rclcpp rclcpp-components tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Robot ground truth from MOCAP4ROS2 rigid bodies, as a TF tree parallel to the robot's own";
    license = with lib.licenses; [ asl20 ];
  };
}
