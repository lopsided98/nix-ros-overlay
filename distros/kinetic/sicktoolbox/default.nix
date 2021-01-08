
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-sicktoolbox";
  version = "1.0.104-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/sicktoolbox-release/archive/release/kinetic/sicktoolbox/1.0.104-2.tar.gz";
    name = "1.0.104-2.tar.gz";
    sha256 = "e661e03b02237c5cfa4a52ee2f06a5b0a6f891fe047470e09e19861837b182a0";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SICK Toolbox drivers for SICK laser rangefinders

    This package contains the ROS fork of the SICK LIDAR Matlab/C++ Toolbox, available from <a href="http://sicktoolbox.sourceforge.net/">http://sicktoolbox.sourceforge.net/</a>.

    The SICK LIDAR Matlab/C++ Toolbox offers stable and easy-to-use C++ drivers for SICK LMS 2xx and SICK LD LIDARs.  Also included are config utilities, examples, and tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
