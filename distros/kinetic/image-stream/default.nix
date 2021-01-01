
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, opencv3, rospy, rosweb }:
buildRosPackage {
  pname = "ros-kinetic-image-stream";
  version = "1.0.7";

  src = fetchurl {
    url = "https://github.com/UNR-RoboticsResearchLab/web_interface-release/archive/release/kinetic/image_stream/1.0.7-0.tar.gz";
    name = "1.0.7-0.tar.gz";
    sha256 = "57c40cb2935de0812d1e5925bdd06a45dae48ce97f28e9eeaa534290c0e4029c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge opencv3 rospy rosweb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosweb plugin to serve images as streams (MJPEG, Theora, FLV, etc)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
