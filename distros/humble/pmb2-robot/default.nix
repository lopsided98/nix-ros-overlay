
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pmb2-bringup, pmb2-controller-configuration, pmb2-description }:
buildRosPackage {
  pname = "ros-humble-pmb2-robot";
  version = "5.0.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_robot-gbp/archive/release/humble/pmb2_robot/5.0.3-1.tar.gz";
    name = "5.0.3-1.tar.gz";
    sha256 = "a45f86a2202dbf888bc573fcf88cc7796ad2f873cfe7bade33dcbfe5a5f0f71c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ pmb2-bringup pmb2-controller-configuration pmb2-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PMB2 robot description and launch files'';
    license = with lib.licenses; [ asl20 ];
  };
}
