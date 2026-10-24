
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-recovery, easynav-sensors, geometry-msgs, lifecycle-msgs, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-kilted-easynav-simple-recovery";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/kilted/easynav_simple_recovery/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "ccdb5c7a6f30561b3a0bea8163e7f8df1ff6612cbb41066f4dfb1994de2b9613";
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
