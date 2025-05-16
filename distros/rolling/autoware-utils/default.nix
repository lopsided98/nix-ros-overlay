
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-internal-debug-msgs, autoware-internal-msgs, autoware-internal-planning-msgs, autoware-lint-common, autoware-perception-msgs, autoware-planning-msgs, autoware-utils-debug, autoware-utils-diagnostics, autoware-utils-geometry, autoware-utils-logging, autoware-utils-math, autoware-utils-pcl, autoware-utils-rclcpp, autoware-utils-system, autoware-utils-tf, autoware-utils-uuid, autoware-utils-visualization }:
buildRosPackage {
  pname = "ros-rolling-autoware-utils";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/rolling/autoware_utils/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "74797d999363b092491d0b06b2849651e5a3b43f1143a4cece026294b7e70697";
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
