
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-cpp, autoware-cmake, autoware-internal-planning-msgs, autoware-lanelet2-utils, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-pyplot, autoware-test-utils, autoware-utils-geometry, fmt, geometry-msgs, lanelet2-core, pybind11-vendor, python-cmake-module, python3, python3Packages, range-v3, rclcpp, tf2, tf2-geometry-msgs, tl-expected, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-autoware-trajectory";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_trajectory/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "f6de8de9a2701bc7f42bcaa4e27bf7f29801234ec2b6d7e396aebab32d1a01ee";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake python-cmake-module ];
  checkInputs = [ ament-index-cpp autoware-lint-common autoware-motion-utils autoware-pyplot autoware-test-utils autoware-utils-geometry pybind11-vendor python3 python3Packages.matplotlib range-v3 ];
  propagatedBuildInputs = [ autoware-internal-planning-msgs autoware-lanelet2-utils autoware-planning-msgs autoware-utils-geometry fmt geometry-msgs lanelet2-core rclcpp tf2 tf2-geometry-msgs tl-expected yaml-cpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake python-cmake-module ];

  meta = {
    description = "The autoware_trajectory package";
    license = with lib.licenses; [ asl20 ];
  };
}
