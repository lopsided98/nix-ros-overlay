
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mk, roslib, rospack, rsync, unzip, wget }:
buildRosPackage {
  pname = "ros-melodic-julius";
  version = "2.1.17-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/julius/2.1.17-1.tar.gz";
    name = "2.1.17-1.tar.gz";
    sha256 = "2b761c62c166ff789c0b8cde3c0decff8c9cb1ef7d740a93ff1e3644fc002d08";
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
