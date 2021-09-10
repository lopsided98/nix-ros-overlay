
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dnsmasq, ffmpeg, geometry-msgs, hostapd, libgphoto2, libjpeg_turbo, libmicrohttpd, libnl, mavlink, message-generation, message-runtime, opencv3, python3Packages, rosbash, rosbridge-suite, roscpp, roslaunch, roslint, rospy, sensor-msgs, std-msgs, std-srvs, vision-opencv }:
buildRosPackage {
  pname = "ros-noetic-rospilot";
  version = "1.6.1-r1";

  src = fetchurl {
    url = "https://github.com/rospilot/rospilot-release/archive/release/noetic/rospilot/1.6.1-1.tar.gz";
    name = "1.6.1-1.tar.gz";
    sha256 = "85196c13b22f7f490591432bbd4c51aa575f1083af6eaffa34d24b88dbe15f08";
  };

  buildType = "catkin";
  buildInputs = [ ffmpeg libgphoto2 libjpeg_turbo libmicrohttpd message-generation opencv3 roscpp roslint ];
  propagatedBuildInputs = [ dnsmasq geometry-msgs hostapd libnl mavlink message-runtime python3Packages.cherrypy python3Packages.colorama python3Packages.psutil python3Packages.pyserial rosbash rosbridge-suite roslaunch rospy sensor-msgs std-msgs std-srvs vision-opencv ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''rospilot'';
    license = with lib.licenses; [ asl20 ];
  };
}
