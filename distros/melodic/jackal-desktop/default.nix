
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jackal-msgs, jackal-viz }:
buildRosPackage {
  pname = "ros-melodic-jackal-desktop";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal_desktop-release/archive/release/melodic/jackal_desktop/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "72c94376d4b6d0af285c61998eee8da28ca5e08e172f3a9826a7e8f2b4ed7dee";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ jackal-msgs jackal-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for working with Jackal from a ROS desktop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
