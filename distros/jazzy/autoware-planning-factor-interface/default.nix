
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-internal-planning-msgs, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-utils-geometry, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-autoware-planning-factor-interface";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_planning_factor_interface/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "5e4b8b839770fe9a0b8485ea2dc654dcd3319b49e91c238cf48340629d3f943c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common autoware-utils-geometry ];
  propagatedBuildInputs = [ autoware-internal-planning-msgs autoware-motion-utils autoware-planning-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_planning_factor_interface package";
    license = with lib.licenses; [ asl20 ];
  };
}
