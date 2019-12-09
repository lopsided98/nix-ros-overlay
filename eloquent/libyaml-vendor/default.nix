
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-eloquent-libyaml-vendor";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libyaml_vendor-release/archive/release/eloquent/libyaml_vendor/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "5d5980d708888f276824dffbdd83140f34ff4a8b0f503977bfeb763a664c4adb";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around libyaml, provides the last version (1.8.0 rc) that ships with a CMake module'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
