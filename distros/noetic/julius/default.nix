
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mk, roslib, rospack, rsync, unzip, wget }:
buildRosPackage {
  pname = "ros-noetic-julius";
  version = "2.1.27-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/julius/2.1.27-1.tar.gz";
    name = "2.1.27-1.tar.gz";
    sha256 = "80069e28fa4cdbff59d47ab6e2d912fb36a6a4461b918c3b5a08dc863f59375f";
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
