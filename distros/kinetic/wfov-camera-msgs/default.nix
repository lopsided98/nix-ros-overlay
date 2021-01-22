
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-wfov-camera-msgs";
  version = "0.14.1-r2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/kinetic/wfov_camera_msgs/0.14.1-2.tar.gz";
    name = "0.14.1-2.tar.gz";
    sha256 = "a1d8cebe477d3cd00d27310b8f3798902b9adab74048547e3e6078486df84143";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages related to the Point Grey camera driver.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
