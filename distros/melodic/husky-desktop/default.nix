
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-msgs, husky-viz }:
buildRosPackage {
  pname = "ros-melodic-husky-desktop";
  version = "0.4.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_desktop/0.4.7-1.tar.gz";
    name = "0.4.7-1.tar.gz";
    sha256 = "59247efa565fce4d331eb1c1c754baa119c9f73338c5802d54e1257c917545ce";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ husky-msgs husky-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky visualization software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
