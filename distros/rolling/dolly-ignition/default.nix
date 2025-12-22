
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_ros_ign_bridge, _unresolved_ros_ign_gazebo, ament-cmake, ament-lint-auto, ament-lint-common, dolly-follow, ros2launch, rviz2 }:
buildRosPackage {
  pname = "ros-rolling-dolly-ignition";
  version = "0.4.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dolly-release/archive/release/rolling/dolly_ignition/0.4.0-5.tar.gz";
    name = "0.4.0-5.tar.gz";
    sha256 = "f70fc129819cd5778a92678111c4943d318ec359db910d323fe3e66d22069889";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_ros_ign_bridge _unresolved_ros_ign_gazebo dolly-follow ros2launch rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Launch Ignition simulation with Dolly robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
