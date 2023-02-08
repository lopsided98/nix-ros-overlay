
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dnsmasq, ffmpeg, geometry-msgs, hostapd, libgphoto2, libjpeg_turbo, libmicrohttpd, libnl, mavlink, message-generation, message-runtime, opencv, python3Packages, rosbash, rosbridge-suite, roscpp, roslaunch, roslint, rospy, sensor-msgs, std-msgs, std-srvs, vision-opencv }:
buildRosPackage {
  pname = "ros-noetic-rospilot";
  version = "1.6.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "rospilot";
        repo = "rospilot-release";
        rev = "release/noetic/rospilot/1.6.1-1";
        sha256 = "sha256-SoInknI7Yxng9nlQ31g8sHZkQK9IMLiuHNbE91Blja4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ffmpeg libgphoto2 libjpeg_turbo libmicrohttpd message-generation opencv python3Packages.setuptools roscpp roslint ];
  propagatedBuildInputs = [ dnsmasq geometry-msgs hostapd libnl mavlink message-runtime python3Packages.cherrypy python3Packages.colorama python3Packages.psutil python3Packages.pyserial rosbash rosbridge-suite roslaunch rospy sensor-msgs std-msgs std-srvs vision-opencv ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''rospilot'';
    license = with lib.licenses; [ asl20 ];
  };
}
