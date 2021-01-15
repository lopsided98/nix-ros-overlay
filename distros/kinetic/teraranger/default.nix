
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, roscpp, sensor-msgs, serial, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-teraranger";
  version = "2.1.0-r2";

  src = fetchurl {
    url = "https://github.com/Terabee/teraranger-release/archive/release/kinetic/teraranger/2.1.0-2.tar.gz";
    name = "2.1.0-2.tar.gz";
    sha256 = "395e8199180868097aaad98a74ec7dfeb47f4427ff5fd14fcf5718f570a44488";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure roscpp sensor-msgs serial std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides ros nodes for single sensors from Terabee'';
    license = with lib.licenses; [ mit ];
  };
}
