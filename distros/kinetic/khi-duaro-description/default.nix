
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-khi-duaro-description";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_duaro_description/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "9b46740c8c77cbf61497aaea1a8b804d1208896be9c99cc1890768e2b49ad146";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_duaro_description package'';
    license = with lib.licenses; [ bsdOriginal "KHI CAD license (mesh data, see readme)" ];
  };
}
