
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rm-common, rm-description, rm-gazebo, rm-hw, rm-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-control";
  version = "0.1.8-r2";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_control/0.1.8-2.tar.gz";
    name = "0.1.8-2.tar.gz";
    sha256 = "efd157dd7d795bcce650d6188ac05d2e50785d0388c59c75fde8c6cd927ae910";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rm-common rm-description rm-gazebo rm-hw rm-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains package of rm_control.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
