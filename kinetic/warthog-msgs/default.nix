
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-warthog-msgs";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/warthog-release/archive/release/kinetic/warthog_msgs/0.1.0-0.tar.gz;
    sha256 = "7a2debb78ec4379a8c84a543d60d000adcd01c604be4ef7edd75134a84d27898";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages exclusive to Warthog, especially for representing low-level motor commands and sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
