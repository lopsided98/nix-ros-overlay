
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, mk, rsync, catkin, wget, unzip, roslib }:
buildRosPackage {
  pname = "ros-kinetic-julius";
  version = "2.1.12-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/julius/2.1.12-1.tar.gz;
    sha256 = "01e854f4618b9b161d2d5a0b75edbeafbe99dc249a5c30b6f411d30de737dcb3";
  };

  buildInputs = [ rospack mk rsync wget unzip roslib ];
  propagatedBuildInputs = [ rsync unzip wget ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''julius: Open-Source Large Vocabulary CSR Engine (http://julius.sourceforge.jp/index.php)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
