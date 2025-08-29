
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-control-msgs, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-test-utils, autoware-utils-rclcpp, autoware-vehicle-info-utils, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-simple-pure-pursuit";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_simple_pure_pursuit/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "384dacce53925655bb1cda0d0cdbf332192864b89fbf75b5e59153d510378ee0";
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
