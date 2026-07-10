
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, roboplan, roboplan-cartesian-planning, roboplan-example-models, roboplan-oink, roboplan-rrt, roboplan-simple-ik, roboplan-toppra, xacro }:
buildRosPackage {
  pname = "ros-kilted-roboplan-examples";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/kilted/roboplan_examples/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "7e72a2b10424d3062d8e3ae98a1a6c50cf86831f5bdf376802502d5b864354b9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ roboplan roboplan-cartesian-planning roboplan-example-models roboplan-oink roboplan-rrt roboplan-simple-ik roboplan-toppra xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Basic examples of RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
