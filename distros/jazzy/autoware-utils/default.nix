
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-internal-debug-msgs, autoware-internal-msgs, autoware-internal-planning-msgs, autoware-lint-common, autoware-perception-msgs, autoware-planning-msgs, autoware-utils-debug, autoware-utils-diagnostics, autoware-utils-geometry, autoware-utils-logging, autoware-utils-math, autoware-utils-pcl, autoware-utils-rclcpp, autoware-utils-system, autoware-utils-tf, autoware-utils-uuid, autoware-utils-visualization }:
buildRosPackage {
  pname = "ros-jazzy-autoware-utils";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/jazzy/autoware_utils/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "151928b5af8df7cd32f6450d932e831823e80d208121f5d809e2d519b1aca698";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-internal-debug-msgs autoware-internal-msgs autoware-internal-planning-msgs autoware-perception-msgs autoware-planning-msgs autoware-utils-debug autoware-utils-diagnostics autoware-utils-geometry autoware-utils-logging autoware-utils-math autoware-utils-pcl autoware-utils-rclcpp autoware-utils-system autoware-utils-tf autoware-utils-uuid autoware-utils-visualization ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils package";
    license = with lib.licenses; [ asl20 ];
  };
}
