
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-config-servers";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_config_servers/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "da20883a18ef8566a2dcb4d212ee5fa2110986406f56702fd2996b5084d013d3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-constants tobas-msgs-adapter tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides parameters shared through services as dynamic parameters.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
