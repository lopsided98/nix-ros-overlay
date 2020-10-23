
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-boost-sml";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/boost_sml-release/archive/release/melodic/boost_sml/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "bc312f3caea5cf88e0c2b8ade1231eda35e695a513dcac61e520835a107aacca";
  };

  buildType = "catkin";
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ roscpp roslint ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''State machine library with ros logging'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
