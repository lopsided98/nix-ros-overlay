
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, roboplan-cartesian-planning, roboplan-common, roboplan-core, roboplan-example-models, roboplan-examples, roboplan-oink, roboplan-rrt, roboplan-simple-ik, roboplan-toppra }:
buildRosPackage {
  pname = "ros-kilted-roboplan";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/kilted/roboplan/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "4877dca3be2fd71fd2fd3d474e60aec2d755369d6639191ffc32fa3609d54134";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ roboplan-cartesian-planning roboplan-common roboplan-core roboplan-example-models roboplan-examples roboplan-oink roboplan-rrt roboplan-simple-ik roboplan-toppra ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for the RoboPlan motion-planning library.";
    license = with lib.licenses; [ mit ];
  };
}
