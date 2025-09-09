
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-core, moveit-planners, moveit-plugins, moveit-ros, moveit-setup-assistant }:
buildRosPackage {
  pname = "ros-jazzy-moveit";
  version = "2.12.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit/2.12.3-1.tar.gz";
    name = "2.12.3-1.tar.gz";
    sha256 = "caa60a658a3fc72c2e16340745c46692d83b496e5f613fdbb6d1dd6e4d5a8b10";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ moveit-core moveit-planners moveit-plugins moveit-ros moveit-setup-assistant ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Meta package that contains all essential packages of MoveIt 2";
    license = with lib.licenses; [ bsd3 ];
  };
}
