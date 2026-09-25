
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dparam-common, tobas-dparam-msgs, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dparam-server";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dparam_server/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "d6e59ccece5db5bb08cbf8a44a29e6a213a8e916c26fde4ebbfc189776cb8422";
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
