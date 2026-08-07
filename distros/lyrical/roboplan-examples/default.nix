
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, roboplan, roboplan-cartesian-planning, roboplan-example-models, roboplan-oink, roboplan-rrt, roboplan-simple-ik, roboplan-toppra, xacro }:
buildRosPackage {
  pname = "ros-lyrical-roboplan-examples";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/lyrical/roboplan_examples/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "6110a04701db79a07726eccf01551ca0d8b1ebf82f506ff2837f91fa32959567";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ roboplan roboplan-cartesian-planning roboplan-example-models roboplan-oink roboplan-rrt roboplan-simple-ik roboplan-toppra xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Basic examples of RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
