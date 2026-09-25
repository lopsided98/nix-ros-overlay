
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-fc1xx-core, tobas-fc1xx-ros, tobas-fc1xx-test }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fc1xx";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fc1xx/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "3af44c838ad848528e87382bf756ae8be95f43e85ac826f9bf39758a1b8fe768";
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
