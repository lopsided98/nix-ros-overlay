
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, effort-controllers, geometry-msgs, joint-state-controller, joint-trajectory-controller, nav-msgs, position-controllers, roscpp, rospy, std-msgs, velocity-controllers }:
buildRosPackage {
  pname = "ros-melodic-omnibase-control";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ERC-BPGC/omnibase-release/archive/release/melodic/omnibase_control/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "824731f03f53057a147b36fa605fd692a77fef89c1865e599e167c409318753e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ effort-controllers geometry-msgs joint-state-controller joint-trajectory-controller nav-msgs position-controllers roscpp rospy std-msgs velocity-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The omnibase_control package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
