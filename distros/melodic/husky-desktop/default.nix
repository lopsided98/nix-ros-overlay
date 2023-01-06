
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-msgs, husky-viz }:
buildRosPackage {
  pname = "ros-melodic-husky-desktop";
  version = "0.4.13-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_desktop/0.4.13-1.tar.gz";
    name = "0.4.13-1.tar.gz";
    sha256 = "22d9796b879a3f4abcfd7c4755be838744a9f53f949268bdd58221c12a363ff3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ husky-msgs husky-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky visualization software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
