
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosconsole-bridge, roscpp, roscpp-serialization, roslaunch, roslint, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-lms1xx";
  version = "0.1.6";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/lms1xx-release/archive/release/kinetic/lms1xx/0.1.6-0.tar.gz";
    name = "0.1.6-0.tar.gz";
    sha256 = "c14f2f6e88a9f791ec177ad64ea3a5013d52642ace02c6011c6a490652660abc";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch roslint rosunit ];
  propagatedBuildInputs = [ rosconsole-bridge roscpp roscpp-serialization sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The lms1xx package contains a basic ROS driver for the SICK LMS1xx line of LIDARs.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
