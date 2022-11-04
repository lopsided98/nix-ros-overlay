
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mav-msgs, mav-planning-msgs }:
buildRosPackage {
  pname = "ros-melodic-mav-comm";
  version = "3.3.2";

  src = fetchurl {
    url = "https://github.com/ethz-asl/mav_comm-release/archive/release/melodic/mav_comm/3.3.2-0.tar.gz";
    name = "3.3.2-0.tar.gz";
    sha256 = "58c58a99785c47a9b06a616dfc6d579251b7a18caf26b6acb7702fab69df27cc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mav-msgs mav-planning-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains messages and services for MAV communication'';
    license = with lib.licenses; [ "ASL-2.0" ];
  };
}
