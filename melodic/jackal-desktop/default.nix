
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jackal-viz, jackal-msgs }:
buildRosPackage {
  pname = "ros-melodic-jackal-desktop";
  version = "0.3.2-r1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/jackal_desktop-release/archive/release/melodic/jackal_desktop/0.3.2-1.tar.gz;
    sha256 = "75057128589c98a64195ceccf02f1fa7595d11b7536fe69c0187b42f5ae3829c";
  };

  propagatedBuildInputs = [ jackal-viz jackal-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for working with Jackal from a ROS desktop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
