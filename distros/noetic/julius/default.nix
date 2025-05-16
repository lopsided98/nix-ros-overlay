
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mk, roslib, rospack, rsync, unzip, wget }:
buildRosPackage {
  pname = "ros-noetic-julius";
  version = "2.1.31-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/julius/2.1.31-3.tar.gz";
    name = "2.1.31-3.tar.gz";
    sha256 = "e59823f666704dcf041516d00cf27e4680908219d862b325066de4de8574b838";
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
