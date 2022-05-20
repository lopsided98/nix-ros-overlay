
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, bondcpp, geometry-msgs, lifecycle-msgs, nav2-common, nav2-msgs, nav2-util, rclcpp-action, rclcpp-lifecycle, std-msgs, std-srvs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-galactic-nav2-lifecycle-manager";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/nav2_lifecycle_manager/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "3295f2d0fbf9ce378849cd267a53d9be4e00008a41c9a8aba9ed9251b571ee85";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ bondcpp geometry-msgs lifecycle-msgs nav2-msgs nav2-util rclcpp-action rclcpp-lifecycle std-msgs std-srvs tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A controller/manager for the lifecycle nodes of the Navigation 2 system'';
    license = with lib.licenses; [ asl20 ];
  };
}
