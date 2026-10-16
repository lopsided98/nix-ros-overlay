
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-property-common";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_property_common/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "eaf8faf4f004d67fa1a16d97433fa07c08a7e97bd3bc6cb69111f3f84d06a62c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared constants for the Tobas property service.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
