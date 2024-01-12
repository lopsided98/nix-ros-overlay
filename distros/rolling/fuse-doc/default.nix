
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-rolling-fuse-doc";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse_doc/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "25404c35ddff8854721d7d6c0d6448fc933fca26720a6ba0ca0329bb46808afa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The fuse_doc package provides documentation and examples for the fuse package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
