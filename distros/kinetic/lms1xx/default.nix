
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosconsole-bridge, roscpp, roscpp-serialization, roslaunch, roslint, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-lms1xx";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/lms1xx-release/archive/release/kinetic/lms1xx/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "79aa1e8c40c7b495c3c4ec71112d8e230e333985971d7ae5697c37fe577868b3";
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
