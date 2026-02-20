
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-control-msgs, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-test-utils, autoware-utils-rclcpp, autoware-vehicle-info-utils, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-simple-pure-pursuit";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_simple_pure_pursuit/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "d926e1f1f7f3d9d6b8d3a4a1579cba6829d0fb0264dee79cccc08c70cc61af2a";
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
