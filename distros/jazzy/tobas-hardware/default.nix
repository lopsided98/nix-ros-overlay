
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-fc1xx, tobas-fc2xx, tobas-hardware-common }:
buildRosPackage {
  pname = "ros-jazzy-tobas-hardware";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_hardware/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "44556c487add58900a96323743dd22154d013b962722b5c96c7dee73320d4636";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-fc1xx tobas-fc2xx tobas-hardware-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for Tobas flight-controller hardware drivers.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
