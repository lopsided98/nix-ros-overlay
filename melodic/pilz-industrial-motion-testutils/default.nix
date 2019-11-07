
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-commander, moveit-core, moveit-msgs, eigen-conversions, pilz-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-industrial-motion-testutils";
  version = "0.4.7-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_industrial_motion_testutils/0.4.7-1.tar.gz";
    name = "0.4.7-1.tar.gz";
    sha256 = "76f0f77c2a79a01e0ab5480eedc5a9acdd398c64a8e5889ccf69d341bdd5594b";
  };

  buildType = "catkin";
  buildInputs = [ moveit-msgs eigen-conversions pilz-msgs moveit-core ];
  propagatedBuildInputs = [ moveit-msgs pilz-msgs moveit-commander moveit-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper scripts and functionality to test industrial motion generation'';
    license = with lib.licenses; [ asl20 ];
  };
}
