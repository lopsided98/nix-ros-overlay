
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pmb2-bringup, pmb2-controller-configuration, pmb2-description }:
buildRosPackage {
  pname = "ros-humble-pmb2-robot";
  version = "5.7.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_robot-gbp/archive/release/humble/pmb2_robot/5.7.0-1.tar.gz";
    name = "5.7.0-1.tar.gz";
    sha256 = "fd85400824adabbc3a99d3b9db00b94640f614941774220a39a9539be7075ef4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ pmb2-bringup pmb2-controller-configuration pmb2-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PMB2 robot description and launch files";
    license = with lib.licenses; [ asl20 ];
  };
}
