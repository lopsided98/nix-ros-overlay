
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, catkin, diagnostic-updater, driver-base, dynamic-reconfigure, image-transport, message-generation, message-runtime, roscpp, rospy, rostest, self-test, sensor-msgs, std-msgs, timestamp-tools }:
buildRosPackage {
  pname = "ros-kinetic-wge100-camera";
  version = "1.8.2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/wge100_driver-release/archive/release/kinetic/wge100_camera/1.8.2-0.tar.gz";
    name = "1.8.2-0.tar.gz";
    sha256 = "0bffb1f903aaabe5483af6ae742984f71fca7034f2babe311bc389c865a62295";
  };

  buildType = "catkin";
  buildInputs = [ message-generation rostest ];
  propagatedBuildInputs = [ camera-calibration-parsers diagnostic-updater driver-base dynamic-reconfigure image-transport message-runtime roscpp rospy self-test sensor-msgs std-msgs timestamp-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS node and assorted tools to provide access to the WGE100
    camera used in the forearms and the stereo cameras of the PR2
    robot.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
