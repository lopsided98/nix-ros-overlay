
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-property-client, tobas-property-common, tobas-property-msgs, tobas-property-server, tobas-property-tree }:
buildRosPackage {
  pname = "ros-jazzy-tobas-property";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_property/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "4fd45e9c22a276cf7c6e3e6aa09709d2d6a66f5f974c2a4eb7d88644d94cc517";
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
