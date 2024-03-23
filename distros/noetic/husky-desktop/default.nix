
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-msgs, husky-viz }:
buildRosPackage {
  pname = "ros-noetic-husky-desktop";
  version = "0.6.10-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/noetic/husky_desktop/0.6.10-1.tar.gz";
    name = "0.6.10-1.tar.gz";
    sha256 = "342d89266261cbaa66735bccd2700e3d50601d0b2df7731d5fbd6325a41e8b89";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ husky-msgs husky-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Metapackage for Clearpath Husky visualization software";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
