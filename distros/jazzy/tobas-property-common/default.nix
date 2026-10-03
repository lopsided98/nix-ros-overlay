
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-property-common";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_property_common/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "d7ba6a5ff82340b6fc5c0a67081d2364a5add08286154175ac56682e421f8639";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared constants for the Tobas property service.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
