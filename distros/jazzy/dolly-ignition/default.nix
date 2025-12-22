
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_ros_ign_bridge, _unresolved_ros_ign_gazebo, ament-cmake, ament-lint-auto, ament-lint-common, dolly-follow, ros2launch, rviz2 }:
buildRosPackage {
  pname = "ros-jazzy-dolly-ignition";
  version = "0.4.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dolly-release/archive/release/jazzy/dolly_ignition/0.4.0-6.tar.gz";
    name = "0.4.0-6.tar.gz";
    sha256 = "8147f14a794bd2ca272e6ef5eacce64966b4d34ae29dc0216e3d339a3e02eaeb";
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
