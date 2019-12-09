
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, igvc-self-drive-description, catkin, igvc-self-drive-gazebo, igvc-self-drive-gazebo-plugins }:
buildRosPackage {
  pname = "ros-melodic-igvc-self-drive-sim";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/robustify/igvc_self_drive_sim-release/archive/release/melodic/igvc_self_drive_sim/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "8a843a920d6ffe9cb3c37a6c3e9b07e993aa0373599583f68304e5827883e214";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ igvc-self-drive-description igvc-self-drive-gazebo-plugins igvc-self-drive-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for igvc_self_drive_sim'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
