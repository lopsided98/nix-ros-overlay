
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, catkin, diagnostic-updater, driver-base, dynamic-reconfigure, image-transport, message-generation, message-runtime, roscpp, rospy, rostest, self-test, sensor-msgs, std-msgs, timestamp-tools }:
buildRosPackage {
  pname = "ros-noetic-wge100-camera";
  version = "1.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/wge100_driver-release/archive/release/noetic/wge100_camera/1.8.5-1.tar.gz";
    name = "1.8.5-1.tar.gz";
    sha256 = "6a3dd6522dd3395d1b917bfa9a6dc78c0a1653740f9f33b3247e0fed1e61b0b8";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation rostest ];
  propagatedBuildInputs = [ camera-calibration-parsers diagnostic-updater driver-base dynamic-reconfigure image-transport message-runtime roscpp rospy self-test sensor-msgs std-msgs timestamp-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS node and assorted tools to provide access to the WGE100
    camera used in the forearms and the stereo cameras of the PR2
    robot.'';
    license = with lib.licenses; [ "GPL-because-of-list.h-&-other-files-released-under-BSD" ];
  };
}
