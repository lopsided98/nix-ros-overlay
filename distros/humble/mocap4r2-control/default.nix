
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, diagnostic-updater, geometry-msgs, launch, launch-ros, launch-yaml, lifecycle-msgs, mocap4r2-interfaces, rclcpp, rclcpp-components, rclcpp-lifecycle, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-mocap4r2-control";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap4r2-release/archive/release/humble/mocap4r2_control/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "aed0e80e463f551a2882396e20d3efaad2349e5922fabf613eb965ed676d56a3";
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
