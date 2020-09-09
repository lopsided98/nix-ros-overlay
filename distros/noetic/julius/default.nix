
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mk, roslib, rospack, rsync, unzip, wget }:
buildRosPackage {
  pname = "ros-noetic-julius";
  version = "2.1.21-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/julius/2.1.21-1.tar.gz";
    name = "2.1.21-1.tar.gz";
    sha256 = "c7a0f5a6e90045d9d57b5022f15f7df08f59e9e0a7cad645c72df4a98bfe097b";
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
