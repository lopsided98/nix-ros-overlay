
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-recovery, easynav-sensors, geometry-msgs, lifecycle-msgs, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-jazzy-easynav-simple-recovery";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_simple_recovery/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "782bf228782a2ac1aa8d394188eec962ff4518c1ea496ddd6c1105b8d70ae82b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common easynav-recovery lifecycle-msgs rclcpp-lifecycle ];
  propagatedBuildInputs = [ easynav-common easynav-core easynav-sensors geometry-msgs nav-msgs pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: a simple recovery system, as an example of how to write one.";
    license = with lib.licenses; [ asl20 ];
  };
}
