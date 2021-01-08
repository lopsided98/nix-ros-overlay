
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbuild, rospack }:
buildRosPackage {
  pname = "ros-kinetic-mk";
  version = "1.14.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/kinetic/mk/1.14.6-1.tar.gz";
    name = "1.14.6-1.tar.gz";
    sha256 = "50e9991eb2ad2117ea211eb6c0c085f2c943a9af9fa360b36d07b0a366b1abaf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosbuild rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of .mk include files for building ROS architectural elements.
    Most package authors should use cmake .mk, which calls CMake for the build of the package.
    The other files in this package are intended for use in exotic situations that mostly arise when importing 3rdparty code.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
