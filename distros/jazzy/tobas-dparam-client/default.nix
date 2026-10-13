
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dparam-common, tobas-dparam-msgs, tobas-path-tools, tobas-ros2-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dparam-client";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dparam_client/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "f4aa498d4a165822fcbf47ae80502bf4db991ac82b6c3b25eeca8d7eaaeb3b0c";
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
