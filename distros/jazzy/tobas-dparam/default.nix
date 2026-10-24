
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dparam-client, tobas-dparam-common, tobas-dparam-msgs, tobas-dparam-server }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dparam";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dparam/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "444e902a710922b2fd643c7e315beae3ce8cf9dfd63d37d1443638b881766e45";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-dparam-client tobas-dparam-common tobas-dparam-msgs tobas-dparam-server ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for Tobas distributed dynamic parameter services.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
