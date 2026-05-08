
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-control-msgs, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-test-utils, autoware-utils-rclcpp, autoware-vehicle-info-utils, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-autoware-simple-pure-pursuit";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_simple_pure_pursuit/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "11f0c9dfc09a1e8f8cdce5995408e8eb8ee37ac419c11050a49359687b5cccdc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-control-msgs autoware-motion-utils autoware-planning-msgs autoware-test-utils autoware-utils-rclcpp autoware-vehicle-info-utils rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_simple_pure_pursuit package";
    license = with lib.licenses; [ asl20 ];
  };
}
