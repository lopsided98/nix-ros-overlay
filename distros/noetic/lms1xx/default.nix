
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosconsole-bridge, roscpp, roscpp-serialization, roslaunch, roslint, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-lms1xx";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/lms1xx-release/archive/release/noetic/lms1xx/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "542f79a2e70c555941a560b801052355adfc58fb791078a6da4d28d7e01a6ffe";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch roslint rosunit ];
  propagatedBuildInputs = [ rosconsole-bridge roscpp roscpp-serialization sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The lms1xx package contains a basic ROS driver for the SICK LMS1xx line of LIDARs.'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
