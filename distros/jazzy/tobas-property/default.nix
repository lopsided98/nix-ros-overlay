
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-property-client, tobas-property-common, tobas-property-msgs, tobas-property-server, tobas-property-tree }:
buildRosPackage {
  pname = "ros-jazzy-tobas-property";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_property/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "27209d3c138eeba7b2da63ed5cf4a0433dff2e1f9660caf2fbd58d155132297c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-property-client tobas-property-common tobas-property-msgs tobas-property-server tobas-property-tree ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for the Tobas distributed property service.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
