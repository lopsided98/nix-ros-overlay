
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbuild, rospack }:
buildRosPackage {
  pname = "ros-noetic-mk";
  version = "1.15.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/mk/1.15.10-1.tar.gz";
    name = "1.15.10-1.tar.gz";
    sha256 = "58132962fd04d7dced58b87cb470bae211e52378f2ca005361581d1cd95b2ed2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosbuild rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "A collection of .mk include files for building ROS architectural elements.
    Most package authors should use cmake .mk, which calls CMake for the build of the package.
    The other files in this package are intended for use in exotic situations that mostly arise when importing 3rdparty code.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
