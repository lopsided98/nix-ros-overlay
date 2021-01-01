
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, ecto, opencv-candidate, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-ecto-opencv";
  version = "0.7.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ecto_opencv-release/archive/release/kinetic/ecto_opencv/0.7.2-0.tar.gz";
    name = "0.7.2-0.tar.gz";
    sha256 = "006226c8e58af9547e44edf9bac67ba8d1fb3d828accabc9cad227a1e039f810";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ boost ecto opencv-candidate ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ecto bindings for common opencv functionality.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
