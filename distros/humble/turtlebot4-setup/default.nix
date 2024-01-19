
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rmw-cyclonedds-cpp, rmw-fastrtps-cpp, robot-upstart, simple-term-menu-vendor }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-setup";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_setup-release/archive/release/humble/turtlebot4_setup/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "aafc593b14187de58e059c6c1b38f80efe12a7f74a683990d64dcfc46fa2d27b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rmw-cyclonedds-cpp rmw-fastrtps-cpp robot-upstart simple-term-menu-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Turtlebot4 setup scripts'';
    license = with lib.licenses; [ asl20 ];
  };
}
