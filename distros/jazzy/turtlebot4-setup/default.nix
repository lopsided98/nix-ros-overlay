
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, chrony, curl, networkmanager, rmw-cyclonedds-cpp, rmw-fastrtps-cpp, robot-upstart, simple-term-menu-vendor }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot4-setup";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_setup-release/archive/release/jazzy/turtlebot4_setup/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "cba8afe7c778186b9c0947af007c750fe91e847599c596dd11f0d0b0c8ed7d0a";
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
