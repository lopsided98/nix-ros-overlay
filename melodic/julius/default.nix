
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, mk, rsync, catkin, wget, unzip, roslib }:
buildRosPackage {
  pname = "ros-melodic-julius";
  version = "2.1.12-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/julius/2.1.12-2.tar.gz;
    sha256 = "07d392bfc523994aebe54280d531c56b36239220ec1d44daf0778c85450d9af5";
  };

  buildInputs = [ rospack mk rsync wget unzip roslib ];
  propagatedBuildInputs = [ rsync unzip wget ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''julius: Open-Source Large Vocabulary CSR Engine (http://julius.sourceforge.jp/index.php)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
