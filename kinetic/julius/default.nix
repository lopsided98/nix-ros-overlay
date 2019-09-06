
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, mk, rsync, catkin, wget, unzip, roslib }:
buildRosPackage {
  pname = "ros-kinetic-julius";
  version = "2.1.13-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/julius/2.1.13-1.tar.gz";
    name = "2.1.13-1.tar.gz";
    sha256 = "e06bdb6714d9b7ea8a193925544da9da3e8bfe34cc0eb53642fd76d0380f8f62";
  };

  buildType = "catkin";
  buildInputs = [ rospack mk rsync wget unzip roslib ];
  propagatedBuildInputs = [ rsync unzip wget ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''julius: Open-Source Large Vocabulary CSR Engine (http://julius.sourceforge.jp/index.php)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
