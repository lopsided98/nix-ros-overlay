
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, warthog-msgs, catkin, warthog-viz }:
buildRosPackage {
  pname = "ros-melodic-warthog-desktop";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/warthog_desktop-release/archive/release/melodic/warthog_desktop/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "3b839c59095be96b5f39a0473d13467834a3f7ef43d4bcbd7e53befb569025c8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ warthog-msgs warthog-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for working with Warthog from a ROS desktop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
