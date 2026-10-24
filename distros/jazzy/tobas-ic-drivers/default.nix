
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-linux, tobas-time-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ic-drivers";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ic_drivers/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "f0104a2ae3c2dd6d734ef1fc3b8d95e99304c6fc1cb887f330e8c490bfdbc660";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-linux tobas-time-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ drivers for sensors, converters, GNSS receivers, and other integrated circuits used by Tobas.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
