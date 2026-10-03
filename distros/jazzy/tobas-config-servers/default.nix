
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-config-servers";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_config_servers/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "b1f4c4d9f887a0f07d6166f447e83f1284ae1f89ff33e110a00343113c78330e";
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
