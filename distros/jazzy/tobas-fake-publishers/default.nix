
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fake-publishers";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fake_publishers/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "3db4c81c1f33de4cd1e06e1aeb8518a0e3a752fe5d0c7079c3dfa45256377eff";
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
