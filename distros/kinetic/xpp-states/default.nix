
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen }:
buildRosPackage {
  pname = "ros-kinetic-xpp-states";
  version = "1.0.10";

  src = fetchurl {
    url = "https://github.com/leggedrobotics/xpp-release/archive/release/kinetic/xpp_states/1.0.10-0.tar.gz";
    name = "1.0.10-0.tar.gz";
    sha256 = "a630ba9f899c40baba9de98fda70db4992a1048dc5adabfba02b3feaed13140f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common definitions (positions, velocities, angular angles,
    angular rates) and robot definitions in Cartesian and joint state
    used in the Xpp Motion Framework, as well as conversions to/from
    xpp_msgs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
