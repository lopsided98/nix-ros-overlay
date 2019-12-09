
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, urdf, robot-state-publisher, pointgrey-camera-description, roslaunch, tf, catkin, pointgrey-camera-driver, gazebo-ros, nav-msgs, lms1xx }:
buildRosPackage {
  pname = "ros-kinetic-multi-jackal-description";
  version = "0.0.5";

  src = fetchurl {
    url = "https://github.com/NicksSimulationsROS/multi_jackal-release/archive/release/kinetic/multi_jackal_description/0.0.5-0.tar.gz";
    name = "0.0.5-0.tar.gz";
    sha256 = "90bf63d14451775d25f29cb3eed25327c9aec175df20c1fc5f6adc9de6b8d1e9";
  };

  buildType = "catkin";
  buildInputs = [ xacro urdf robot-state-publisher pointgrey-camera-description roslaunch tf pointgrey-camera-driver gazebo-ros nav-msgs lms1xx ];
  propagatedBuildInputs = [ xacro urdf robot-state-publisher pointgrey-camera-description tf pointgrey-camera-driver gazebo-ros nav-msgs lms1xx ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Spawns the Jackal model.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
