
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mk, roslib, rospack, rsync, unzip, wget }:
buildRosPackage {
  pname = "ros-kinetic-julius";
  version = "2.1.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/julius/2.1.15-1.tar.gz";
    name = "2.1.15-1.tar.gz";
    sha256 = "43d731d49103582f6c0bfaabfb4e23a93585b8ca9b2ad42fb893d9d301a8761a";
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
