
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-fc2xx-core, tobas-fc2xx-ros, tobas-fc2xx-test }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fc2xx";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fc2xx/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "4d9ce22062253531bcda5e8c584f4e529269fe69ff6373d240bf97fb92f42e5d";
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
