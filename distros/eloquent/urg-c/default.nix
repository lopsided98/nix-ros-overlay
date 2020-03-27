
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-eloquent-urg-c";
  version = "1.0.4000-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_c-release/archive/release/eloquent/urg_c/1.0.4000-1.tar.gz";
    name = "1.0.4000-1.tar.gz";
    sha256 = "a76a4e66d37bd6fda0b75ba22b87ff1c5ab210ed53d342a51356dcb57f1478f0";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The urg_c package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
