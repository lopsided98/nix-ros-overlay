
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-internal-planning-msgs, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-autoware-planning-factor-interface";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_planning_factor_interface/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "8529cf095281cb79eef56f4b7c4b48d7f399ff0c1ae38b91fa71546d64ade944";
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
