
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lgsvl-msgs }:
buildRosPackage {
  pname = "ros-noetic-autoware-external-msgs";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/autoware-ai/messages-release/archive/release/noetic/autoware_external_msgs/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "9e46e8c0fb4b274a632a42d058fe1b33b556a809f602ec8a9567c468c719b2a6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ lgsvl-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package to contain an install external message dependencies'';
    license = with lib.licenses; [ asl20 ];
  };
}
