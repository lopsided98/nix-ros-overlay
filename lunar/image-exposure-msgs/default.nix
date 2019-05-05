
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, statistics-msgs, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lunar-image-exposure-msgs";
  version = "0.13.3";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/lunar/image_exposure_msgs/0.13.3-0.tar.gz;
    sha256 = "8b77a08b95634625f33998630bfa395b8a9874dbc9f775c352d46bf278413707";
  };

  buildInputs = [ std-msgs message-generation statistics-msgs ];
  propagatedBuildInputs = [ std-msgs statistics-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages related to the Point Grey camera driver.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
