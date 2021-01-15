
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, warthog-msgs, warthog-viz }:
buildRosPackage {
  pname = "ros-kinetic-warthog-desktop";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/warthog_desktop-release/archive/release/kinetic/warthog_desktop/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "273215b3b079233d04e99cd8dcc1585dca2708c2111a8af19100e4f8f670b544";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ warthog-msgs warthog-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for working with Warthog from a ROS desktop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
