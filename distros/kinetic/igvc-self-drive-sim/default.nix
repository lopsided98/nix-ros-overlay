
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, igvc-self-drive-description, igvc-self-drive-gazebo, igvc-self-drive-gazebo-plugins }:
buildRosPackage {
  pname = "ros-kinetic-igvc-self-drive-sim";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/robustify/igvc_self_drive_sim-release/archive/release/kinetic/igvc_self_drive_sim/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "80bcada295119dc21e9b061e6c15c225ecd0f3a9ab3c3f1f5c0531971c81f8c9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ igvc-self-drive-description igvc-self-drive-gazebo igvc-self-drive-gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for igvc_self_drive_sim'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
