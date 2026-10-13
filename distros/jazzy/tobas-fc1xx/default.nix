
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-fc1xx-core, tobas-fc1xx-ros, tobas-fc1xx-test }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fc1xx";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fc1xx/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "bb195d6ae9725dbadfb21f5572dabd143004d194e0df469a29f3781cc1f0f397";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-fc1xx-core tobas-fc1xx-ros tobas-fc1xx-test ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for Tobas FC1xx flight-controller hardware support.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
