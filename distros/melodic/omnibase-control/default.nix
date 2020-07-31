
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-omnibase-control";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ERC-BPGC/omnibase-release/archive/release/melodic/omnibase_control/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "475170d7c08ca3d1aed5babae0c0a9f3e9d16b3c9d977c89cd5bbb9c947e8a1d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs nav-msgs roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The omnibase_control package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
