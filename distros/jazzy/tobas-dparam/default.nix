
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dparam-client, tobas-dparam-common, tobas-dparam-msgs, tobas-dparam-server }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dparam";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dparam/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "0f7aa39650334a3ab036b541259d1df806bf600fe28b07427605a7f25fb2eac0";
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
