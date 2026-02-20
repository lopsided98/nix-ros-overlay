
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-internal-planning-msgs, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-autoware-planning-factor-interface";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_planning_factor_interface/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "798da915167d9276a45848390c63b70afa55a9aff65f771140d70bdf77a37795";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-internal-planning-msgs autoware-motion-utils autoware-planning-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_planning_factor_interface package";
    license = with lib.licenses; [ asl20 ];
  };
}
