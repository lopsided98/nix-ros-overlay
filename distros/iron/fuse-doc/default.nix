
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-iron-fuse-doc";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/iron/fuse_doc/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "d1e0b13166a200dacd8e0dd65bb5233a4ae399e8d443e3fb5b1767018e4ccb05";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The fuse_doc package provides documentation and examples for the fuse package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
