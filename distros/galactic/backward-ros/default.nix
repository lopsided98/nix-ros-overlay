
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, elfutils }:
buildRosPackage {
  pname = "ros-galactic-backward-ros";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/pal-gbp/backward_ros-release/archive/release/galactic/backward_ros/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "0471b6be0d5e661af0b0e943c576d8ae9cfef99c8b69ebc28d376b4080a6ff8c";
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
