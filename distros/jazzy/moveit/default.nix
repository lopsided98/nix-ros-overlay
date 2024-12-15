
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-core, moveit-planners, moveit-plugins, moveit-ros, moveit-setup-assistant }:
buildRosPackage {
  pname = "ros-jazzy-moveit";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "0e4cc5a9799b860b354488c2e9bb4c6b86b5c4a9fecbb816dbbc62dfb8cabfbc";
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
