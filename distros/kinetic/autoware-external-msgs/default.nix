
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lgsvl-msgs }:
buildRosPackage {
  pname = "ros-kinetic-autoware-external-msgs";
  version = "1.12.0-r1";

  src = fetchurl {
    url = "https://github.com/autoware-ai/messages-release/archive/release/kinetic/autoware_external_msgs/1.12.0-1.tar.gz";
    name = "1.12.0-1.tar.gz";
    sha256 = "d0ae0bfd4e21753ca339318d535b0c9b7cd086d24bdafe529f2aabaaa77739fc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lgsvl-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package to contain an install external message dependencies'';
    license = with lib.licenses; [ asl20 ];
  };
}
