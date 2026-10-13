
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-config-servers";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_config_servers/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "c450476252145a3c6c0d62d35964716b07331020d8a81a7c88a8dd42f68cf07a";
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
