
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-utils-geometry, geometry-msgs, rclcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-autoware-utils-tf";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/jazzy/autoware_utils_tf/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "0c6b28b7b97d438b0849faa00b9414a3b407fc82b6bef16af0b4807a729e92e3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-utils-geometry geometry-msgs rclcpp tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils_tf package";
    license = with lib.licenses; [ asl20 ];
  };
}
