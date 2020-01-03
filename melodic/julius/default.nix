
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mk, roslib, rospack, rsync, unzip, wget }:
buildRosPackage {
  pname = "ros-melodic-julius";
  version = "2.1.13-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/julius/2.1.13-1.tar.gz";
    name = "2.1.13-1.tar.gz";
    sha256 = "08c8581340c2dd892677c35b67d30230fc7f9bc71c67f975a3f897e67bf264f3";
  };

  buildType = "catkin";
  buildInputs = [ mk roslib rospack ];
  propagatedBuildInputs = [ rsync unzip wget ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''julius: Open-Source Large Vocabulary CSR Engine (http://julius.sourceforge.jp/index.php)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
