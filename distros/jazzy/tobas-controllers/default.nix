
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-fixed-wing-controller, tobas-nonplanar-multi-controller, tobas-planar-multi-controller, tobas-random-axis-tilt-multi-controller, tobas-y-axis-tilt-multi-controller }:
buildRosPackage {
  pname = "ros-jazzy-tobas-controllers";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_controllers/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "cc64a5e7bee270d9b612dd335df3a37f7f0505353ce96a8402cc39155bc7020c";
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
