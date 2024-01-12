
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dingo-msgs, dingo-viz }:
buildRosPackage {
  pname = "ros-noetic-dingo-desktop";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo_desktop-release/archive/release/noetic/dingo_desktop/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "c09ce513a52ee854f6790b82aa2e941de03440fd007fa6b965c6f2e8a380fcc0";
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
