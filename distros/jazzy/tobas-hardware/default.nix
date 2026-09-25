
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-fc1xx, tobas-fc2xx, tobas-hardware-common }:
buildRosPackage {
  pname = "ros-jazzy-tobas-hardware";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_hardware/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "456a4e84c2d038df2c870315af6bdceb16c266aa963dd0acc5a6451601271b89";
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
