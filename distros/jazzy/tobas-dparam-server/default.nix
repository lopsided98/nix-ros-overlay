
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dparam-common, tobas-dparam-msgs, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dparam-server";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dparam_server/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "5cb707357457e2b8547363a2ba057e105f11fda60f117735e43ae089fa70ebd4";
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
