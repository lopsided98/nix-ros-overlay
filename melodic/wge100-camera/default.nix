
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, dynamic-reconfigure, std-msgs, timestamp-tools, catkin, image-transport, self-test, driver-base, roscpp, rospy, message-runtime, camera-calibration-parsers, rostest, diagnostic-updater }:
buildRosPackage {
  pname = "ros-melodic-wge100-camera";
  version = "1.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/wge100_driver-release/archive/release/melodic/wge100_camera/1.8.2-1.tar.gz";
    name = "1.8.2-1.tar.gz";
    sha256 = "555d7b0249e43457e5ce245fb1c7fe895a0510b8a142197717e046e7cc1e18fe";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs dynamic-reconfigure std-msgs timestamp-tools roscpp image-transport self-test driver-base rospy message-generation camera-calibration-parsers rostest diagnostic-updater ];
  propagatedBuildInputs = [ sensor-msgs dynamic-reconfigure message-runtime std-msgs timestamp-tools image-transport self-test driver-base roscpp rospy camera-calibration-parsers diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS node and assorted tools to provide access to the WGE100
    camera used in the forearms and the stereo cameras of the PR2
    robot.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
