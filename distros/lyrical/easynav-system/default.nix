
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-controller, easynav-interfaces, easynav-localizer, easynav-maps-manager, easynav-planner, easynav-sensors, geometry-msgs, lifecycle-msgs, nav-msgs, rclcpp, rclcpp-lifecycle, sensor-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-lyrical-easynav-system";
  version = "0.4.2-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/lyrical/easynav_system/0.4.2-2.tar.gz";
    name = "0.4.2-2.tar.gz";
    sha256 = "12048f31b5b5c159ac058fe14ad7c243f81e3916f5c762829db1db150ba32716";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-common easynav-controller easynav-interfaces easynav-localizer easynav-maps-manager easynav-planner easynav-sensors geometry-msgs lifecycle-msgs nav-msgs rclcpp rclcpp-lifecycle sensor-msgs tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: System package.";
    license = with lib.licenses; [ asl20 ];
  };
}
