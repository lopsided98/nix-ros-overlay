
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, nav2-msgs, nav2-util, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-jazzy-opennav-docking-core";
  version = "1.3.12-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/opennav_docking_core/1.3.12-1.tar.gz";
    name = "1.3.12-1.tar.gz";
    sha256 = "9ea1fd70f6c937c83308762fae66147bb63e42f042f2f26a4304cda05de71ac2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav2-msgs nav2-util rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A set of headers for plugins core to the opennav docking framework";
    license = with lib.licenses; [ asl20 ];
  };
}
