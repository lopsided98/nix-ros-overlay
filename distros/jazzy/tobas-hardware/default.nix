
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-fc1xx, tobas-fc2xx, tobas-hardware-common }:
buildRosPackage {
  pname = "ros-jazzy-tobas-hardware";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_hardware/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "d4b6cce20c23b6fb580cfcb681ffea65d2863d3e4e21b78f2158631535279fc0";
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
