
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-property-common";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_property_common/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "cc44ee4ce9966436d40aebc9c0b44f633ca5ee2a9a8d1eb2ddd406cf88fb66e5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared constants for the Tobas property service.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
