
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-fixed-wing-controller, tobas-nonplanar-multi-controller, tobas-planar-multi-controller, tobas-random-axis-tilt-multi-controller, tobas-y-axis-tilt-multi-controller }:
buildRosPackage {
  pname = "ros-jazzy-tobas-controllers";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_controllers/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "b4cd6994a2acba181754cad0f031cfde48ef2f78792e9324221623d39a56d0f4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-fixed-wing-controller tobas-nonplanar-multi-controller tobas-planar-multi-controller tobas-random-axis-tilt-multi-controller tobas-y-axis-tilt-multi-controller ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for Tobas fixed-wing and multicopter flight controllers.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
