
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-stereo-msgs";
  version = "1.12.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_msgs-release/archive/release/melodic/stereo_msgs/1.12.8-1.tar.gz";
    name = "1.12.8-1.tar.gz";
    sha256 = "2b4e582d515c307c9416f19881898bcc23c45b356f55bfae0d51d112f04aa1c9";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''stereo_msgs contains messages specific to stereo processing, such as disparity images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
