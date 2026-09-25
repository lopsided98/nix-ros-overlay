
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-property-client, tobas-property-common, tobas-property-msgs, tobas-property-server, tobas-property-tree }:
buildRosPackage {
  pname = "ros-jazzy-tobas-property";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_property/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "fb77cf9ea205030a44ec8f8d08791bd61604d1d5d049c9297ed93dac8863ad69";
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
