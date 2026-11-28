
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-config-servers";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_config_servers/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "54c458bb18c4d69e2d189c966d31cd8d41bd250ffc4af798a78e4456a50ac834";
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
