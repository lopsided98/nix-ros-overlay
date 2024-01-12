
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-zdepth";
  version = "2.1.28-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/zdepth/2.1.28-1.tar.gz";
    name = "2.1.28-1.tar.gz";
    sha256 = "bbec74f7e1a3cf4b92504378d53de6f9ab84ea9def42b6b469032b9fcc665a48";
  };

  buildType = "cmake";
  buildInputs = [ catkin ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The zdepth package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
