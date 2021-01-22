
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, catkin, diagnostic-updater, driver-base, dynamic-reconfigure, image-transport, message-generation, message-runtime, roscpp, rospy, rostest, self-test, sensor-msgs, std-msgs, timestamp-tools }:
buildRosPackage {
  pname = "ros-melodic-wge100-camera";
  version = "1.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/wge100_driver-release/archive/release/melodic/wge100_camera/1.8.2-1.tar.gz";
    name = "1.8.2-1.tar.gz";
    sha256 = "555d7b0249e43457e5ce245fb1c7fe895a0510b8a142197717e046e7cc1e18fe";
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
