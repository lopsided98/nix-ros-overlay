
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-statistics-msgs";
  version = "0.13.3";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/lunar/statistics_msgs/0.13.3-0.tar.gz;
    sha256 = "70734b28a4e4a86701db05406878b8e0ecfecdd3f61bf6579144d83621232ee9";
  };

  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages related to the Point Grey camera driver.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
