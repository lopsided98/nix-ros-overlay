
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, roboplan, roboplan-example-models, roboplan-oink, roboplan-rrt, roboplan-simple-ik, roboplan-toppra, xacro }:
buildRosPackage {
  pname = "ros-lyrical-roboplan-examples";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/lyrical/roboplan_examples/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "b3d9d8b82c1dbcf6d996ebaa5e8f655d15cc3e1c7c760f9135636dfe029b4d6a";
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
