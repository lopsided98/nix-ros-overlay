
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-gl-dependency";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gl_dependency-release/archive/release/melodic/gl_dependency/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "268881107d9d7d88c38530235fe1c38bd6343ffa7d326c451136895e06f3422e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pythonPackages.pyqt5 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This encapsulates the GL dependency for a specific ROS distribution and its Qt version'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
