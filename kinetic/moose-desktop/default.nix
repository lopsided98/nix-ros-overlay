
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moose-msgs, moose-viz }:
buildRosPackage {
  pname = "ros-kinetic-moose-desktop";
  version = "0.1.0-r3";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/moose_desktop-release/archive/release/kinetic/moose_desktop/0.1.0-3.tar.gz";
    name = "0.1.0-3.tar.gz";
    sha256 = "36b65aac7523bba7f9d70fcd0b28213d7a4c8d3b1593cd5beb1b5225aa634cc1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moose-msgs moose-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for working with Moose from a ROS desktop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
