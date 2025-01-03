
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-core, moveit-planners, moveit-plugins, moveit-ros, moveit-setup-assistant }:
buildRosPackage {
  pname = "ros-humble-moveit";
  version = "2.5.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/humble/moveit/2.5.7-1.tar.gz";
    name = "2.5.7-1.tar.gz";
    sha256 = "33541b21f81a6dac1d9ed7019eba9837c9a08e6f5fcfe20effb93c29357c7db1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-core moveit-planners moveit-plugins moveit-ros moveit-setup-assistant ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Meta package that contains all essential packages of MoveIt 2";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
