
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, bond, bondcpp, boost, geometry-msgs, launch, launch-testing-ament-cmake, launch-testing-ros, lifecycle-msgs, nav-msgs, nav2-common, nav2-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, std-srvs, test-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-galactic-nav2-util";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/nav2_util/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "a6c599717e569696086a85db0d59d4201a2a680d3005cd422590f759eaa0fd07";
  };

  buildType = "ament_cmake";
  checkInputs = [ action-msgs ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing-ament-cmake launch-testing-ros std-srvs ];
  propagatedBuildInputs = [ action-msgs bond bondcpp boost geometry-msgs launch launch-testing-ament-cmake lifecycle-msgs nav-msgs nav2-common nav2-msgs rclcpp rclcpp-action rclcpp-lifecycle test-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
