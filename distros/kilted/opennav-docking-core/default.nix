
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, nav2-common, rclcpp-lifecycle, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-opennav-docking-core";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/opennav_docking_core/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "762bc5461ee480f4a8d73ab1791485975a2da5f7aea4670463c086202cf3f496";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rclcpp-lifecycle tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A set of headers for plugins core to the opennav docking framework";
    license = with lib.licenses; [ asl20 ];
  };
}
