
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mav-msgs, catkin, mav-planning-msgs }:
buildRosPackage {
  pname = "ros-lunar-mav-comm";
  version = "3.3.2";

  src = fetchurl {
    url = https://github.com/ethz-asl/mav_comm-release/archive/release/lunar/mav_comm/3.3.2-0.tar.gz;
    sha256 = "d2259bce4b38c4015bfe7ff081cb45960c43ae5ca64cf1590c026c7647b7ad4c";
  };

  propagatedBuildInputs = [ mav-msgs mav-planning-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains messages and services for MAV communication'';
    #license = lib.licenses.ASL 2.0;
  };
}
