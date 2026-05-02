
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, logging-demo, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-autoware-utils-logging";
  version = "1.4.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/rolling/autoware_utils_logging/1.4.2-3.tar.gz";
    name = "1.4.2-3.tar.gz";
    sha256 = "ef5b2b7271d8c0ca7073a718494a156243e988a999abc789ee1b4f679bfb8fc1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ logging-demo rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils_logging package";
    license = with lib.licenses; [ asl20 ];
  };
}
