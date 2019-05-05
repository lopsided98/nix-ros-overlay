
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, dynamic-reconfigure, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-pid";
  version = "0.0.27";

  src = fetchurl {
    url = https://github.com/AndyZe/pid-release/archive/release/lunar/pid/0.0.27-0.tar.gz;
    sha256 = "62d663d87a1149fcf0b03ff408b5f6a08693c9c0b4809a564e805a7df3bae640";
  };

  buildInputs = [ std-msgs message-generation roscpp dynamic-reconfigure ];
  propagatedBuildInputs = [ std-msgs roscpp message-runtime dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch a PID control node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
