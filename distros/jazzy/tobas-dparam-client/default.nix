
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dparam-common, tobas-dparam-msgs, tobas-path-tools, tobas-ros2-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dparam-client";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dparam_client/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "64117848abd2417d3755484c0aa9e953c8cbd191e76b1f0d9162398cb48e5945";
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
