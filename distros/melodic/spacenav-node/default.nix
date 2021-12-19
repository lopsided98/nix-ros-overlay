
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, libspnav, roscpp, roslint, sensor-msgs, spacenavd, xorg }:
buildRosPackage {
  pname = "ros-melodic-spacenav-node";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/joystick_drivers-release/archive/release/melodic/spacenav_node/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "976cd504287d9e94e4bc514765dd351e1b46b9042d490c7f530993a673375315";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  propagatedBuildInputs = [ geometry-msgs libspnav roscpp sensor-msgs spacenavd xorg.libX11 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interface to the 3Dconnexion SpaceNavigator 6DOF joystick.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
