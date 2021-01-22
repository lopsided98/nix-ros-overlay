
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-robotont-description";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/robotont-release/robotont_description-release/archive/release/melodic/robotont_description/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "d95ec61d0bfab76ba98bdf48cf9f7b5f0104e28252a6964fbdee9fb9a008f2a5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher rviz urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robotont_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
