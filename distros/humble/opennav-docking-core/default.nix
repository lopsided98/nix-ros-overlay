
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, nav2-util, opennav-docking-msgs, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-humble-opennav-docking-core";
  version = "0.0.2-r4";

  src = fetchurl {
    url = "https://github.com/open-navigation/opennav_docking-release/archive/release/humble/opennav_docking_core/0.0.2-4.tar.gz";
    name = "0.0.2-4.tar.gz";
    sha256 = "2f318c50504420f3b2e6232cd81f0feced35d9b40d1c9002d6c755cb5878789d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav2-util opennav-docking-msgs rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A set of headers for plugins core to the opennav docking framework";
    license = with lib.licenses; [ asl20 ];
  };
}
