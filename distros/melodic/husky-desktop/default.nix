
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-msgs, husky-viz }:
buildRosPackage {
  pname = "ros-melodic-husky-desktop";
  version = "0.4.5-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_desktop/0.4.5-1.tar.gz";
    name = "0.4.5-1.tar.gz";
    sha256 = "5f54dea54f351b8fb8c79251ccce794e2a6546f935734494a9b3d85db597ccdd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ husky-msgs husky-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky visualization software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
