
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, chrony, curl, networkmanager, rmw-cyclonedds-cpp, rmw-fastrtps-cpp, robot-upstart, simple-term-menu-vendor }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-setup";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_setup-release/archive/release/humble/turtlebot4_setup/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "3766d48214005c6b1afc6be78b424a46fbcca4e0182b8a498e8d960da357300b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ chrony curl networkmanager rmw-cyclonedds-cpp rmw-fastrtps-cpp robot-upstart simple-term-menu-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Turtlebot4 setup scripts";
    license = with lib.licenses; [ asl20 ];
  };
}
