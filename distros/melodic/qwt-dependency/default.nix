
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-qwt-dependency";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qwt_dependency-release/archive/release/melodic/qwt_dependency/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "7d171d5a7bb5226de322e8146262b5ca73461ec9c71afc3675c5b353e90e42f5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This encapsulates the Qwt dependency for a specific ROS distribution and its Qt version'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
