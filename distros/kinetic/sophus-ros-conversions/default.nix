
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, ecl-build, geometry-msgs, sophus, tf }:
buildRosPackage {
  pname = "ros-kinetic-sophus-ros-conversions";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/sophus_ros_toolkit-release/archive/release/kinetic/sophus_ros_conversions/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "e1cfba0989700bb4b96f67c8e60c3d7c7b69f51aca0b8a8457a287436e8b9d65";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules ecl-build geometry-msgs sophus tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversions between ros and sophus.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
