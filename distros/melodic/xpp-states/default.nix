
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen }:
buildRosPackage {
  pname = "ros-melodic-xpp-states";
  version = "1.0.10";

  src = fetchurl {
    url = "https://github.com/leggedrobotics/xpp-release/archive/release/melodic/xpp_states/1.0.10-0.tar.gz";
    name = "1.0.10-0.tar.gz";
    sha256 = "7844597910c688e3ae3664b58bf6d3f17f0364d049d890156ed4675a2a2825f9";
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
