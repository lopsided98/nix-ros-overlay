
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-common, navigation2, slam-toolbox }:
buildRosPackage {
  pname = "ros-humble-neo-nav2-bringup";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/neo_nav2_bringup-release/archive/release/humble/neo_nav2_bringup/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "0eebdb3795ccd94928cd536f83f6b015ed94fa90ababee4746d526f06342fcb9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ nav2-common navigation2 slam-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS-2 navigation bringup packages for neobotix robots";
    license = with lib.licenses; [ asl20 ];
  };
}
