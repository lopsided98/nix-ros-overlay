
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cascade-lifecycle-msgs, lifecycle-msgs, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-eloquent-rclcpp-cascade-lifecycle";
  version = "0.0.3-r2";

  src = fetchurl {
    url = "https://github.com/fmrico/cascade_lifecycle-release/archive/release/eloquent/rclcpp_cascade_lifecycle/0.0.3-2.tar.gz";
    name = "0.0.3-2.tar.gz";
    sha256 = "69260458578e8217c4989623a436ea086ea688735cd863fa89a95e94b33cceeb";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cascade-lifecycle-msgs lifecycle-msgs rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides a mechanism to make trees of lifecycle nodes to propagate state changes'';
    license = with lib.licenses; [ asl20 ];
  };
}
