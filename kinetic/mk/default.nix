
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbuild }:
buildRosPackage {
  pname = "ros-kinetic-mk";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/kinetic/mk/1.14.4-0.tar.gz;
    sha256 = "672eeddc822adfa3ddc00681e310c14a201bf0ee913e9c0e7c799cabceadf2fe";
  };

  propagatedBuildInputs = [ rosbuild ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of .mk include files for building ROS architectural elements.
    Most package authors should use cmake .mk, which calls CMake for the build of the package.
    The other files in this package are intended for use in exotic situations that mostly arise when importing 3rdparty code.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
