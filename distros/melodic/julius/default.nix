
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mk, roslib, rospack, rsync, unzip, wget }:
buildRosPackage {
  pname = "ros-melodic-julius";
  version = "2.1.24-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/julius/2.1.24-2.tar.gz";
    name = "2.1.24-2.tar.gz";
    sha256 = "c729762c703fad77210f45279b17b1e807fe9e48bff481fa5a321f1099ad1da0";
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
