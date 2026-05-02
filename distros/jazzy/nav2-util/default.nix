
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, bond, bondcpp, builtin-interfaces, geometry-msgs, lifecycle-msgs, nav-msgs, nav2-common, nav2-msgs, rcl-interfaces, rclcpp, rclcpp-action, rclcpp-lifecycle, std-msgs, std-srvs, test-msgs, tf2, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-nav2-util";
  version = "1.3.12-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/nav2_util/1.3.12-1.tar.gz";
    name = "1.3.12-1.tar.gz";
    sha256 = "db25f3c5f12826ba35023533498d03fb661debbacdc1341335d392ad5ed30bb3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common std-srvs test-msgs ];
  propagatedBuildInputs = [ bond bondcpp builtin-interfaces geometry-msgs lifecycle-msgs nav-msgs nav2-common nav2-msgs rcl-interfaces rclcpp rclcpp-action rclcpp-lifecycle std-msgs tf2 tf2-geometry-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2 utilities";
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
