
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, bondcpp, geometry-msgs, lifecycle-msgs, nav2-common, nav2-msgs, nav2-util, rclcpp-action, rclcpp-lifecycle, std-msgs, std-srvs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-galactic-nav2-lifecycle-manager";
  version = "1.0.12-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/nav2_lifecycle_manager/1.0.12-1.tar.gz";
    name = "1.0.12-1.tar.gz";
    sha256 = "7c7026dfd4b750518f0baa676c471f913cce3b5d549080637c131ae727673440";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ bondcpp geometry-msgs lifecycle-msgs nav2-msgs nav2-util rclcpp-action rclcpp-lifecycle std-msgs std-srvs tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A controller/manager for the lifecycle nodes of the Navigation 2 system'';
    license = with lib.licenses; [ asl20 ];
  };
}
