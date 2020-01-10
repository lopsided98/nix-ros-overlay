
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dolly-follow, dolly-gazebo }:
buildRosPackage {
  pname = "ros-eloquent-dolly";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/chapulina/dolly-release/archive/release/eloquent/dolly/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "14ac73237a4341ab640998eb31a2d1d6b03231a9bf63d7d8c1c87a024fe7e3d8";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ dolly-follow dolly-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meta-package for Dolly, the robot sheep.'';
    license = with lib.licenses; [ asl20 ];
  };
}
