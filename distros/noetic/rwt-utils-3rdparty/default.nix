
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-rwt-utils-3rdparty";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/noetic/rwt_utils_3rdparty/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "f3ec7faa0955de68a7bd6bf197af4ff6ff680a69591bcba13617b380ca8b7056";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rwt_utils_3rdparty package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
