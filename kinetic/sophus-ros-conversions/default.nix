
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, sophus, catkin, ecl-build, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-sophus-ros-conversions";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/sophus_ros_toolkit-release/archive/release/kinetic/sophus_ros_conversions/0.1.3-0.tar.gz;
    sha256 = "e1cfba0989700bb4b96f67c8e60c3d7c7b69f51aca0b8a8457a287436e8b9d65";
  };

  propagatedBuildInputs = [ cmake-modules sophus tf geometry-msgs ecl-build ];
  nativeBuildInputs = [ cmake-modules sophus catkin tf geometry-msgs ecl-build ];

  meta = {
    description = ''Conversions between ros and sophus.'';
    #license = lib.licenses.BSD;
  };
}
