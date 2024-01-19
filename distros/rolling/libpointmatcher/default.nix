
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, libnabo }:
buildRosPackage {
  pname = "ros-rolling-libpointmatcher";
  version = "1.3.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libpointmatcher-release/archive/release/rolling/libpointmatcher/1.3.1-4.tar.gz";
    name = "1.3.1-4.tar.gz";
    sha256 = "70e3664ade8660c4d26fbdb557a74c9c576836c159ad778a19c36bb0cda82b99";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost eigen libnabo ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''libpointmatcher is a modular ICP library, useful for robotics and computer vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
