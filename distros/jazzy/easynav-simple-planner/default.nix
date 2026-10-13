
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-simple-common, geometry-msgs, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-jazzy-easynav-simple-planner";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_simple_planner/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "00869d416889d8179d1de56809f70688e26bfeafb855c97152bebf36bc150854";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rclcpp-lifecycle ];
  propagatedBuildInputs = [ easynav-common easynav-core easynav-simple-common geometry-msgs nav-msgs pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Simple planner package.";
    license = with lib.licenses; [ asl20 ];
  };
}
