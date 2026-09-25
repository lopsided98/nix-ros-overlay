
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dparam-common, tobas-dparam-msgs, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dparam-server";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dparam_server/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "e1af210ea4ce9defb3dd0ee3fffab3540ca8e5fa92f38ab3ee35adf60e23fae5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-dparam-common tobas-dparam-msgs tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 server node for storing and updating dynamic parameters.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
