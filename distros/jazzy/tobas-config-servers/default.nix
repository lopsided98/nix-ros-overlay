
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-config-servers";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_config_servers/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "11cfce8224e79754c66c3ff3c211fa7bc171d5c6850bcd2b404c0c7e99d9d5c7";
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
