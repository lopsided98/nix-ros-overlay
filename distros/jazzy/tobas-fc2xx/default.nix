
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-fc2xx-core, tobas-fc2xx-ros, tobas-fc2xx-test }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fc2xx";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fc2xx/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "20bed3c37464d954d845044d82be85e42f302882b78e2a4c4396e38728a498d4";
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
