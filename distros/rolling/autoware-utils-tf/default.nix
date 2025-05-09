
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-utils-geometry, geometry-msgs, rclcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-autoware-utils-tf";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/rolling/autoware_utils_tf/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "78dc72d7e5e179946a5d1b044f48c179249d824f103198b36390a988fab1f7eb";
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
