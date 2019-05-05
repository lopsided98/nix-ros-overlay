
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-radar-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/astuff/astuff_sensor_msgs-release/archive/release/lunar/radar_msgs/2.3.1-0.tar.gz;
    sha256 = "eea745dd25ff03bea7bf599310752d59e7ea2a2d964bcfa7f75b771306ab0deb";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic Radar Messages'';
    license = with lib.licenses; [ mit ];
  };
}
