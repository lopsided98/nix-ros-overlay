
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cascade-lifecycle-msgs, lifecycle-msgs, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-humble-rclcpp-cascade-lifecycle";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cascade_lifecycle-release/archive/release/humble/rclcpp_cascade_lifecycle/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "72a50324108b2760b937aaadacc8d244d67ab53820fdc345e8fab21212e837b8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cascade-lifecycle-msgs lifecycle-msgs rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides a mechanism to make trees of lifecycle nodes to propagate state changes";
    license = with lib.licenses; [ asl20 ];
  };
}
