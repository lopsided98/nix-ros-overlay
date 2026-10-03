
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-fc1xx, tobas-fc2xx, tobas-hardware-common }:
buildRosPackage {
  pname = "ros-jazzy-tobas-hardware";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_hardware/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "6bbccbcf453e6b6197ed557a98877b194cb09e82cd3aeff57acdea67c77a226e";
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
