
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, roscpp-serialization, catkin, rosunit, roslint, roscpp, roslaunch, rosconsole-bridge }:
buildRosPackage {
  pname = "ros-melodic-lms1xx";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/lms1xx-release/archive/release/melodic/lms1xx/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "9a9ff8a7991afb1c4a8d05f8b4518fd5a944da3dba605db67a4f55ea6c049f76";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs roscpp-serialization rosconsole-bridge roscpp ];
  checkInputs = [ roslint roslaunch rosunit ];
  propagatedBuildInputs = [ sensor-msgs roscpp-serialization rosconsole-bridge roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The lms1xx package contains a basic ROS driver for the SICK LMS1xx line of LIDARs.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
