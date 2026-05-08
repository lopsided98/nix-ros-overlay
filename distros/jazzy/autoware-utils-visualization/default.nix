
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, rclcpp, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-autoware-utils-visualization";
  version = "1.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/jazzy/autoware_utils_visualization/1.7.2-1.tar.gz";
    name = "1.7.2-1.tar.gz";
    sha256 = "e0a26beba22524bbe6058db9a843cb65b482d5923eaa506cb2aaf74c45662cca";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ rclcpp visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils_visualization package";
    license = with lib.licenses; [ asl20 ];
  };
}
