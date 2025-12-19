
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-controller, easynav-interfaces, easynav-localizer, easynav-maps-manager, easynav-planner, easynav-sensors, geometry-msgs, lifecycle-msgs, nav-msgs, rclcpp, rclcpp-lifecycle, sensor-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-kilted-easynav-system";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/kilted/easynav_system/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "fb01e27a70bc384e4603fa733f2dd8d49575abe2ad39c650ae7678c2b3f0690b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-common easynav-controller easynav-interfaces easynav-localizer easynav-maps-manager easynav-planner easynav-sensors geometry-msgs lifecycle-msgs nav-msgs rclcpp rclcpp-lifecycle sensor-msgs tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: System package.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
