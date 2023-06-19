
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, tf2-msgs }:
buildRosPackage {
  pname = "ros-melodic-static-transform-mux";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/peci1/static_transform_mux-release/archive/release/melodic/static_transform_mux/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "2e2a25e2b41e55da3689ab7f56ddea2f4945ec8ea78a37610f070e1318b620b7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rospy tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A helper node that makes sure everybody knows about all static transforms, even if they are published by multiple publishers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
