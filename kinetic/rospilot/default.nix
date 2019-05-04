
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, osm2pgsql, ffmpeg, unzip, gdal, rospy, rosbridge-suite, geometry-msgs, nodePackages, roslint, rosbash, libjpeg_turbo, pythonPackages, message-generation, libnl, message-runtime, hostapd, roslaunch, opencv3, mavlink, std-srvs, vision-opencv, catkin, std-msgs, roscpp, sensor-msgs, libmicrohttpd, dnsmasq, curl, libgphoto2 }:
buildRosPackage {
  pname = "ros-kinetic-rospilot";
  version = "1.4.1";

  src = fetchurl {
    url = https://github.com/rospilot/rospilot-release/archive/release/kinetic/rospilot/1.4.1-0.tar.gz;
    sha256 = "0ba3ddb2dd2b37aea8a51a8c0e964f73b96adf3aea05edc31814c3d89c8def54";
  };

  buildInputs = [ std-srvs roslint libjpeg_turbo sensor-msgs ffmpeg libmicrohttpd message-generation libnl libgphoto2 std-msgs roscpp opencv3 geometry-msgs ];
  propagatedBuildInputs = [ osm2pgsql unzip gdal rospy rosbridge-suite geometry-msgs rosbash pythonPackages.cherrypy message-runtime hostapd libnl roslaunch mavlink std-srvs vision-opencv std-msgs pythonPackages.tilestache pythonPackages.psutil pythonPackages.pyserial sensor-msgs pythonPackages.colorama dnsmasq curl ];
  nativeBuildInputs = [ nodePackages.npm catkin ];

  meta = {
    description = ''rospilot'';
    license = with lib.licenses; [ asl20 ];
  };
}
