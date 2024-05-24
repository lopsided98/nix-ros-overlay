
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, libnabo, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-libpointmatcher";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libpointmatcher-release/archive/release/jazzy/libpointmatcher/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "3afefaf69d3ba99ff919379ec849f9b87a2c4c59677ee03730caa9dcedfe8f86";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost eigen libnabo yaml-cpp ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "libpointmatcher is a modular ICP library, useful for robotics and computer vision.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
