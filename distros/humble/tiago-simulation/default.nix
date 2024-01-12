
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-gazebo }:
buildRosPackage {
  pname = "ros-humble-tiago-simulation";
  version = "4.0.7-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_simulation-release/archive/release/humble/tiago_simulation/4.0.7-1.tar.gz";
    name = "4.0.7-1.tar.gz";
    sha256 = "fd666d5fc5345c0eef8f49c833eb889aeb69876256ae12a4cfb02a31a6a6b499";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tiago-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The tiago_simulation package'';
    license = with lib.licenses; [ asl20 ];
  };
}
