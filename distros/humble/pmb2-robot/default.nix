
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pmb2-bringup, pmb2-controller-configuration, pmb2-description }:
buildRosPackage {
  pname = "ros-humble-pmb2-robot";
  version = "5.0.15-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_robot-gbp/archive/release/humble/pmb2_robot/5.0.15-1.tar.gz";
    name = "5.0.15-1.tar.gz";
    sha256 = "7b4f794535752ad53fcf9f3a1127996ec3a7b572b1fd581da0dd654f7ab1ed3a";
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
