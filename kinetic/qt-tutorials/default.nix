
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qt-build, message-runtime, std-msgs, qt4, catkin, roscpp, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-qt-tutorials";
  version = "0.2.10";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/qt_ros-release/archive/release/kinetic/qt_tutorials/0.2.10-0.tar.gz";
    name = "0.2.10-0.tar.gz";
    sha256 = "d94628cee5979d8ec1001f4afa7daecde68fb23efa6c79d8e3d1af223123fe75";
  };

  buildType = "catkin";
  buildInputs = [ qt-build std-msgs qt4 roscpp message-generation ];
  propagatedBuildInputs = [ qt-build qt4 std-msgs roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Example qt programs, generated from code similar to that used by the 
     roscreate-qt-pkg script and styled on roscpp_tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
