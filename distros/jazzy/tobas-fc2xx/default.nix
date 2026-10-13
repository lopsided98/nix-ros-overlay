
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-fc2xx-core, tobas-fc2xx-ros, tobas-fc2xx-test }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fc2xx";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fc2xx/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "85dcaaf66581e1cf39eea2dc398a7a46b96a987d2d486e64de6ddabce4f0833b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-fc2xx-core tobas-fc2xx-ros tobas-fc2xx-test ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for Tobas FC2xx flight-controller hardware support.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
