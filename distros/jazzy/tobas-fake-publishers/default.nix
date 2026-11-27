
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fake-publishers";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fake_publishers/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "6d0354f7d78141b435c51f6216329dbbed89b3eb573598a2ef1e8b20cee1e569";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-constants tobas-msgs-adapter tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Test nodes that publish simulated battery, GNSS, and RC input data.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
