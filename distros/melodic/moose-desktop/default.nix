
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moose-msgs, moose-viz }:
buildRosPackage {
  pname = "ros-melodic-moose-desktop";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/moose_desktop-release/archive/release/melodic/moose_desktop/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "eee8c52478443ca5259632b918c854241382a04fd8a15836f707442d4c629d30";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ moose-msgs moose-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for working with Moose from a ROS desktop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
