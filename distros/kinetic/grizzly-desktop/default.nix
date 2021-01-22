
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grizzly-msgs, grizzly-viz }:
buildRosPackage {
  pname = "ros-kinetic-grizzly-desktop";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/grizzly_desktop-release/archive/release/kinetic/grizzly_desktop/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "a654a59b21c2939fd6396f2126879e2db2b7ccc899dcb4d1b37f4fba94224bcf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ grizzly-msgs grizzly-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of things you want to visualize and control Grizzly from a desktop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
