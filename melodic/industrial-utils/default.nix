
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, rosunit, roscpp }:
buildRosPackage {
  pname = "ros-melodic-industrial-utils";
  version = "0.7.0";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/industrial_core-release/archive/release/melodic/industrial_utils/0.7.0-0.tar.gz;
    sha256 = "6615952de07963890fa787cba410b69c8a7d947158281eefc629c8e92c88bf51";
  };

  buildInputs = [ roscpp urdf ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ roscpp urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Industrial utils is a library package that captures common funcitonality for the ROS-Industrial distribution.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
