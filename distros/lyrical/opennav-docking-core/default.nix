
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, backward-ros, geometry-msgs, nav2-common, nav2-ros-common, rclcpp-lifecycle, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-opennav-docking-core";
  version = "1.5.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/opennav_docking_core/1.5.2-2.tar.gz";
    name = "1.5.2-2.tar.gz";
    sha256 = "9f983921cbecb4f8846445e267223206d9e1db35fa8ffddb7893f93e4ad3d848";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ backward-ros geometry-msgs nav2-ros-common rclcpp-lifecycle tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A set of headers for plugins core to the opennav docking framework";
    license = with lib.licenses; [ asl20 ];
  };
}
