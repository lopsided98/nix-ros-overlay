
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dolly-follow, dolly-gazebo }:
buildRosPackage {
  pname = "ros-dashing-dolly";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/chapulina/dolly-release/archive/release/dashing/dolly/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "03ff490806f8db74b5787511005b37c10fe76d861e175338ac768df3a6c17c7b";
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
