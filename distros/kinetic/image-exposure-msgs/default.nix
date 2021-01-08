
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, statistics-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-image-exposure-msgs";
  version = "0.14.1-r2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/kinetic/image_exposure_msgs/0.14.1-2.tar.gz";
    name = "0.14.1-2.tar.gz";
    sha256 = "aa83576e2d13ddfab6979bbee6efe9666f9310cad0fdaf03ae66837dab134ce4";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime statistics-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages related to the Point Grey camera driver.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
