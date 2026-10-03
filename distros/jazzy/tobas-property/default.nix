
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-property-client, tobas-property-common, tobas-property-msgs, tobas-property-server, tobas-property-tree }:
buildRosPackage {
  pname = "ros-jazzy-tobas-property";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_property/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "ab5eda5c358ff31070cd536f2dbb0f31308bc4dbd35d6b6a7f86288b08620fa2";
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
