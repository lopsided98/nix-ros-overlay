
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dolly-follow, dolly-gazebo, dolly-ignition }:
buildRosPackage {
  pname = "ros-galactic-dolly";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/chapulina/dolly-release/archive/release/galactic/dolly/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "6ca3ebd5b6817abbbfcb70a93a576ddd15d89ac4f70cd183e2724be9ef77eb8b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ dolly-follow dolly-gazebo dolly-ignition ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meta-package for Dolly, the robot sheep.'';
    license = with lib.licenses; [ asl20 ];
  };
}
