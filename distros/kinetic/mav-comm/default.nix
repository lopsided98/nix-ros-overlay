
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mav-msgs, mav-planning-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mav-comm";
  version = "3.3.2";

  src = fetchurl {
    url = "https://github.com/ethz-asl/mav_comm-release/archive/release/kinetic/mav_comm/3.3.2-0.tar.gz";
    name = "3.3.2-0.tar.gz";
    sha256 = "41711ad4e6e1aee7bfbc21e19419f07e2f3ccddd75a6a3412d2fe7c6caac274d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mav-msgs mav-planning-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains messages and services for MAV communication'';
    license = with lib.licenses; [ asl20 ];
  };
}
