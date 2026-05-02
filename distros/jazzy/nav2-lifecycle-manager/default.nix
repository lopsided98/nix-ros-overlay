
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, bondcpp, diagnostic-updater, geometry-msgs, lifecycle-msgs, nav2-common, nav2-msgs, nav2-util, rclcpp-action, rclcpp-lifecycle, std-msgs, std-srvs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-jazzy-nav2-lifecycle-manager";
  version = "1.3.12-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/nav2_lifecycle_manager/1.3.12-1.tar.gz";
    name = "1.3.12-1.tar.gz";
    sha256 = "e0e14dd88199f8dee9ba72f3d30cf6267afebad28d517b4c990447c383986bb5";
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
