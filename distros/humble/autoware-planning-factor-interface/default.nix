
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-internal-planning-msgs, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-utils-geometry, rclcpp }:
buildRosPackage {
  pname = "ros-humble-autoware-planning-factor-interface";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_planning_factor_interface/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "aa21091ec4a48a7737bf6f91f92b5a073d13d8c2d83b2d73824e29c49fb7046e";
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
