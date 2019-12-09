
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, dynamic-reconfigure, std-msgs, pythonPackages, tf, catkin, cv-bridge, rospy, nav-msgs, move-base-msgs }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-autorace-detect";
  version = "1.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_autorace-release/archive/release/kinetic/turtlebot3_autorace_detect/1.2.0-0.tar.gz";
    name = "1.2.0-0.tar.gz";
    sha256 = "ef35c9ff59cc6651de6acf27badd913c4aaf178345c21652f0a19ceba7aa3848";
  };

  buildType = "catkin";
  buildInputs = [ dynamic-reconfigure ];
  propagatedBuildInputs = [ pythonPackages.numpy sensor-msgs geometry-msgs pythonPackages.enum34 dynamic-reconfigure pythonPackages.opencv3 std-msgs tf cv-bridge rospy nav-msgs move-base-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''AutoRace ROS packages for feature detection with TurtleBot3 Auto'';
    license = with lib.licenses; [ asl20 ];
  };
}
