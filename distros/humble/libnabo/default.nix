
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen }:
buildRosPackage {
  pname = "ros-humble-libnabo";
  version = "1.0.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libnabo-release/archive/release/humble/libnabo/1.0.7-3.tar.gz";
    name = "1.0.7-3.tar.gz";
    sha256 = "158ee7511366ea52d4ad0cc4fbbdc7140a79eb999db1d28b325bb77196770b03";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''libnabo is a fast K Nearest Neighbour library for low-dimensional spaces.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
