
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, roboplan-cartesian-planning, roboplan-common, roboplan-core, roboplan-example-models, roboplan-examples, roboplan-oink, roboplan-rrt, roboplan-simple-ik, roboplan-toppra }:
buildRosPackage {
  pname = "ros-jazzy-roboplan";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/jazzy/roboplan/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "159b136ef216769d3f5984702ec0cad8e251abdec22cf248a13a7b1c5b24e48d";
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
