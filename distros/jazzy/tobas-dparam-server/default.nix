
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dparam-common, tobas-dparam-msgs, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dparam-server";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dparam_server/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "cf41c0f3ec2d9d5dd9fcd89dc3e8aae7620bbac5b27d5126ddcd485b0737dc6a";
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
