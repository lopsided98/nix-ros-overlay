
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, fields2cover, geometry-msgs, nav-msgs, nav2-msgs, nav2-util, opennav-coverage-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-opennav-coverage";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/open-navigation/opennav_coverage-release/archive/release/iron/opennav_coverage/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "502d5b819e19a575706225972991bd567d90f93bc35ad5f7fc62f711c194cb03";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces fields2cover geometry-msgs nav-msgs nav2-msgs nav2-util opennav-coverage-msgs rclcpp rclcpp-action rclcpp-lifecycle tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A Task Server for complete coverage planning'';
    license = with lib.licenses; [ asl20 ];
  };
}
