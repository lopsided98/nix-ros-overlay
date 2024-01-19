
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, statistics-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-image-exposure-msgs";
  version = "0.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/noetic/image_exposure_msgs/0.15.1-1.tar.gz";
    name = "0.15.1-1.tar.gz";
    sha256 = "405ecd3bffa5c8de1417d2e287cc1eea655c443e0e1e339a246e5dc59868cb84";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime statistics-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages related to the Point Grey camera driver.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
