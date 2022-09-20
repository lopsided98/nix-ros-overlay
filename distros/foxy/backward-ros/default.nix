
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, elfutils }:
buildRosPackage {
  pname = "ros-foxy-backward-ros";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/backward_ros-release/archive/release/foxy/backward_ros/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "1482d82dcdf6e056b40c87c27d0f0f29830c5410815ab4e2791178e1c78dd94d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ elfutils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The backward_ros package is a ros wrapper of backward-cpp from https://github.com/bombela/backward-cpp'';
    license = with lib.licenses; [ mit ];
  };
}
