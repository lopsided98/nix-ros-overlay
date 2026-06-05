
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, roboplan, roboplan-example-models, roboplan-oink, roboplan-rrt, roboplan-simple-ik, roboplan-toppra, xacro }:
buildRosPackage {
  pname = "ros-rolling-roboplan-examples";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/rolling/roboplan_examples/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "e20f723ae0c00cbbf89553288a54cc0393b19f92dd72ed65ec8d432f0e86d41f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ roboplan roboplan-example-models roboplan-oink roboplan-rrt roboplan-simple-ik roboplan-toppra xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Basic examples of RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
