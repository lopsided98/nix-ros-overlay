
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-zdepth";
  version = "2.1.27-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/zdepth/2.1.27-1.tar.gz";
    name = "2.1.27-1.tar.gz";
    sha256 = "22be1151c62f9366eb3e4089aaecc9c0b40937cdcccf237237f96ec8679dea1b";
  };

  buildType = "cmake";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The zdepth package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
