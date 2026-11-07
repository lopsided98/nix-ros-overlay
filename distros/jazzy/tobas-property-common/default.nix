
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-property-common";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_property_common/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "591e822dc8420c9c6a4648f75c8acbafe381b5dffb61a1cd77895c9d3c3a9bce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared constants for the Tobas property service.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
