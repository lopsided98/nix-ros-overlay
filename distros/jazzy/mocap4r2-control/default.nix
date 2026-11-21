
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, diagnostic-updater, geometry-msgs, launch, launch-ros, launch-yaml, lifecycle-msgs, mocap4r2-interfaces, rclcpp, rclcpp-components, rclcpp-lifecycle, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-mocap4r2-control";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap4r2-release/archive/release/jazzy/mocap4r2_control/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "fe3357c5df0f7ae78f499d6aacc550af0467f14c2bdd3e06485fa8e6c254276c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common diagnostic-msgs ];
  propagatedBuildInputs = [ diagnostic-updater geometry-msgs launch launch-ros launch-yaml lifecycle-msgs mocap4r2-interfaces rclcpp rclcpp-components rclcpp-lifecycle tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Base node of MOCAP4ROS2 systems: lifecycle, start/stop control, system announcement and diagnostics";
    license = with lib.licenses; [ asl20 ];
  };
}
