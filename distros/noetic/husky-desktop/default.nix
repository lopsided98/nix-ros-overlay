
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-msgs, husky-viz }:
buildRosPackage {
  pname = "ros-noetic-husky-desktop";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/noetic/husky_desktop/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "c10bf434897ac56ce4f78c89e117d94e61993916331f04d6f47d56c1bc90bb80";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ husky-msgs husky-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky visualization software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
