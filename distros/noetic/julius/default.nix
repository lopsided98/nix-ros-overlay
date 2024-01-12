
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mk, roslib, rospack, rsync, unzip, wget }:
buildRosPackage {
  pname = "ros-noetic-julius";
  version = "2.1.28-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/julius/2.1.28-1.tar.gz";
    name = "2.1.28-1.tar.gz";
    sha256 = "2a3fb86c7626925a8af6ff73a65994a3a20a3ed038a2482591a83d44ec75ad6e";
  };

  buildType = "catkin";
  buildInputs = [ catkin mk roslib rospack ];
  propagatedBuildInputs = [ rsync unzip wget ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''julius: Open-Source Large Vocabulary CSR Engine (http://julius.sourceforge.jp/index.php)'';
    license = with lib.licenses; [ "GPL" ];
  };
}
