
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-ament-download";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/samsung-ros/ament_download-release/archive/release/foxy/ament_download/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "b85972b56f2b369c2007a178b7e1c8e4896c5873dc0c9ae8b029d68cf2ce8cb9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CMake macros for downloading files with ament'';
    license = with lib.licenses; [ asl20 ];
  };
}
