
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-fc1xx, tobas-fc2xx, tobas-hardware-common }:
buildRosPackage {
  pname = "ros-jazzy-tobas-hardware";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_hardware/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "6402f9b44376b6d27058500e6230e58413416cf1b359d4442f1cc4474d1aec33";
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
