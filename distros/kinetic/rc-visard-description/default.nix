
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, xacro }:
buildRosPackage {
  pname = "ros-kinetic-rc-visard-description";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/kinetic/rc_visard_description/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "974eee6d99db839c51e357a4ff69d821930fbc3cdd475a7d3e98acdfd26c1937";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization package for rc_visard'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
