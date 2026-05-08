
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-utils-geometry, geometry-msgs, rclcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-autoware-utils-tf";
  version = "1.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/jazzy/autoware_utils_tf/1.7.2-1.tar.gz";
    name = "1.7.2-1.tar.gz";
    sha256 = "5b2a479921b4b08a4e738f67bbd8f43367748ccd1ad419d5d81d4cf5d9d3381b";
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
