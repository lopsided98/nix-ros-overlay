
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen }:
buildRosPackage {
  pname = "ros-noetic-xpp-states";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/leggedrobotics/xpp-release/archive/release/noetic/xpp_states/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "cda3dc0aa390e9aec9fdcf29f5f22dd0bcb5cb1850d8a11904c47627cd2acaf5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
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
