
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, warthog-msgs, warthog-viz }:
buildRosPackage {
  pname = "ros-melodic-warthog-desktop";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/warthog_desktop-release/archive/release/melodic/warthog_desktop/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "67791be4dee0cd2f12e04c840c20146a589fb2bf3dcc009f6376ea2899062807";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ warthog-msgs warthog-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for working with Warthog from a ROS desktop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
