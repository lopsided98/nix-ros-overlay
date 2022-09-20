
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, roscpp, roslint, rostest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-boost-sml";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/boost_sml-release/archive/release/melodic/boost_sml/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "e98ea8d0a8064f30a76842a435fc4b87a5547fe2f28001582173a21ebca65326";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ boost roscpp roslint ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''State machine library with ros logging'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
