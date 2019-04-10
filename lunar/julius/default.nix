
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, mk, rsync, catkin, wget, unzip, roslib }:
buildRosPackage {
  pname = "ros-lunar-julius";
  version = "2.1.11-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/lunar/julius/2.1.11-2.tar.gz;
    sha256 = "18628fac9dcc0c12560f402619162e44b399165d7ce469fb0ade1164108a03a3";
  };

  buildInputs = [ roslib rospack unzip mk rsync wget ];
  propagatedBuildInputs = [ rsync unzip wget ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''julius: Open-Source Large Vocabulary CSR Engine (http://julius.sourceforge.jp/index.php)'';
    #license = lib.licenses.GPL;
  };
}
