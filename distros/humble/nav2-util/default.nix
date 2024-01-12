
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, bond, bondcpp, boost, geometry-msgs, launch, launch-testing-ament-cmake, launch-testing-ros, lifecycle-msgs, nav-msgs, nav2-common, nav2-msgs, rcl-interfaces, rclcpp, rclcpp-action, rclcpp-lifecycle, std-srvs, test-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-nav2-util";
  version = "1.1.12-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav2_util/1.1.12-1.tar.gz";
    name = "1.1.12-1.tar.gz";
    sha256 = "5649d7486a386621ed7ab629a30cf91d1cd7af421a62c009f067aa80ab8363eb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ action-msgs ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing-ament-cmake launch-testing-ros std-srvs test-msgs ];
  propagatedBuildInputs = [ action-msgs bond bondcpp boost geometry-msgs launch launch-testing-ament-cmake lifecycle-msgs nav-msgs nav2-common nav2-msgs rcl-interfaces rclcpp rclcpp-action rclcpp-lifecycle tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
