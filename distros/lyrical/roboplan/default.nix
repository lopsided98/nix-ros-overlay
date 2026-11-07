
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, roboplan-cartesian-planning, roboplan-common, roboplan-core, roboplan-example-models, roboplan-examples, roboplan-oink, roboplan-rrt, roboplan-simple-ik, roboplan-toppra }:
buildRosPackage {
  pname = "ros-lyrical-roboplan";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/lyrical/roboplan/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "6eff8888eea08511e03cc08dec94a4905c9cd132579be4ad7bcddf62b9085eda";
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
