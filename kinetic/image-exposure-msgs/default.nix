
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, std-msgs, catkin, statistics-msgs, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-image-exposure-msgs";
  version = "0.13.4";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/kinetic/image_exposure_msgs/0.13.4-0.tar.gz";
    name = "0.13.4-0.tar.gz";
    sha256 = "c00581c3619079fa862447f37878201086bbd62a8f65405e68c80af761beba61";
  };

  buildType = "catkin";
  buildInputs = [ statistics-msgs message-generation std-msgs ];
  propagatedBuildInputs = [ statistics-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages related to the Point Grey camera driver.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
