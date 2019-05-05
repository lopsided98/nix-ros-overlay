
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, trajectory-msgs, catkin, message-generation, message-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-pr2-controllers-msgs";
  version = "1.10.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_controllers-release/archive/release/lunar/pr2_controllers_msgs/1.10.15-0.tar.gz;
    sha256 = "d2c892f49c3cbed21e8618acce496370846c44a4e0ac97393004d092e911be2e";
  };

  buildInputs = [ trajectory-msgs message-generation actionlib-msgs geometry-msgs ];
  propagatedBuildInputs = [ trajectory-msgs message-runtime actionlib-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages, services, and actions used in the pr2_controllers stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
