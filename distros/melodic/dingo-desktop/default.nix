
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dingo-msgs, dingo-viz }:
buildRosPackage {
  pname = "ros-melodic-dingo-desktop";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo_desktop-release/archive/release/melodic/dingo_desktop/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "783a5da55c27e4175f547cbe6894001f3792040759fcbbc4e9d56f65b801d4ca";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dingo-msgs dingo-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for working with Dingo from a ROS desktop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
