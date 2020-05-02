
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-msgs, husky-viz }:
buildRosPackage {
  pname = "ros-melodic-husky-desktop";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_desktop/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "6474931a870dcc4b91400a6f4f96d5d51d3503362b5b6c77838e9e692f55ed42";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ husky-msgs husky-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky visualization software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
