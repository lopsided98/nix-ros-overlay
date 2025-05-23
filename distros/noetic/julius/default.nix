
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mk, roslib, rospack, rsync, unzip, wget }:
buildRosPackage {
  pname = "ros-noetic-julius";
  version = "2.1.31-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/julius/2.1.31-4.tar.gz";
    name = "2.1.31-4.tar.gz";
    sha256 = "40c56e70844a6b49ba76ec0f33fd143c5451b168bb30d7ad878e4b085e0901c5";
  };

  buildType = "catkin";
  buildInputs = [ catkin mk roslib rospack ];
  propagatedBuildInputs = [ rsync unzip wget ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "julius: Open-Source Large Vocabulary CSR Engine (http://julius.sourceforge.jp/index.php)";
    license = with lib.licenses; [ "GPL" ];
  };
}
