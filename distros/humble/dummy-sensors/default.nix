
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-dummy-sensors";
  version = "0.20.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/humble/dummy_sensors/0.20.8-1.tar.gz";
    name = "0.20.8-1.tar.gz";
    sha256 = "f2ec492638d869ef044ba657fb2ace5eec09c60572042fdb0467b0de681b33e5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "dummy sensor nodes";
    license = with lib.licenses; [ asl20 ];
  };
}
