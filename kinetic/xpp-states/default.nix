
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen }:
buildRosPackage {
  pname = "ros-kinetic-xpp-states";
  version = "1.0.8";

  src = fetchurl {
    url = https://github.com/leggedrobotics/xpp-release/archive/release/kinetic/xpp_states/1.0.8-0.tar.gz;
    sha256 = "8d3ab0c3051c1352bdce184357e7306ef43079302065987dd73463638bd4d0e7";
  };

  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ catkin eigen ];

  meta = {
    description = ''Common definitions (positions, velocities, angular angles,
    angular rates) and robot definitions in Cartesian and joint state
    used in the Xpp Motion Framework, as well as conversions to/from
    xpp_msgs.'';
    #license = lib.licenses.BSD;
  };
}
