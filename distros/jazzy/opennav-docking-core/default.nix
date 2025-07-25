
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, nav2-msgs, nav2-util, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-jazzy-opennav-docking-core";
  version = "1.3.7-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/opennav_docking_core/1.3.7-1.tar.gz";
    name = "1.3.7-1.tar.gz";
    sha256 = "6c4d8a6fc0a10b3146412d8436ad651f16aeae100054527778cf3b4a253b4a52";
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
