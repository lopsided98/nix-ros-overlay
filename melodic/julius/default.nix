
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, mk, rsync, catkin, wget, unzip, roslib }:
buildRosPackage {
  pname = "ros-melodic-julius";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/julius/2.1.11-0.tar.gz;
    sha256 = "45f762799ae7c4ec3acf064e4e13afc43b0556a2c410b30c84df92fe62ef51bd";
  };

  buildInputs = [ rospack mk rsync wget unzip roslib ];
  propagatedBuildInputs = [ rsync unzip wget ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''julius: Open-Source Large Vocabulary CSR Engine (http://julius.sourceforge.jp/index.php)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
