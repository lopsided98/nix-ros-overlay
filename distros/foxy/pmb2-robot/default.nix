
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pmb2-bringup, pmb2-controller-configuration, pmb2-description }:
buildRosPackage {
  pname = "ros-foxy-pmb2-robot";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_robot-gbp/archive/release/foxy/pmb2_robot/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "93fbb7b4b7f0fc2182c93e8f04fbccfec92c660bd8d740c0806f756f7cec23bb";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ pmb2-bringup pmb2-controller-configuration pmb2-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PMB2 robot description and launch files'';
    license = with lib.licenses; [ asl20 ];
  };
}
