
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-humble-ros2lifecycle-test-fixtures";
  version = "0.18.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/humble/ros2lifecycle_test_fixtures/0.18.3-2.tar.gz";
    name = "0.18.3-2.tar.gz";
    sha256 = "4ee49d7531ebc5a2f561856e11f86d457bd37294602a28894641dc892f66ce08";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing fixture nodes for ros2lifecycle tests'';
    license = with lib.licenses; [ asl20 ];
  };
}
