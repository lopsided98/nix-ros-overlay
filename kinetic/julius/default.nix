
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, mk, rsync, catkin, wget, unzip, roslib }:
buildRosPackage {
  pname = "ros-kinetic-julius";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/julius/2.1.11-0.tar.gz;
    sha256 = "b590b878b8eef3ed5ff4b4670eaff6b95549f930f367408163fba665ac3085a2";
  };

  buildInputs = [ roslib rospack unzip mk rsync wget ];
  propagatedBuildInputs = [ rsync unzip wget ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''julius: Open-Source Large Vocabulary CSR Engine (http://julius.sourceforge.jp/index.php)'';
    #license = lib.licenses.GPL;
  };
}
