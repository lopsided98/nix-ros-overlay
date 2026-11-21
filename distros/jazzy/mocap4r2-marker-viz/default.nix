
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch, launch-ros, launch-yaml, mocap4r2-interfaces, rclcpp, rclcpp-components, rviz2, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-mocap4r2-marker-viz";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap4r2-release/archive/release/jazzy/mocap4r2_marker_viz/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "c24d57c27d773395d1b67b72d64232c48770e483b83730316ae3ab2700c3b17b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch launch-ros launch-yaml mocap4r2-interfaces rclcpp rclcpp-components rviz2 visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RViz visualization of MOCAP4ROS2 markers, rigid bodies and skeletons";
    license = with lib.licenses; [ asl20 ];
  };
}
