
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dolly-follow, dolly-gazebo, dolly-ignition }:
buildRosPackage {
  pname = "ros-foxy-dolly";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/chapulina/dolly-release/archive/release/foxy/dolly/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "460c1f610ae8be2da3408e1b190a39ebf586b6cafb125ddc038b0153f538f3f4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ dolly-follow dolly-gazebo dolly-ignition ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meta-package for Dolly, the robot sheep.'';
    license = with lib.licenses; [ asl20 ];
  };
}
