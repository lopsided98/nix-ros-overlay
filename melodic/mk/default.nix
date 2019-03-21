
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, rosbuild, catkin }:
buildRosPackage {
  pname = "ros-melodic-mk";
  version = "1.14.6";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/melodic/mk/1.14.6-0.tar.gz;
    sha256 = "1382c3d63ce096921a1c157c850962bb220f806dc2fa9ca88c45f3d0017bd5e2";
  };

  propagatedBuildInputs = [ rospack rosbuild ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of .mk include files for building ROS architectural elements.
    Most package authors should use cmake .mk, which calls CMake for the build of the package.
    The other files in this package are intended for use in exotic situations that mostly arise when importing 3rdparty code.'';
    #license = lib.licenses.BSD;
  };
}
