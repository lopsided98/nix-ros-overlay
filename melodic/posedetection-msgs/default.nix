
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, cv-bridge, message-filters, catkin, message-generation, message-runtime, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-posedetection-msgs";
  version = "4.3.1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_common_msgs-release/archive/release/melodic/posedetection_msgs/4.3.1-0.tar.gz;
    sha256 = "1538ca360bd31dcfa85392ba78374d072d64a3426425c64b08d8db149ea5cd3a";
  };

  buildInputs = [ sensor-msgs cv-bridge message-filters message-generation std-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs cv-bridge message-filters message-runtime std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''posedetection_msgs provides messages and services to facilitate passing pose detection results and features.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
