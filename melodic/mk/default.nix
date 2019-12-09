
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbuild, catkin, rospack }:
buildRosPackage {
  pname = "ros-melodic-mk";
  version = "1.14.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/melodic/mk/1.14.7-1.tar.gz";
    name = "1.14.7-1.tar.gz";
    sha256 = "0aeac91aed49a2f29f59e1eedbf005fbe31779b7c39ea2215a125bbb7b83dd2c";
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
