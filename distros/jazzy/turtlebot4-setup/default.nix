
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, chrony, curl, networkmanager, rmw-cyclonedds-cpp, rmw-fastrtps-cpp, robot-upstart, simple-term-menu-vendor, socat }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot4-setup";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_setup-release/archive/release/jazzy/turtlebot4_setup/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "76a21937b5f8a4b82f11b8b54b12bc9ee6e1fea965072f44999ea3ce2d7ff70f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ chrony curl networkmanager rmw-cyclonedds-cpp rmw-fastrtps-cpp robot-upstart simple-term-menu-vendor socat ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Turtlebot4 setup scripts";
    license = with lib.licenses; [ asl20 ];
  };
}
