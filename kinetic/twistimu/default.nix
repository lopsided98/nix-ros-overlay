
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, dynamic-reconfigure, catkin, rospy }:
buildRosPackage {
  pname = "ros-kinetic-twistimu";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/easymov/twistimu-release/archive/release/kinetic/twistimu/1.0.0-0.tar.gz";
    name = "1.0.0-0.tar.gz";
    sha256 = "fb44eeb670d3a4f34cb98abeb57833217a69197cc3691a90825713a0e9171995";
  };

  buildType = "catkin";
  buildInputs = [ dynamic-reconfigure ];
  propagatedBuildInputs = [ sensor-msgs rospy geometry-msgs dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Node that convert IMU data to a Twist for manual robot drive.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
