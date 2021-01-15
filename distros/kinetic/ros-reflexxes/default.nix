
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, libreflexxestype2, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-ros-reflexxes";
  version = "0.8.8";

  src = fetchurl {
    url = "https://github.com/KITrobotics/ipr_extern-release/archive/release/kinetic/ros_reflexxes/0.8.8-0.tar.gz";
    name = "0.8.8-0.tar.gz";
    sha256 = "6fffe8bdbc4b262e0c0c806be94310d9429959403af9a3fea107d4612d6dc858";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ libreflexxestype2 roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_reflexxes package'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
