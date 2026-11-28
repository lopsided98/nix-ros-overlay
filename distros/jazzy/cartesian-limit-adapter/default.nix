
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, moveit-core, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-cartesian-limit-adapter";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/LaurusAg/cartesian_limit_adapter-release/archive/release/jazzy/cartesian_limit_adapter/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "002d644ad3fb4b5a8521b15338e943615c71aefe3d79ead79245dc275b4962d3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ eigen moveit-core pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "MoveIt 2 planning response adapter that retimes a planned path (TOPP-RA) so one
    link stays under a linear speed and a linear acceleration, on top of the joint
    velocity and acceleration limits.";
    license = with lib.licenses; [ bsd3 ];
  };
}
