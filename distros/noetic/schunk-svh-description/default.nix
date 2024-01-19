
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-schunk-svh-description";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/SCHUNK-GmbH-Co-KG/schunk_svh_ros_driver-release/archive/release/noetic/schunk_svh_description/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "a78f1e86cd6cee0dab0c4a8e009104ee819d64113cb596024f9b1283d392d600";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The schunk_svh_description package'';
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
