
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dparam-common, tobas-dparam-msgs, tobas-path-tools, tobas-ros2-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dparam-client";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dparam_client/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "82725b8c8fcd4f8d9600759e7ee3988fb6de72af8c09b444fc5c758cd79a4c23";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-dparam-common tobas-dparam-msgs tobas-path-tools tobas-ros2-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Client library for reading and updating distributed Tobas dynamic parameters.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
