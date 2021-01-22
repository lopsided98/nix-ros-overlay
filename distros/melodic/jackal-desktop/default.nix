
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jackal-msgs, jackal-viz }:
buildRosPackage {
  pname = "ros-melodic-jackal-desktop";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal_desktop-release/archive/release/melodic/jackal_desktop/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "75057128589c98a64195ceccf02f1fa7595d11b7536fe69c0187b42f5ae3829c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ jackal-msgs jackal-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for working with Jackal from a ROS desktop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
