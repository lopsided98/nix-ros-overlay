
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-property-common";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_property_common/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "6abd0ce440259b6fb00ba93045dbba767c194f29a4ed9ade7a8cd2710a3e0287";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared constants for the Tobas property service.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
