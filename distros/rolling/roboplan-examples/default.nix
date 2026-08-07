
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, roboplan, roboplan-cartesian-planning, roboplan-example-models, roboplan-oink, roboplan-rrt, roboplan-simple-ik, roboplan-toppra, xacro }:
buildRosPackage {
  pname = "ros-rolling-roboplan-examples";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/rolling/roboplan_examples/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "5c31dd2717f6009a372548c7514952c14b82659aee0915a3ae41a22ff2084335";
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
