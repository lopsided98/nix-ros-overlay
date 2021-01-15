
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moose-msgs, moose-viz }:
buildRosPackage {
  pname = "ros-kinetic-moose-desktop";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/moose_desktop-release/archive/release/kinetic/moose_desktop/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "ecab6f912991b1541897082ca2a6bd12ac094296f02265eb0bf0a95513d7a1b0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moose-msgs moose-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for working with Moose from a ROS desktop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
