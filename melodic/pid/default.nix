
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, dynamic-reconfigure, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-pid";
  version = "0.0.27";

  src = fetchurl {
    url = https://github.com/AndyZe/pid-release/archive/release/melodic/pid/0.0.27-0.tar.gz;
    sha256 = "6066703ba3197ee904f55d7e6b1fc054e1901b5ad4d826753061715945a57d62";
  };

  buildInputs = [ std-msgs message-generation roscpp dynamic-reconfigure ];
  propagatedBuildInputs = [ std-msgs roscpp message-runtime dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch a PID control node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
