
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-index-cpp, autoware-cmake, autoware-lanelet2-extension, autoware-perception-msgs, autoware-planning-msgs, autoware-utils-geometry, autoware-utils-visualization, autoware-vehicle-info-utils, boost, range-v3, rclcpp }:
buildRosPackage {
  pname = "ros-humble-autoware-marker-utils";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_marker_utils/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "08e40a9ba5326eb7961752891f1c6c85651c48f13db8be9cf8ad9ad678cf8abd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-index-cpp ];
  propagatedBuildInputs = [ autoware-lanelet2-extension autoware-perception-msgs autoware-planning-msgs autoware-utils-geometry autoware-utils-visualization autoware-vehicle-info-utils boost range-v3 rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_marker_utils package";
    license = with lib.licenses; [ asl20 ];
  };
}
