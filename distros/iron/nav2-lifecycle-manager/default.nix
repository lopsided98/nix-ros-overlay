
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, bondcpp, diagnostic-updater, geometry-msgs, lifecycle-msgs, nav2-common, nav2-msgs, nav2-util, rclcpp-action, rclcpp-lifecycle, std-msgs, std-srvs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-iron-nav2-lifecycle-manager";
  version = "1.2.9-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/iron/nav2_lifecycle_manager/1.2.9-1.tar.gz";
    name = "1.2.9-1.tar.gz";
    sha256 = "8c8f946786e248d9cb7d50efee8489a719f88132b15d3622a76e75f258bc83cd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ bondcpp diagnostic-updater geometry-msgs lifecycle-msgs nav2-msgs nav2-util rclcpp-action rclcpp-lifecycle std-msgs std-srvs tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A controller/manager for the lifecycle nodes of the Navigation 2 system";
    license = with lib.licenses; [ asl20 ];
  };
}
