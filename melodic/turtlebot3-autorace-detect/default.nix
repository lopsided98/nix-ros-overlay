
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, cv-bridge, pythonPackages, catkin, rospy, move-base-msgs, nav-msgs, dynamic-reconfigure, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-autorace-detect";
  version = "1.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_autorace-release/archive/release/melodic/turtlebot3_autorace_detect/1.2.0-0.tar.gz";
    name = "1.2.0-0.tar.gz";
    sha256 = "51d9465e570d60f2d1fe2500d9c9f285a801800c131f38fba376b0034eff3288";
  };

  buildType = "catkin";
  buildInputs = [ dynamic-reconfigure ];
  propagatedBuildInputs = [ pythonPackages.enum34 pythonPackages.numpy sensor-msgs cv-bridge pythonPackages.opencv3 rospy move-base-msgs nav-msgs dynamic-reconfigure std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''AutoRace ROS packages for feature detection with TurtleBot3 Auto'';
    license = with lib.licenses; [ asl20 ];
  };
}
