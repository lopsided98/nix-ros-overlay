
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, pointgrey-camera-driver, pointgrey-camera-description, catkin, lms1xx, nav-msgs, urdf, robot-state-publisher, roslaunch, tf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-multi-jackal-description";
  version = "0.0.5";

  src = fetchurl {
    url = https://github.com/NicksSimulationsROS/multi_jackal-release/archive/release/kinetic/multi_jackal_description/0.0.5-0.tar.gz;
    sha256 = "90bf63d14451775d25f29cb3eed25327c9aec175df20c1fc5f6adc9de6b8d1e9";
  };

  buildInputs = [ gazebo-ros pointgrey-camera-driver pointgrey-camera-description lms1xx nav-msgs urdf robot-state-publisher roslaunch tf xacro ];
  propagatedBuildInputs = [ gazebo-ros pointgrey-camera-driver pointgrey-camera-description lms1xx nav-msgs urdf robot-state-publisher tf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Spawns the Jackal model.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
