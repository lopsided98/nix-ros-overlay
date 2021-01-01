
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rexrov2-control, rexrov2-description }:
buildRosPackage {
  pname = "ros-kinetic-rexrov2-gazebo";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/rexrov2-release/archive/release/kinetic/rexrov2_gazebo/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "f56d3209849a94b4dc3208b17f906b741c652f13309f7460251f3e4eec4a9adf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rexrov2-control rexrov2-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with launch files for demonstrations with the RexROV 2 vehicle'';
    license = with lib.licenses; [ asl20 ];
  };
}
