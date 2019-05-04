
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-puma-motor-msgs";
  version = "0.1.2";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/puma_motor_driver-release/archive/release/kinetic/puma_motor_msgs/0.1.2-0.tar.gz;
    sha256 = "2e0e778fc4066927acc564f167b321c407f71d8f6ea93c119d8377ba339c6873";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages specific to Puma.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
