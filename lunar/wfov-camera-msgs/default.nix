
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-generation, message-runtime, catkin }:
buildRosPackage {
  pname = "ros-lunar-wfov-camera-msgs";
  version = "0.13.3";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/lunar/wfov_camera_msgs/0.13.3-0.tar.gz;
    sha256 = "0caca4360ff3485c319adedd1013bbeb4dfe8dbfdb2b4338c4c1285dbefffcf7";
  };

  buildInputs = [ sensor-msgs message-generation ];
  propagatedBuildInputs = [ sensor-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages related to the Point Grey camera driver.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
