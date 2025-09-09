
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-index-cpp, autoware-cmake, autoware-lanelet2-extension, autoware-pyplot, range-v3, rclcpp }:
buildRosPackage {
  pname = "ros-humble-autoware-lanelet2-utils";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_lanelet2_utils/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "0d3737bbc920e919906fad238609d07305ca17c9ef5fd7fe2e510521a603b341";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-index-cpp autoware-pyplot ];
  propagatedBuildInputs = [ autoware-lanelet2-extension range-v3 rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_lanelet2_utils package";
    license = with lib.licenses; [ asl20 ];
  };
}
