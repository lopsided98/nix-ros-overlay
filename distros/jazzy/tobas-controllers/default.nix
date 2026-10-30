
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-fixed-wing-controller, tobas-nonplanar-multi-controller, tobas-planar-multi-controller, tobas-random-axis-tilt-multi-controller, tobas-y-axis-tilt-multi-controller }:
buildRosPackage {
  pname = "ros-jazzy-tobas-controllers";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_controllers/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "95bb66e1873954334764e5e309c08d5b9e2a8aa1420fc596f74361a055fa2501";
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
